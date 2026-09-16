package com.savedplots;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/**
 * Main coordinator that attaches the floating button, saved plots panel,
 * marker view, and tap capture overlay to the game activity.
 */
public class PlotOverlayManager {
    private static PlotOverlayManager sInstance;

    private Activity activity;
    private FrameLayout rootOverlay;
    private FloatingPlotButton floatingButton;
    private PlotMarkerView markerView;
    private SavedPlotsPanel savedPlotsPanel;
    private PlotTapCaptureOverlay tapCaptureOverlay;

    public static void init(final Activity activity) {
        if (activity == null) return;
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                try {
                    if (sInstance != null) {
                        return;
                    }
                    sInstance = new PlotOverlayManager(activity);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private PlotOverlayManager(final Activity activity) {
        this.activity = activity;
        setupUI();
    }

    private void setupUI() {
        ViewGroup decorView = (ViewGroup) activity.getWindow().getDecorView();
        float density = activity.getResources().getDisplayMetrics().density;
        DisplayMetrics dm = activity.getResources().getDisplayMetrics();

        // 1. Root overlay container
        rootOverlay = new FrameLayout(activity);
        FrameLayout.LayoutParams rootLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
        );

        // 2. Marker View (bottom layer, transparent, passes through touches)
        markerView = new PlotMarkerView(activity);
        markerView.setPlots(PlotStorage.loadPlots(activity));
        markerView.setMarkersVisible(true);
        rootOverlay.addView(markerView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
        ));

        // 3. Floating Button [📍]
        floatingButton = new FloatingPlotButton(activity, new FloatingPlotButton.OnClickListener() {
            @Override
            public void onClick() {
                openSavedPlotsPanel();
            }
        });

        int btnSize = (int) (48 * density);
        FrameLayout.LayoutParams btnLp = new FrameLayout.LayoutParams(btnSize, btnSize);
        btnLp.gravity = Gravity.TOP | Gravity.END;
        btnLp.topMargin = (int) (100 * density);
        btnLp.rightMargin = (int) (16 * density);
        rootOverlay.addView(floatingButton, btnLp);

        // 4. Saved Plots Panel
        savedPlotsPanel = new SavedPlotsPanel(activity, new SavedPlotsPanel.PanelListener() {
            @Override
            public void onRequestMarkNewPlot() {
                startMarkNewPlot();
            }

            @Override
            public void onClosePanel() {
                closeSavedPlotsPanel();
            }

            @Override
            public void onPlotsChanged() {
                markerView.setPlots(PlotStorage.loadPlots(activity));
            }

            @Override
            public void onToggleMarkers(boolean visible) {
                markerView.setMarkersVisible(visible);
            }
        });
        savedPlotsPanel.setVisibility(View.GONE);
        rootOverlay.addView(savedPlotsPanel, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
        ));

        // 5. Tap Capture Overlay
        tapCaptureOverlay = new PlotTapCaptureOverlay(activity, markerView, new PlotTapCaptureOverlay.OnPlotMarkedListener() {
            @Override
            public void onPlotMarked(SavedPlot plot) {
                finishMarkNewPlot(true);
            }

            @Override
            public void onMarkCancelled() {
                finishMarkNewPlot(false);
            }
        });
        tapCaptureOverlay.setVisibility(View.GONE);
        rootOverlay.addView(tapCaptureOverlay, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
        ));

        // Attach rootOverlay to Activity DecorView
        decorView.addView(rootOverlay, rootLp);
    }

    private void openSavedPlotsPanel() {
        markerView.setPlots(PlotStorage.loadPlots(activity));
        markerView.setMarkersVisible(savedPlotsPanel.isMarkersEnabled());
        savedPlotsPanel.refreshPlots();
        savedPlotsPanel.setVisibility(View.VISIBLE);
        floatingButton.setVisibility(View.GONE);
    }

    private void closeSavedPlotsPanel() {
        savedPlotsPanel.setVisibility(View.GONE);
        floatingButton.setVisibility(View.VISIBLE);
        markerView.setMarkersVisible(savedPlotsPanel.isMarkersEnabled());
    }

    private void startMarkNewPlot() {
        savedPlotsPanel.setVisibility(View.GONE);
        floatingButton.setVisibility(View.GONE);
        tapCaptureOverlay.setVisibility(View.VISIBLE);
    }

    private void finishMarkNewPlot(boolean wasSaved) {
        tapCaptureOverlay.setVisibility(View.GONE);
        if (wasSaved) {
            markerView.setPlots(PlotStorage.loadPlots(activity));
            markerView.setMarkersVisible(savedPlotsPanel.isMarkersEnabled());
        }
        savedPlotsPanel.refreshPlots();
        savedPlotsPanel.setVisibility(View.VISIBLE);
    }
}
