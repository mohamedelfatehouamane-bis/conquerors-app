package com.savedplots;

/**
 * Bridge between the marker system and the game's real map/camera transform.
 * Implementations must use the active map transform and must not invent a
 * grid or fixed screen mapping.
 */
public interface MapCoordinateProvider {
    MapPoint screenToWorld(float screenX, float screenY);
    ScreenPoint worldToScreen(float worldX, float worldY);

    final class MapPoint {
        public final float x;
        public final float y;
        public MapPoint(float x, float y) {
            this.x = x;
            this.y = y;
        }
    }

    final class ScreenPoint {
        public final float x;
        public final float y;
        public ScreenPoint(float x, float y) {
            this.x = x;
            this.y = y;
        }
    }
}
