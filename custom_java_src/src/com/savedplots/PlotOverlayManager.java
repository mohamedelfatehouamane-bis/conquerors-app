package com.savedplots;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/** Coordinator for the single saved-location UI and world-coordinate marker view. */
public class PlotOverlayManager {
    private static PlotOverlayManager sInstance;

    private final Activity activity;
    private FrameLayout rootOverlay;
    private FloatingPlotButton floatingButton;
    private PlotMarkerView markerView;
    private SavedPlotsPanel savedPlotsPanel;
    private PlotTapCaptureOverlay tapCaptureOverlay;
    private MapCoordinateProvider coordinateProvider;

    public static void init(final Activity activity) {
        if (activity == null) return;
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override public void run() {
                try {
                    if (sInstance == null) sInstance = new PlotOverlayManager(activity);
                } catch (Exception e) { e.printStackTrace(); }
            }
        });
    }

    private PlotOverlayManager(final Activity activity) {
        this.activity = activity;
        setupUI();
    }

    public void setMapCoordinateProvider(MapCoordinateProvider provider) {
        this.coordinateProvider = provider;
        if (markerView != null) markerView.setCoordinateProvider(provider);
        if (tapCaptureOverlay != null) tapCaptureOverlay.setCoordinateProvider(provider);
    }

    public static void notifyMapTransformChanged() {
        if (sInstance != null && sInstance.markerView != null) sInstance.markerView.refreshFromWorld();
    }

    private void setupUI() {
        ViewGroup decorView = (ViewGroup) activity.getWindow().getDecorView();
        float density = activity.getResources().getDisplayMetrics().density;

        rootOverlay = new FrameLayout(activity);
        FrameLayout.LayoutParams rootLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);

        markerView = new PlotMarkerView(activity);
        markerView.setPlots(PlotStorage.loadPlots(activity));
        markerView.setMarkersVisible(true);
        rootOverlay.addView(markerView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        floatingButton = new FloatingPlotButton(activity, new FloatingPlotButton.OnClickListener() {
            @Override public void onClick() { openSavedPlotsPanel(); }
        });
        int btnSize = (int) (48 * density);
        FrameLayout.LayoutParams btnLp = new FrameLayout.LayoutParams(btnSize, btnSize);
        btnLp.gravity = Gravity.TOP | Gravity.END;
        btnLp.topMargin = (int) (100 * density);
        btnLp.rightMargin = (int) (16 * density);
        rootOverlay.addView(floatingButton, btnLp);

        savedPlotsPanel = new SavedPlotsPanel(activity, new SavedPlotsPanel.PanelListener() {
            @Override public void onRequestMarkNewPlot() { startMarkNewPlot(); }
            @Override public void onClosePanel() { closeSavedPlotsPanel(); }
            @Override public void onPlotsChanged() {
                markerView.setPlots(PlotStorage.loadPlots(activity));
                markerView.refreshFromWorld();
            }
            @Override public void onToggleMarkers(boolean visible) { markerView.setMarkersVisible(visible); }
        });
        savedPlotsPanel.setVisibility(View.GONE);
        rootOverlay.addView(savedPlotsPanel, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        tapCaptureOverlay = new PlotTapCaptureOverlay(activity, markerView, coordinateProvider,
                new PlotTapCaptureOverlay.OnPlotMarkedListener() {
                    @Override public void onPlotMarked(SavedPlot plot) { finishMarkNewPlot(true); }
                    @Override public void onMarkCancelled() { finishMarkNewPlot(false); }
                });
        tapCaptureOverlay.setVisibility(View.GONE);
        rootOverlay.addView(tapCaptureOverlay, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

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
            markerView.refreshFromWorld();
        }
        savedPlotsPanel.refreshPlots();
        savedPlotsPanel.setVisibility(View.VISIBLE);
    }
}
