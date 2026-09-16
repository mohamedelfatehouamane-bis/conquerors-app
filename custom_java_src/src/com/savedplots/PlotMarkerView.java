package com.savedplots;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/**
 * Transparent overlay for saved map markers.
 * Persistent marker identity is the world coordinate; screen position is
 * recalculated from the active map transform whenever possible.
 */
public class PlotMarkerView extends View {
    private List<SavedPlot> plots = new ArrayList<SavedPlot>();
    private boolean markersVisible = false;
    private MapCoordinateProvider coordinateProvider;

    private float tempMarkerX = -1;
    private float tempMarkerY = -1;
    private boolean showTempMarker = false;

    private Paint diamondPaint;
    private Paint diamondStrokePaint;
    private Paint textPaint;
    private Paint badgePaint;
    private Paint tempMarkerPaint;
    private float density;

    public PlotMarkerView(Context context) {
        super(context);
        density = context.getResources().getDisplayMetrics().density;
        initPaints();
        setClickable(false);
        setFocusable(false);
    }

    private void initPaints() {
        diamondPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        diamondPaint.setColor(Color.parseColor("#FFD700"));
        diamondPaint.setStyle(Paint.Style.FILL);

        diamondStrokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        diamondStrokePaint.setColor(Color.parseColor("#803300"));
        diamondStrokePaint.setStyle(Paint.Style.STROKE);
        diamondStrokePaint.setStrokeWidth(2f * density);

        textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        textPaint.setColor(Color.WHITE);
        textPaint.setTextSize(12f * density);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint.setFakeBoldText(true);

        badgePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        badgePaint.setColor(Color.argb(200, 20, 25, 35));
        badgePaint.setStyle(Paint.Style.FILL);

        tempMarkerPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        tempMarkerPaint.setColor(Color.parseColor("#00E5FF"));
        tempMarkerPaint.setStyle(Paint.Style.FILL);
    }

    public void setCoordinateProvider(MapCoordinateProvider provider) {
        this.coordinateProvider = provider;
        invalidate();
    }

    public void setPlots(List<SavedPlot> newPlots) {
        this.plots = newPlots != null ? newPlots : new ArrayList<SavedPlot>();
        invalidate();
    }

    public void setMarkersVisible(boolean visible) {
        this.markersVisible = visible;
        invalidate();
    }

    public boolean isMarkersVisible() {
        return markersVisible;
    }

    public void setTempMarker(float x, float y) {
        this.tempMarkerX = x;
        this.tempMarkerY = y;
        this.showTempMarker = true;
        invalidate();
    }

    public void clearTempMarker() {
        this.showTempMarker = false;
        this.tempMarkerX = -1;
        this.tempMarkerY = -1;
        invalidate();
    }

    public void refreshFromWorld() {
        invalidate();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        if (markersVisible && plots != null) {
            for (SavedPlot plot : plots) {
                MapCoordinateProvider.ScreenPoint screen = null;
                if (coordinateProvider != null && plot.getWorldX() != null && plot.getWorldY() != null) {
                    screen = coordinateProvider.worldToScreen(plot.getWorldX(), plot.getWorldY());
                }

                // Legacy entries may not have world coordinates. Keep their last screen
                // position visible rather than inventing a world transform.
                float x = screen != null ? screen.x : plot.getScreenX();
                float y = screen != null ? screen.y : plot.getScreenY();
                drawPlotMarker(canvas, x, y, plot.getName(), false);
            }
        }

        if (showTempMarker && tempMarkerX >= 0 && tempMarkerY >= 0) {
            drawPlotMarker(canvas, tempMarkerX, tempMarkerY, "Selected", true);
        }
    }

    private void drawPlotMarker(Canvas canvas, float x, float y, String name, boolean isTemp) {
        if (x < -200 || y < -200 || x > getWidth() + 200 || y > getHeight() + 200) {
            return;
        }

        float size = 12f * density;
        Path diamondPath = new Path();
        diamondPath.moveTo(x, y - size);
        diamondPath.lineTo(x + size, y);
        diamondPath.lineTo(x, y + size);
        diamondPath.lineTo(x - size, y);
        diamondPath.close();

        canvas.drawPath(diamondPath, isTemp ? tempMarkerPaint : diamondPaint);
        canvas.drawPath(diamondPath, diamondStrokePaint);

        Paint centerDot = new Paint(Paint.ANTI_ALIAS_FLAG);
        centerDot.setColor(Color.WHITE);
        canvas.drawCircle(x, y, 3f * density, centerDot);

        String label = (name != null && !name.trim().isEmpty()) ? name : "Plot";
        float textWidth = textPaint.measureText(label);
        float padX = 8f * density;
        float padY = 4f * density;
        float badgeHeight = textPaint.getTextSize() + padY * 2;
        float badgeWidth = textWidth + padX * 2;

        float badgeLeft = x - badgeWidth / 2f;
        float badgeBottom = y - size - (4f * density);
        float badgeTop = badgeBottom - badgeHeight;
        float badgeRight = badgeLeft + badgeWidth;

        RectF rect = new RectF(badgeLeft, badgeTop, badgeRight, badgeBottom);
        canvas.drawRoundRect(rect, 4f * density, 4f * density, badgePaint);

        Paint borderPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        borderPaint.setStyle(Paint.Style.STROKE);
        borderPaint.setStrokeWidth(1.2f * density);
        borderPaint.setColor(isTemp ? Color.parseColor("#00E5FF") : Color.parseColor("#D4AF37"));
        canvas.drawRoundRect(rect, 4f * density, 4f * density, borderPaint);

        float textY = badgeTop + padY + textPaint.getTextSize() * 0.85f;
        canvas.drawText(label, x, textY, textPaint);
    }
}
