package com.savedplots;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.InputType;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * Fullscreen overlay displayed during "Mark New Plot" mode.
 * Captures the map point through the active MapCoordinateProvider.
 */
public class PlotTapCaptureOverlay extends FrameLayout {

    public interface OnPlotMarkedListener {
        void onPlotMarked(SavedPlot plot);
        void onMarkCancelled();
    }

    private final OnPlotMarkedListener listener;
    private final PlotMarkerView markerView;
    private final MapCoordinateProvider coordinateProvider;
    private final float density;
    private LinearLayout banner;

    public PlotTapCaptureOverlay(Context context, PlotMarkerView markerView,
                                 MapCoordinateProvider coordinateProvider,
                                 OnPlotMarkedListener listener) {
        super(context);
        this.markerView = markerView;
        this.coordinateProvider = coordinateProvider;
        this.listener = listener;
        this.density = context.getResources().getDisplayMetrics().density;
        initView();
    }

    private void initView() {
        setBackgroundColor(Color.argb(30, 0, 0, 0));

        banner = new LinearLayout(getContext());
        banner.setOrientation(LinearLayout.HORIZONTAL);
        banner.setGravity(Gravity.CENTER_VERTICAL);
        int pad = (int) (12 * density);
        banner.setPadding(pad, pad, pad, pad);

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(230, 20, 24, 34));
        bg.setCornerRadius(10 * density);
        bg.setStroke((int) (1.5f * density), Color.parseColor("#E5C068"));
        banner.setBackground(bg);

        TextView promptText = new TextView(getContext());
        promptText.setText("📍 Tap the map location you want to save");
        promptText.setTextColor(Color.WHITE);
        promptText.setTextSize(14);
        promptText.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

        Button cancelBtn = new Button(getContext());
        cancelBtn.setText("Cancel");
        cancelBtn.setTextColor(Color.parseColor("#FF6B6B"));
        cancelBtn.setTextSize(12);
        cancelBtn.setBackgroundColor(Color.TRANSPARENT);
        cancelBtn.setPadding((int) (8 * density), 0, (int) (8 * density), 0);
        cancelBtn.setOnClickListener(new OnClickListener() {
            @Override public void onClick(View v) {
                if (markerView != null) markerView.clearTempMarker();
                if (listener != null) listener.onMarkCancelled();
            }
        });

        banner.addView(promptText);
        banner.addView(cancelBtn);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.gravity = Gravity.TOP | Gravity.CENTER_HORIZONTAL;
        int m = (int) (16 * density);
        lp.setMargins(m, (int) (36 * density), m, 0);
        addView(banner, lp);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == MotionEvent.ACTION_UP) {
            final float tapX = event.getX();
            final float tapY = event.getY();

            if (markerView != null) markerView.setTempMarker(tapX, tapY);
            showNameDialog(tapX, tapY);
            return true;
        }
        return true;
    }

    private void showNameDialog(final float tapX, final float tapY) {
        final MapCoordinateProvider.MapPoint worldPoint =
                coordinateProvider != null ? coordinateProvider.screenToWorld(tapX, tapY) : null;

        if (worldPoint == null) {
            if (markerView != null) markerView.clearTempMarker();
            Toast.makeText(getContext(),
                    "Map coordinates are not available yet. Tap on the active game map.",
                    Toast.LENGTH_LONG).show();
            return;
        }

        AlertDialog.Builder builder = new AlertDialog.Builder(
                getContext(), AlertDialog.THEME_DEVICE_DEFAULT_DARK);
        builder.setTitle("Name this location");

        LinearLayout layout = new LinearLayout(getContext());
        layout.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (18 * density);
        layout.setPadding(pad, (int) (10 * density), pad, (int) (10 * density));

        TextView coordText = new TextView(getContext());
        coordText.setText(String.format("World Position: (%.2f, %.2f)", worldPoint.x, worldPoint.y));
        coordText.setTextColor(Color.parseColor("#AAAAAA"));
        coordText.setTextSize(12);
        coordText.setPadding(0, 0, 0, (int) (8 * density));
        layout.addView(coordText);

        final EditText input = new EditText(getContext());
        input.setHint("e.g. Castle, Army, Farm, Target 1");
        input.setInputType(InputType.TYPE_CLASS_TEXT);
        input.setTextColor(Color.WHITE);
        input.setHintTextColor(Color.parseColor("#777777"));
        layout.addView(input);

        HorizontalScrollView scrollChips = new HorizontalScrollView(getContext());
        scrollChips.setHorizontalScrollBarEnabled(false);
        scrollChips.setPadding(0, (int) (8 * density), 0, 0);
        LinearLayout chipsContainer = new LinearLayout(getContext());
        chipsContainer.setOrientation(LinearLayout.HORIZONTAL);

        String[] suggestions = new String[]{"🏰 Castle", "⚔ Army", "🌾 Farm", "🎯 Target 1", "🎯 Target 2", "💎 Resource 1"};
        for (final String s : suggestions) {
            Button chip = new Button(getContext());
            chip.setText(s);
            chip.setTextSize(11);
            chip.setTextColor(Color.parseColor("#E5C068"));
            GradientDrawable chipBg = new GradientDrawable();
            chipBg.setColor(Color.argb(180, 40, 45, 60));
            chipBg.setCornerRadius(6 * density);
            chipBg.setStroke((int) (1 * density), Color.parseColor("#E5C068"));
            chip.setBackground(chipBg);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, (int) (34 * density));
            clp.setMargins(0, 0, (int) (6 * density), 0);
            chip.setLayoutParams(clp);
            chip.setOnClickListener(new OnClickListener() {
                @Override public void onClick(View v) {
                    input.setText(s);
                    input.setSelection(s.length());
                }
            });
            chipsContainer.addView(chip);
        }
        scrollChips.addView(chipsContainer);
        layout.addView(scrollChips);
        builder.setView(layout);

        builder.setPositiveButton("SAVE", new DialogInterface.OnClickListener() {
            @Override public void onClick(DialogInterface dialog, int which) {
                String name = input.getText().toString().trim();
                if (name.isEmpty()) name = "Saved Location";

                String id = String.valueOf(System.currentTimeMillis());
                long now = System.currentTimeMillis();
                // Persist the real map/world coordinate. Screen coordinates are only the
                // current display sample and are never the persistent location identity.
                SavedPlot plot = new SavedPlot(
                        id, name, tapX, tapY, null, null,
                        Float.valueOf(worldPoint.x), Float.valueOf(worldPoint.y), now);

                PlotStorage.addPlot(getContext(), plot);
                Toast.makeText(getContext(), "Saved: " + name, Toast.LENGTH_SHORT).show();
                if (markerView != null) markerView.clearTempMarker();
                if (listener != null) listener.onPlotMarked(plot);
            }
        });

        builder.setNegativeButton("CANCEL", new DialogInterface.OnClickListener() {
            @Override public void onClick(DialogInterface dialog, int which) {
                if (markerView != null) markerView.clearTempMarker();
                dialog.cancel();
            }
        });

        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override public void onCancel(DialogInterface dialog) {
                if (markerView != null) markerView.clearTempMarker();
            }
        });

        builder.show();
    }
}
