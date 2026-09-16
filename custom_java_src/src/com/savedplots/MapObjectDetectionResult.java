package com.savedplots;

/** Result of searching the screen around a saved world location for a game object. */
public final class MapObjectDetectionResult {
    public final boolean found;
    public final String objectType;
    public final float screenX;
    public final float screenY;
    public final float width;
    public final float height;
    public final float confidence;

    private MapObjectDetectionResult(boolean found, String objectType,
                                     float screenX, float screenY,
                                     float width, float height,
                                     float confidence) {
        this.found = found;
        this.objectType = objectType;
        this.screenX = screenX;
        this.screenY = screenY;
        this.width = width;
        this.height = height;
        this.confidence = confidence;
    }

    public static MapObjectDetectionResult found(String objectType,
                                                 float screenX, float screenY,
                                                 float width, float height,
                                                 float confidence) {
        return new MapObjectDetectionResult(true, objectType, screenX, screenY,
                width, height, confidence);
    }

    public static MapObjectDetectionResult notFound() {
        return new MapObjectDetectionResult(false, "", 0f, 0f, 0f, 0f, 0f);
    }
}
