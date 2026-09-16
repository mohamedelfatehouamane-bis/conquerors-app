package com.savedplots;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Best-effort bridge to the live Cocos2d map node.
 *
 * The provider intentionally does not invent a grid. It uses Cocos2d's
 * coordinate conversion methods on the supplied map node when available.
 * The node can be supplied directly or discovered by a caller that already
 * has access to the active map scene.
 */
public final class LiveMapCoordinateProvider implements MapCoordinateProvider {
    private volatile Object mapNode;

    public LiveMapCoordinateProvider() {
    }

    public LiveMapCoordinateProvider(Object mapNode) {
        this.mapNode = mapNode;
    }

    public void setMapNode(Object mapNode) {
        this.mapNode = mapNode;
    }

    public Object getMapNode() {
        return mapNode;
    }

    @Override
    public MapPoint screenToWorld(float screenX, float screenY) {
        Object node = mapNode;
        if (node == null) {
            return null;
        }

        Object vec2 = makeVec2(screenX, screenY);
        if (vec2 == null) {
            return null;
        }

        try {
            Method method = findMethod(node.getClass(), "convertToNodeSpace", vec2.getClass());
            if (method != null) {
                Object result = method.invoke(node, vec2);
                return readPoint(result);
            }

            // Some Cocos2d bindings expose the method under the overload with
            // an interface/superclass parameter. Fall back to compatible search.
            method = findCompatibleOneArgMethod(node.getClass(), "convertToNodeSpace", vec2);
            if (method != null) {
                Object result = method.invoke(node, vec2);
                return readPoint(result);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    @Override
    public ScreenPoint worldToScreen(float worldX, float worldY) {
        Object node = mapNode;
        if (node == null) {
            return null;
        }

        Object vec2 = makeVec2(worldX, worldY);
        if (vec2 == null) {
            return null;
        }

        try {
            Method method = findMethod(node.getClass(), "convertToWorldSpace", vec2.getClass());
            if (method != null) {
                Object result = method.invoke(node, vec2);
                MapPoint point = readPoint(result);
                return point == null ? null : new ScreenPoint(point.x, point.y);
            }

            method = findCompatibleOneArgMethod(node.getClass(), "convertToWorldSpace", vec2);
            if (method != null) {
                Object result = method.invoke(node, vec2);
                MapPoint point = readPoint(result);
                return point == null ? null : new ScreenPoint(point.x, point.y);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static Method findMethod(Class<?> type, String name, Class<?> parameterType) {
        try {
            Method method = type.getMethod(name, parameterType);
            method.setAccessible(true);
            return method;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Method findCompatibleOneArgMethod(Class<?> type, String name, Object argument) {
        Class<?> argType = argument.getClass();
        for (Method method : type.getMethods()) {
            if (!name.equals(method.getName()) || method.getParameterTypes().length != 1) {
                continue;
            }
            if (method.getParameterTypes()[0].isAssignableFrom(argType)) {
                try {
                    method.setAccessible(true);
                } catch (Throwable ignored) {
                }
                return method;
            }
        }
        return null;
    }

    private static Object makeVec2(float x, float y) {
        try {
            Class<?> vec2Class = Class.forName("org.cocos2dx.lib.CCPoint");
            return createPointObject(vec2Class, x, y);
        } catch (Throwable ignored) {
        }
        try {
            Class<?> vec2Class = Class.forName("com.cocos2dx.lib.CCPoint");
            return createPointObject(vec2Class, x, y);
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static Object createPointObject(Class<?> type, float x, float y) {
        for (java.lang.reflect.Constructor<?> constructor : type.getConstructors()) {
            Class<?>[] params = constructor.getParameterTypes();
            if (params.length == 2 && params[0] == float.class && params[1] == float.class) {
                return constructor.newInstance(x, y);
            }
        }
        return null;
    }

    private static MapPoint readPoint(Object point) {
        if (point == null) {
            return null;
        }
        try {
            Field x = point.getClass().getField("x");
            Field y = point.getClass().getField("y");
            Object xv = x.get(point);
            Object yv = y.get(point);
            if (xv instanceof Number && yv instanceof Number) {
                return new MapPoint(((Number) xv).floatValue(), ((Number) yv).floatValue());
            }
        } catch (Throwable ignored) {
        }
        return null;
    }
}
