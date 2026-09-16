package com.savedplots;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

/**
 * Floating button [📍] that can be dragged and tapped to open the Saved Plots panel.
 */
public class FloatingPlotButton extends FrameLayout {

    public interface OnClickListener {
        void onClick();
    }

    private OnClickListener clickListener;
    private float density;
    private float downRawX, downRawY;
    private float dX, dY;
    private boolean isDragging = false;
    private static final int CLICK_DRAG_TOLERANCE = 10; // px

    public FloatingPlotButton(Context context, OnClickListener clickListener) {
        super(context);
        this.clickListener = clickListener;
        this.density = context.getResources().getDisplayMetrics().density;
        initView();
    }

    private void initView() {
        int size = (int) (48 * density);
        setLayoutParams(new FrameLayout.LayoutParams(size, size));

        // Circular background with gold border and dark fill
        GradientDrawable bg = new GradientDrawable();
        bg.setShape(GradientDrawable.OVAL);
        bg.setColor(Color.argb(235, 25, 30, 42)); // Deep dark
        bg.setStroke((int) (2 * density), Color.parseColor("#E5C068")); // Gold border
        setBackground(bg);

        // Icon text
        TextView icon = new TextView(getContext());
        icon.setText("📍");
        icon.setTextSize(22);
        icon.setGravity(Gravity.CENTER);

        FrameLayout.LayoutParams ilp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT
        );
        addView(icon, ilp);

        setOnTouchListener(new OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        downRawX = event.getRawX();
                        downRawY = event.getRawY();
                        dX = v.getX() - downRawX;
                        dY = v.getY() - downRawY;
                        isDragging = false;
                        return true;

                    case MotionEvent.ACTION_MOVE:
                        float diffX = Math.abs(event.getRawX() - downRawX);
                        float diffY = Math.abs(event.getRawY() - downRawY);
                        if (diffX > CLICK_DRAG_TOLERANCE || diffY > CLICK_DRAG_TOLERANCE) {
                            isDragging = true;
                            v.setX(event.getRawX() + dX);
                            v.setY(event.getRawY() + dY);
                        }
                        return true;

                    case MotionEvent.ACTION_UP:
                        if (!isDragging) {
                            if (clickListener != null) {
                                clickListener.onClick();
                            }
                        }
                        return true;
                }
                return false;
            }
        });
    }
}
