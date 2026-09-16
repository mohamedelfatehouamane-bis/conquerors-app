package com.savedplots;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Data structure representing a manually marked game position.
 */
public class SavedPlot {
    private String id;
    private String name;
    private float screenX;
    private float screenY;
    private Integer gridRow;       // nullable
    private Integer gridColumn;    // nullable
    private Float worldX;          // nullable
    private Float worldY;          // nullable
    private long createdAt;

    public SavedPlot(String id, String name, float screenX, float screenY, 
                     Integer gridRow, Integer gridColumn, Float worldX, Float worldY, long createdAt) {
        this.id = id;
        this.name = name;
        this.screenX = screenX;
        this.screenY = screenY;
        this.gridRow = gridRow;
        this.gridColumn = gridColumn;
        this.worldX = worldX;
        this.worldY = worldY;
        this.createdAt = createdAt;
    }

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public float getScreenX() { return screenX; }
    public void setScreenX(float screenX) { this.screenX = screenX; }

    public float getScreenY() { return screenY; }
    public void setScreenY(float screenY) { this.screenY = screenY; }

    public Integer getGridRow() { return gridRow; }
    public void setGridRow(Integer gridRow) { this.gridRow = gridRow; }

    public Integer getGridColumn() { return gridColumn; }
    public void setGridColumn(Integer gridColumn) { this.gridColumn = gridColumn; }

    public Float getWorldX() { return worldX; }
    public void setWorldX(Float worldX) { this.worldX = worldX; }

    public Float getWorldY() { return worldY; }
    public void setWorldY(Float worldY) { this.worldY = worldY; }

    public long getCreatedAt() { return createdAt; }
    public void setCreatedAt(long createdAt) { this.createdAt = createdAt; }

    public JSONObject toJSONObject() throws JSONException {
        JSONObject obj = new JSONObject();
        obj.put("id", id);
        obj.put("name", name);
        obj.put("screenX", (double) screenX);
        obj.put("screenY", (double) screenY);
        
        if (gridRow != null) {
            obj.put("gridRow", gridRow.intValue());
        } else {
            obj.put("gridRow", JSONObject.NULL);
        }

        if (gridColumn != null) {
            obj.put("gridColumn", gridColumn.intValue());
        } else {
            obj.put("gridColumn", JSONObject.NULL);
        }

        if (worldX != null) {
            obj.put("worldX", (double) worldX.floatValue());
        } else {
            obj.put("worldX", JSONObject.NULL);
        }

        if (worldY != null) {
            obj.put("worldY", (double) worldY.floatValue());
        } else {
            obj.put("worldY", JSONObject.NULL);
        }

        obj.put("createdAt", createdAt);
        return obj;
    }

    public static SavedPlot fromJSONObject(JSONObject obj) {
        if (obj == null) return null;
        try {
            String id = obj.optString("id", String.valueOf(System.currentTimeMillis()));
            String name = obj.optString("name", "Saved Location");
            float screenX = (float) obj.optDouble("screenX", 0.0);
            float screenY = (float) obj.optDouble("screenY", 0.0);
            
            Integer gridRow = obj.isNull("gridRow") ? null : Integer.valueOf(obj.optInt("gridRow"));
            Integer gridColumn = obj.isNull("gridColumn") ? null : Integer.valueOf(obj.optInt("gridColumn"));
            Float worldX = obj.isNull("worldX") ? null : Float.valueOf((float) obj.optDouble("worldX"));
            Float worldY = obj.isNull("worldY") ? null : Float.valueOf((float) obj.optDouble("worldY"));
            long createdAt = obj.optLong("createdAt", System.currentTimeMillis());

            return new SavedPlot(id, name, screenX, screenY, gridRow, gridColumn, worldX, worldY, createdAt);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
