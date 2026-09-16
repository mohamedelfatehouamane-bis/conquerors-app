package com.savedplots;

/**
 * Bridge between MohBot and the game's real map/camera coordinate system.
 *
 * Implementations must use the game's actual map transform. This interface
 * deliberately does not invent a grid size or assume that a 'plot' object
 * exists in the game.
 */
public interface MapCoordinateProvider {
    /**
     * Convert a touch/screen point into the game's map/world coordinate.
     * Returns null when the game map transform is not currently available.
     */
    MapPoint screenToWorld(float screenX, float screenY);

    /**
     * Convert a saved map/world coordinate into the current screen position.
     * Returns null when the game map transform is not currently available or
     * the point is outside the current view.
     */
    ScreenPoint worldToScreen(float worldX, float worldY);

    /**
     * Lightweight world-coordinate value object.
     */
    final class MapPoint {
        public final float x;
        public final float y;

        public MapPoint(float x, float y) {
            this.x = x;
            this.y = y;
        }
    }

    /**
     * Lightweight screen-coordinate value object.
     */
    final class ScreenPoint {
        public final float x;
        public final float y;

        public ScreenPoint(float x, float y) {
            this.x = x;
            this.y = y;
        }
    }
}
