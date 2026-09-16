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
 * Transparent overlay view that displays markers on the game screen.
 * Never intercepts touches so gameplay is unaffected.
 */
public class PlotMarkerView extends View {
    private List<SavedPlot> plots = new ArrayList<SavedPlot>();
    private boolean markersVisible = false;

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
        diamondPaint.setColor(Color.parseColor("#FFD700")); // Gold
        diamondPaint.setStyle(Paint.Style.FILL);

        diamondStrokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        diamondStrokePaint.setColor(Color.parseColor("#803300")); // Dark gold border
        diamondStrokePaint.setStyle(Paint.Style.STROKE);
        diamondStrokePaint.setStrokeWidth(2f * density);

        textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        textPaint.setColor(Color.WHITE);
        textPaint.setTextSize(12f * density);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint.setFakeBoldText(true);

        badgePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        badgePaint.setColor(Color.argb(200, 20, 25, 35)); // Deep dark semi-transparent
        badgePaint.setStyle(Paint.Style.FILL);

        tempMarkerPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        tempMarkerPaint.setColor(Color.parseColor("#00E5FF")); // Cyan pulse for newly selected
        tempMarkerPaint.setStyle(Paint.Style.FILL);
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

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        // ALWAYS pass through touches to the underlying game view
        return false;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        // Draw saved plots if visible
        if (markersVisible && plots != null) {
            for (SavedPlot plot : plots) {
                drawPlotMarker(canvas, plot.getScreenX(), plot.getScreenY(), plot.getName(), false);
            }
        }

        // Draw temporary marker if user just tapped
        if (showTempMarker && tempMarkerX >= 0 && tempMarkerY >= 0) {
            drawPlotMarker(canvas, tempMarkerX, tempMarkerY, "Selected", true);
        }
    }

    private void drawPlotMarker(Canvas canvas, float x, float y, String name, boolean isTemp) {
        float size = 12f * density;

        // 1. Draw diamond ◇
        Path diamondPath = new Path();
        diamondPath.moveTo(x, y - size);
        diamondPath.lineTo(x + size, y);
        diamondPath.lineTo(x, y + size);
        diamondPath.lineTo(x - size, y);
        diamondPath.close();

        if (isTemp) {
            canvas.drawPath(diamondPath, tempMarkerPaint);
        } else {
            canvas.drawPath(diamondPath, diamondPaint);
        }
        canvas.drawPath(diamondPath, diamondStrokePaint);

        // Center dot
        Paint centerDot = new Paint(Paint.ANTI_ALIAS_FLAG);
        centerDot.setColor(Color.WHITE);
        canvas.drawCircle(x, y, 3f * density, centerDot);

        // 2. Draw badge with text above diamond
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

        // Badge border
        Paint borderPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        borderPaint.setStyle(Paint.Style.STROKE);
        borderPaint.setStrokeWidth(1.2f * density);
        borderPaint.setColor(isTemp ? Color.parseColor("#00E5FF") : Color.parseColor("#D4AF37"));
        canvas.drawRoundRect(rect, 4f * density, 4f * density, borderPaint);

        // Text
        float textY = badgeTop + padY + textPaint.getTextSize() * 0.85f;
        canvas.drawText(label, x, textY, textPaint);
    }
}
