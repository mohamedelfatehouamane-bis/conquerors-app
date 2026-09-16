package com.savedplots;

import android.graphics.Bitmap;
import android.graphics.Rect;

/**
 * Resolves a saved world location to its current screen position and searches
 * a bounded screen region for an object behind that location.
 *
 * This class deliberately does not pretend to know the game's object types or
 * perform image recognition by itself. A caller supplies an ObjectDetector
 * implementation once the game's actual visual templates/detector are known.
 */
public final class MapObjectLocator {

    public interface ScreenCapture {
        Bitmap capture(Rect region);
    }

    public interface ObjectDetector {
        MapObjectDetectionResult detect(Bitmap screenshot, Rect region);
    }

    private MapCoordinateProvider mapCoordinateProvider;
    private ScreenCapture screenCapture;
    private ObjectDetector objectDetector;
    private int searchRadiusPx = 80;

    public MapObjectLocator(MapCoordinateProvider mapCoordinateProvider,
                            ScreenCapture screenCapture,
                            ObjectDetector objectDetector) {
        this.mapCoordinateProvider = mapCoordinateProvider;
        this.screenCapture = screenCapture;
        this.objectDetector = objectDetector;
    }

    public void setMapCoordinateProvider(MapCoordinateProvider provider) {
        this.mapCoordinateProvider = provider;
    }

    public void setScreenCapture(ScreenCapture capture) {
        this.screenCapture = capture;
    }

    public void setObjectDetector(ObjectDetector detector) {
        this.objectDetector = detector;
    }

    public void setSearchRadiusPx(int radiusPx) {
        if (radiusPx > 0) searchRadiusPx = radiusPx;
    }

    public int getSearchRadiusPx() {
        return searchRadiusPx;
    }

    public MapObjectDetectionResult locate(SavedPlot savedLocation,
                                            int screenWidth,
                                            int screenHeight) {
        if (savedLocation == null || mapCoordinateProvider == null ||
                screenCapture == null || objectDetector == null) {
            return MapObjectDetectionResult.notFound();
        }
        if (savedLocation.worldX == null || savedLocation.worldY == null) {
            return MapObjectDetectionResult.notFound();
        }

        MapCoordinateProvider.ScreenPoint screenPoint =
                mapCoordinateProvider.worldToScreen(savedLocation.worldX, savedLocation.worldY);
        if (screenPoint == null) return MapObjectDetectionResult.notFound();

        int centerX = Math.round(screenPoint.x);
        int centerY = Math.round(screenPoint.y);
        Rect region = new Rect(
                Math.max(0, centerX - searchRadiusPx),
                Math.max(0, centerY - searchRadiusPx),
                Math.min(screenWidth, centerX + searchRadiusPx),
                Math.min(screenHeight, centerY + searchRadiusPx));

        if (region.width() <= 0 || region.height() <= 0) {
            return MapObjectDetectionResult.notFound();
        }

        Bitmap screenshot = screenCapture.capture(region);
        if (screenshot == null) return MapObjectDetectionResult.notFound();

        return objectDetector.detect(screenshot, region);
    }
}
