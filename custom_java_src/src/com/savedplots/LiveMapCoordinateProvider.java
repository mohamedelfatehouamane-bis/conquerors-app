package com.savedplots;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Runtime bridge for the game's Cocos2d map node.
 *
 * The provider only performs coordinate conversion on a node supplied by the
 * game integration. It does not invent a grid or a fixed screen mapping.
 */
public final class LiveMapCoordinateProvider implements MapCoordinateProvider {
    private volatile Object mapNode;
    private volatile Method screenToMapMethod;
    private volatile Method mapToScreenMethod;
    private volatile Class<?> pointClass;

    public LiveMapCoordinateProvider() {
    }

    public LiveMapCoordinateProvider(Object mapNode) {
        setMapNode(mapNode);
    }

    public synchronized void setMapNode(Object mapNode) {
        this.mapNode = mapNode;
        screenToMapMethod = null;
        mapToScreenMethod = null;
        pointClass = null;
        prepareMethods(mapNode);
    }

    public Object getMapNode() {
        return mapNode;
    }

    public boolean isReady() {
        Object node = mapNode;
        return node != null && screenToMapMethod != null && mapToScreenMethod != null && pointClass != null;
    }

    @Override
    public MapPoint screenToWorld(float screenX, float screenY) {
        Object node = mapNode;
        Method method = screenToMapMethod;
        Class<?> type = pointClass;
        if (node == null || method == null || type == null) return null;

        try {
            Object input = createPoint(type, screenX, screenY);
            if (input == null) return null;
            Object result = method.invoke(node, input);
            return readPoint(result);
        } catch (Throwable ignored) {
            return null;
        }
    }

    @Override
    public ScreenPoint worldToScreen(float worldX, float worldY) {
        Object node = mapNode;
        Method method = mapToScreenMethod;
        Class<?> type = pointClass;
        if (node == null || method == null || type == null) return null;

        try {
            Object input = createPoint(type, worldX, worldY);
            if (input == null) return null;
            Object result = method.invoke(node, input);
            MapPoint point = readPoint(result);
            return point == null ? null : new ScreenPoint(point.x, point.y);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private synchronized void prepareMethods(Object node) {
        if (node == null) return;

        Class<?> nodeClass = node.getClass();
        Class<?> candidatePointClass = findPointClass();
        if (candidatePointClass == null) return;

        Method toNode = findCompatibleOneArgMethod(nodeClass, "convertToNodeSpace", candidatePointClass);
        Method toWorld = findCompatibleOneArgMethod(nodeClass, "convertToWorldSpace", candidatePointClass);
        if (toNode != null && toWorld != null) {
            pointClass = candidatePointClass;
            screenToMapMethod = toNode;
            mapToScreenMethod = toWorld;
        }
    }

    private static Class<?> findPointClass() {
        String[] names = {
                "org.cocos2dx.lib.CCPoint",
                "com.cocos2dx.lib.CCPoint",
                "org.cocos2dx.lib.CCPointF",
                "com.cocos2dx.lib.CCPointF"
        };
        for (String name : names) {
            try {
                return Class.forName(name);
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    private static Method findCompatibleOneArgMethod(Class<?> type, String name, Class<?> argumentType) {
        for (Method method : type.getMethods()) {
            if (!name.equals(method.getName()) || method.getParameterTypes().length != 1) continue;
            if (!method.getParameterTypes()[0].isAssignableFrom(argumentType)) continue;
            try {
                method.setAccessible(true);
            } catch (Throwable ignored) {
            }
            return method;
        }
        return null;
    }

    private static Object createPoint(Class<?> type, float x, float y) throws Exception {
        for (Constructor<?> constructor : type.getConstructors()) {
            Class<?>[] params = constructor.getParameterTypes();
            if (params.length == 2 && params[0] == float.class && params[1] == float.class) {
                return constructor.newInstance(x, y);
            }
            if (params.length == 2 && params[0] == double.class && params[1] == double.class) {
                return constructor.newInstance((double) x, (double) y);
            }
        }
        return null;
    }

    private static MapPoint readPoint(Object point) {
        if (point == null) return null;
        try {
            Field x = findField(point.getClass(), "x");
            Field y = findField(point.getClass(), "y");
            if (x == null || y == null) return null;
            Object xv = x.get(point);
            Object yv = y.get(point);
            if (xv instanceof Number && yv instanceof Number) {
                return new MapPoint(((Number) xv).floatValue(), ((Number) yv).floatValue());
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static Field findField(Class<?> type, String name) {
        try {
            Field field = type.getField(name);
            field.setAccessible(true);
            return field;
        } catch (Throwable ignored) {
            return null;
        }
    }
}
