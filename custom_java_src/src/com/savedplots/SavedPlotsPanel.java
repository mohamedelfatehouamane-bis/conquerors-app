package com.savedplots;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

/**
 * The main Saved Plots panel as specified.
 */
public class SavedPlotsPanel extends FrameLayout {

    public interface PanelListener {
        void onRequestMarkNewPlot();
        void onClosePanel();
        void onPlotsChanged();
        void onToggleMarkers(boolean visible);
    }

    private PanelListener listener;
    private float density;
    private LinearLayout listContainer;
    private CheckBox markerToggle;

    public SavedPlotsPanel(Context context, PanelListener listener) {
        super(context);
        this.listener = listener;
        this.density = context.getResources().getDisplayMetrics().density;
        initView();
    }

    private void initView() {
        // Semi-transparent background dimming
        setBackgroundColor(Color.argb(120, 0, 0, 0));
        setClickable(true);
        setFocusable(true);

        // Center card
        LinearLayout card = new LinearLayout(getContext());
        card.setOrientation(LinearLayout.VERTICAL);
        
        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(Color.argb(245, 22, 27, 38));
        cardBg.setCornerRadius(14 * density);
        cardBg.setStroke((int) (1.5f * density), Color.parseColor("#E5C068"));
        card.setBackground(cardBg);

        int pad = (int) (16 * density);
        card.setPadding(pad, pad, pad, pad);

        // 1. Header Bar: Title + Close Button
        LinearLayout header = new LinearLayout(getContext());
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);

        TextView title = new TextView(getContext());
        title.setText("📍 SAVED PLOTS");
        title.setTextColor(Color.parseColor("#E5C068")); // Gold
        title.setTextSize(17);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        header.addView(title);

        Button closeBtn = new Button(getContext());
        closeBtn.setText("✕");
        closeBtn.setTextColor(Color.parseColor("#CCCCCC"));
        closeBtn.setTextSize(16);
        closeBtn.setBackgroundColor(Color.TRANSPARENT);
        closeBtn.setPadding((int) (8 * density), 0, (int) (8 * density), 0);
        closeBtn.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) listener.onClosePanel();
            }
        });
        header.addView(closeBtn);
        card.addView(header);

        // Divider
        View div1 = new View(getContext());
        div1.setBackgroundColor(Color.parseColor("#3A4254"));
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (1 * density));
        dlp.setMargins(0, (int) (8 * density), 0, (int) (12 * density));
        card.addView(div1, dlp);

        // 2. Button: [+ Mark New Plot]
        Button markBtn = new Button(getContext());
        markBtn.setText("＋ Mark New Plot");
        markBtn.setTextColor(Color.WHITE);
        markBtn.setTextSize(15);
        markBtn.setTypeface(Typeface.DEFAULT_BOLD);

        GradientDrawable btnBg = new GradientDrawable();
        btnBg.setColor(Color.parseColor("#C68A2C")); // Game gold/amber
        btnBg.setCornerRadius(8 * density);
        markBtn.setBackground(btnBg);

        markBtn.setPadding((int) (12 * density), (int) (10 * density), (int) (12 * density), (int) (10 * density));
        markBtn.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (listener != null) listener.onRequestMarkNewPlot();
            }
        });
        card.addView(markBtn);

        // 3. Option: Show Markers on Map
        markerToggle = new CheckBox(getContext());
        markerToggle.setText("Show markers on game screen");
        markerToggle.setTextColor(Color.parseColor("#CCCCCC"));
        markerToggle.setTextSize(12);
        markerToggle.setChecked(true); // Default to showing saved markers
        markerToggle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (listener != null) listener.onToggleMarkers(isChecked);
            }
        });
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        tlp.setMargins(0, (int) (8 * density), 0, (int) (4 * density));
        card.addView(markerToggle, tlp);

        // "Saved:" section header
        TextView savedHeader = new TextView(getContext());
        savedHeader.setText("Saved Locations:");
        savedHeader.setTextColor(Color.parseColor("#A0ABC0"));
        savedHeader.setTextSize(13);
        savedHeader.setTypeface(Typeface.DEFAULT_BOLD);
        savedHeader.setPadding(0, (int) (6 * density), 0, (int) (4 * density));
        card.addView(savedHeader);

        // 4. ScrollView with list of saved plots
        ScrollView scrollView = new ScrollView(getContext());
        listContainer = new LinearLayout(getContext());
        listContainer.setOrientation(LinearLayout.VERTICAL);
        scrollView.addView(listContainer, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (260 * density));
        slp.setMargins(0, (int) (4 * density), 0, 0);
        card.addView(scrollView, slp);

        // Add card to center of overlay
        FrameLayout.LayoutParams clp = new FrameLayout.LayoutParams(
                (int) (320 * density),
                ViewGroup.LayoutParams.WRAP_CONTENT
        );
        clp.gravity = Gravity.CENTER;
        addView(card, clp);

        // Initial refresh
        refreshPlots();
    }

    public void refreshPlots() {
        listContainer.removeAllViews();
        List<SavedPlot> plots = PlotStorage.loadPlots(getContext());

        if (plots.isEmpty()) {
            TextView emptyText = new TextView(getContext());
            emptyText.setText("No saved plots yet.\nTap '+ Mark New Plot' to save your first position!");
            emptyText.setTextColor(Color.parseColor("#7A869A"));
            emptyText.setTextSize(12);
            emptyText.setGravity(Gravity.CENTER);
            emptyText.setPadding(0, (int) (30 * density), 0, (int) (30 * density));
            listContainer.addView(emptyText);
            return;
        }

        for (final SavedPlot plot : plots) {
            LinearLayout item = new LinearLayout(getContext());
            item.setOrientation(LinearLayout.VERTICAL);

            GradientDrawable itemBg = new GradientDrawable();
            itemBg.setColor(Color.argb(160, 32, 38, 52));
            itemBg.setCornerRadius(6 * density);
            itemBg.setStroke((int) (1 * density), Color.parseColor("#444F67"));
            item.setBackground(itemBg);

            int p = (int) (10 * density);
            item.setPadding(p, p, p, p);

            // Row 1: Name and actions
            LinearLayout row1 = new LinearLayout(getContext());
            row1.setOrientation(LinearLayout.HORIZONTAL);
            row1.setGravity(Gravity.CENTER_VERTICAL);

            TextView nameView = new TextView(getContext());
            nameView.setText(plot.getName());
            nameView.setTextColor(Color.WHITE);
            nameView.setTextSize(14);
            nameView.setTypeface(Typeface.DEFAULT_BOLD);
            nameView.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
            row1.addView(nameView);

            // Edit button
            Button editBtn = new Button(getContext());
            editBtn.setText("Edit");
            editBtn.setTextSize(11);
            editBtn.setTextColor(Color.parseColor("#64B5F6"));
            editBtn.setBackgroundColor(Color.TRANSPARENT);
            editBtn.setPadding((int) (6 * density), 0, (int) (6 * density), 0);
            editBtn.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    showEditDialog(plot);
                }
            });
            row1.addView(editBtn);

            // Delete button
            Button delBtn = new Button(getContext());
            delBtn.setText("Delete");
            delBtn.setTextSize(11);
            delBtn.setTextColor(Color.parseColor("#E57373"));
            delBtn.setBackgroundColor(Color.TRANSPARENT);
            delBtn.setPadding((int) (6 * density), 0, (int) (6 * density), 0);
            delBtn.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    showDeleteDialog(plot);
                }
            });
            row1.addView(delBtn);
            item.addView(row1);

            // Row 2: Position details
            TextView posView = new TextView(getContext());
            StringBuilder sb = new StringBuilder();
            sb.append(String.format("Position: Screen (%.0f, %.0f)", plot.getScreenX(), plot.getScreenY()));
            if (plot.getGridRow() != null && plot.getGridColumn() != null) {
                sb.append(String.format(" | Grid [%d, %d]", plot.getGridRow(), plot.getGridColumn()));
            }
            if (plot.getWorldX() != null && plot.getWorldY() != null) {
                sb.append(String.format(" | World (%.1f, %.1f)", plot.getWorldX(), plot.getWorldY()));
            }
            posView.setText(sb.toString());
            posView.setTextColor(Color.parseColor("#90A4AE"));
            posView.setTextSize(11);
            item.addView(posView);

            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
            );
            ilp.setMargins(0, 0, 0, (int) (8 * density));
            listContainer.addView(item, ilp);
        }
    }

    private void showEditDialog(final SavedPlot plot) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), AlertDialog.THEME_DEVICE_DEFAULT_DARK);
        builder.setTitle("Rename Plot");

        final EditText input = new EditText(getContext());
        input.setText(plot.getName());
        input.setSelection(plot.getName().length());
        input.setTextColor(Color.WHITE);
        int pad = (int) (16 * density);
        FrameLayout container = new FrameLayout(getContext());
        container.setPadding(pad, (int) (8 * density), pad, (int) (8 * density));
        container.addView(input);
        builder.setView(container);

        builder.setPositiveButton("SAVE", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                String newName = input.getText().toString().trim();
                if (!newName.isEmpty()) {
                    plot.setName(newName);
                    PlotStorage.updatePlot(getContext(), plot);
                    refreshPlots();
                    if (listener != null) listener.onPlotsChanged();
                    Toast.makeText(getContext(), "Plot renamed", Toast.LENGTH_SHORT).show();
                }
            }
        });
        builder.setNegativeButton("CANCEL", null);
        builder.show();
    }

    private void showDeleteDialog(final SavedPlot plot) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), AlertDialog.THEME_DEVICE_DEFAULT_DARK);
        builder.setTitle("Delete Plot");
        builder.setMessage("Are you sure you want to delete \"" + plot.getName() + "\"?");
        builder.setPositiveButton("DELETE", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                PlotStorage.deletePlot(getContext(), plot.getId());
                refreshPlots();
                if (listener != null) listener.onPlotsChanged();
                Toast.makeText(getContext(), "Deleted", Toast.LENGTH_SHORT).show();
            }
        });
        builder.setNegativeButton("CANCEL", null);
        builder.show();
    }

    public boolean isMarkersEnabled() {
        return markerToggle != null && markerToggle.isChecked();
    }
}
