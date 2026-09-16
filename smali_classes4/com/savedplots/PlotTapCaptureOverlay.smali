.class public Lcom/savedplots/PlotTapCaptureOverlay;
.super Landroid/widget/FrameLayout;
.source "PlotTapCaptureOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;
    }
.end annotation


# instance fields
.field private banner:Landroid/widget/LinearLayout;

.field private density:F

.field private listener:Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

.field private markerView:Lcom/savedplots/PlotMarkerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/savedplots/PlotMarkerView;Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/savedplots/PlotTapCaptureOverlay;->markerView:Lcom/savedplots/PlotMarkerView;

    .line 40
    iput-object p3, p0, Lcom/savedplots/PlotTapCaptureOverlay;->listener:Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    .line 42
    invoke-direct {p0}, Lcom/savedplots/PlotTapCaptureOverlay;->initView()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->markerView:Lcom/savedplots/PlotMarkerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->listener:Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

    return-object p0
.end method

.method private initView()V
    .locals 8

    .line 46
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/savedplots/PlotTapCaptureOverlay;->setBackgroundColor(I)V

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52
    iget v0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 53
    iget-object v3, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 55
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 56
    const/16 v3, 0x18

    const/16 v4, 0x22

    const/16 v5, 0xe6

    const/16 v6, 0x14

    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 57
    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 58
    const/high16 v3, 0x3fc00000    # 1.5f

    iget v4, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    const-string v4, "#E5C068"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 59
    iget-object v3, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v3, "\ud83d\udccd Tap the plot you want to save"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v4, v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v5, "Cancel"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const-string v5, "#FF6B6B"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 70
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 71
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 72
    iget v2, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    iget v7, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v7, v7, v5

    float-to-int v5, v7

    invoke-virtual {v4, v2, v1, v5, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 73
    new-instance v2, Lcom/savedplots/PlotTapCaptureOverlay$1;

    invoke-direct {v2, p0}, Lcom/savedplots/PlotTapCaptureOverlay$1;-><init>(Lcom/savedplots/PlotTapCaptureOverlay;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 90
    const/high16 v3, 0x42100000    # 36.0f

    iget v4, p0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    iget-object v1, p0, Lcom/savedplots/PlotTapCaptureOverlay;->banner:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/savedplots/PlotTapCaptureOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private showNameDialog(FF)V
    .locals 16

    .line 113
    move-object/from16 v0, p0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 114
    const-string v2, "Name this plot"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    const/high16 v5, 0x41900000    # 18.0f

    iget v6, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    .line 119
    iget v6, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    iget v8, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v8, v8, v7

    float-to-int v7, v8

    invoke-virtual {v2, v5, v6, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 122
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    aput-object v7, v9, v4

    const-string v6, "Tap Position: (%.0f, %.0f)"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const-string v6, "#AAAAAA"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    iget v6, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v10, v10, v10, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v5, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v6, "e.g. Castle, Army, Farm, Target 1"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 133
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 134
    const-string v6, "#777777"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 135
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v6, Landroid/widget/HorizontalScrollView;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v6, v10}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 140
    iget v9, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v9, v9, v7

    float-to-int v7, v9

    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 142
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    const/4 v9, 0x6

    new-array v11, v9, [Ljava/lang/String;

    const-string v12, "\ud83c\udff0 Castle"

    aput-object v12, v11, v10

    const-string v12, "\u2694 Army"

    aput-object v12, v11, v4

    const-string v4, "\ud83c\udf3e Farm"

    aput-object v4, v11, v8

    const-string v4, "\ud83c\udfaf Target 1"

    const/4 v8, 0x3

    aput-object v4, v11, v8

    const-string v4, "\ud83c\udfaf Target 2"

    aput-object v4, v11, v3

    const-string v3, "\ud83d\udc8e Resource 1"

    const/4 v4, 0x5

    aput-object v3, v11, v4

    .line 146
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_0

    aget-object v4, v11, v3

    .line 147
    new-instance v8, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 150
    const-string v12, "#E5C068"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 152
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 153
    const/16 v14, 0x2d

    const/16 v15, 0x3c

    const/16 v9, 0xb4

    const/16 v10, 0x28

    invoke-static {v9, v10, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 154
    iget v9, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float v9, v9, v10

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 155
    const/high16 v9, 0x3f800000    # 1.0f

    iget v14, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v14, v14, v9

    float-to-int v9, v14

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v13, v9, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 156
    invoke-virtual {v8, v13}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42080000    # 34.0f

    iget v13, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v13, v13, v12

    float-to-int v12, v13

    const/4 v13, -0x2

    invoke-direct {v9, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    iget v12, v0, Lcom/savedplots/PlotTapCaptureOverlay;->density:F

    mul-float v12, v12, v10

    float-to-int v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v12, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v9, Lcom/savedplots/PlotTapCaptureOverlay$2;

    invoke-direct {v9, v0, v5, v4}, Lcom/savedplots/PlotTapCaptureOverlay$2;-><init>(Lcom/savedplots/PlotTapCaptureOverlay;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v6, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 179
    new-instance v2, Lcom/savedplots/PlotTapCaptureOverlay$3;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/savedplots/PlotTapCaptureOverlay$3;-><init>(Lcom/savedplots/PlotTapCaptureOverlay;Landroid/widget/EditText;FF)V

    const-string v3, "SAVE"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    new-instance v2, Lcom/savedplots/PlotTapCaptureOverlay$4;

    invoke-direct {v2, v0}, Lcom/savedplots/PlotTapCaptureOverlay$4;-><init>(Lcom/savedplots/PlotTapCaptureOverlay;)V

    const-string v3, "CANCEL"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    new-instance v2, Lcom/savedplots/PlotTapCaptureOverlay$5;

    invoke-direct {v2, v0}, Lcom/savedplots/PlotTapCaptureOverlay$5;-><init>(Lcom/savedplots/PlotTapCaptureOverlay;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 101
    iget-object v2, p0, Lcom/savedplots/PlotTapCaptureOverlay;->markerView:Lcom/savedplots/PlotMarkerView;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/savedplots/PlotTapCaptureOverlay;->markerView:Lcom/savedplots/PlotMarkerView;

    invoke-virtual {v2, v0, p1}, Lcom/savedplots/PlotMarkerView;->setTempMarker(FF)V

    .line 106
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/savedplots/PlotTapCaptureOverlay;->showNameDialog(FF)V

    .line 107
    return v1

    .line 109
    :cond_1
    return v1
.end method
