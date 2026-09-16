package com.savedplots;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

/**
 * Handles persistent storage of saved plots using Android SharedPreferences.
 */
public class PlotStorage {
    private static final String PREF_NAME = "saved_plots_prefs";
    private static final String KEY_PLOTS = "saved_plots_list";

    private static SharedPreferences getPrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
    }

    public static synchronized List<SavedPlot> loadPlots(Context context) {
        List<SavedPlot> list = new ArrayList<SavedPlot>();
        try {
            String jsonStr = getPrefs(context).getString(KEY_PLOTS, null);
            if (jsonStr != null && !jsonStr.trim().isEmpty()) {
                JSONArray arr = new JSONArray(jsonStr);
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject obj = arr.getJSONObject(i);
                    SavedPlot plot = SavedPlot.fromJSONObject(obj);
                    if (plot != null) {
                        list.add(plot);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static synchronized void savePlots(Context context, List<SavedPlot> plots) {
        try {
            JSONArray arr = new JSONArray();
            if (plots != null) {
                for (SavedPlot p : plots) {
                    arr.put(p.toJSONObject());
                }
            }
            getPrefs(context).edit().putString(KEY_PLOTS, arr.toString()).apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized void addPlot(Context context, SavedPlot plot) {
        List<SavedPlot> list = loadPlots(context);
        list.add(plot);
        savePlots(context, list);
    }

    public static synchronized void updatePlot(Context context, SavedPlot plot) {
        List<SavedPlot> list = loadPlots(context);
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getId().equals(plot.getId())) {
                list.set(i, plot);
                break;
            }
        }
        savePlots(context, list);
    }

    public static synchronized void deletePlot(Context context, String id) {
        List<SavedPlot> list = loadPlots(context);
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getId().equals(id)) {
                list.remove(i);
                break;
            }
        }
        savePlots(context, list);
    }
}
