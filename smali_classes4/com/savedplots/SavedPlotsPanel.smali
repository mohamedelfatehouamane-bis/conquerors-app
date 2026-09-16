.class public Lcom/savedplots/SavedPlotsPanel;
.super Landroid/widget/FrameLayout;
.source "SavedPlotsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/savedplots/SavedPlotsPanel$PanelListener;
    }
.end annotation


# instance fields
.field private density:F

.field private listContainer:Landroid/widget/LinearLayout;

.field private listener:Lcom/savedplots/SavedPlotsPanel$PanelListener;

.field private markerToggle:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/savedplots/SavedPlotsPanel$PanelListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/savedplots/SavedPlotsPanel;->listener:Lcom/savedplots/SavedPlotsPanel$PanelListener;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    .line 45
    invoke-direct {p0}, Lcom/savedplots/SavedPlotsPanel;->initView()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/savedplots/SavedPlotsPanel;)Lcom/savedplots/SavedPlotsPanel$PanelListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/savedplots/SavedPlotsPanel;->listener:Lcom/savedplots/SavedPlotsPanel$PanelListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/savedplots/SavedPlotsPanel;->showEditDialog(Lcom/savedplots/SavedPlot;)V

    return-void
.end method

.method static synthetic access$200(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/savedplots/SavedPlotsPanel;->showDeleteDialog(Lcom/savedplots/SavedPlot;)V

    return-void
.end method

.method private initView()V
    .locals 14

    .line 50
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/savedplots/SavedPlotsPanel;->setBackgroundColor(I)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/savedplots/SavedPlotsPanel;->setClickable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/savedplots/SavedPlotsPanel;->setFocusable(Z)V

    .line 55
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 59
    const/16 v4, 0x1b

    const/16 v5, 0x26

    const/16 v6, 0xf5

    const/16 v7, 0x16

    invoke-static {v6, v7, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    const/high16 v4, 0x41600000    # 14.0f

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 61
    const/high16 v4, 0x3fc00000    # 1.5f

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    const-string v5, "#E5C068"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 62
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget v3, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 65
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 72
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    const-string v7, "\ud83d\udccd SAVED PLOTS"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v6, "\u2715"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const-string v6, "#CCCCCC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 84
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 85
    iget v4, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v9, 0x41000000    # 8.0f

    mul-float v4, v4, v9

    float-to-int v4, v4

    iget v10, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v10, v10, v9

    float-to-int v10, v10

    invoke-virtual {v5, v4, v1, v10, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 86
    new-instance v4, Lcom/savedplots/SavedPlotsPanel$1;

    invoke-direct {v4, p0}, Lcom/savedplots/SavedPlotsPanel$1;-><init>(Lcom/savedplots/SavedPlotsPanel;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    const-string v4, "#3A4254"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v8

    float-to-int v5, v5

    const/4 v8, -0x1

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v9

    float-to-int v5, v5

    iget v10, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v11, 0x41400000    # 12.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    invoke-virtual {v4, v1, v5, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v4, "\uff0b Mark New Plot"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 106
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 107
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 110
    const-string v5, "#C68A2C"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 111
    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v9

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 112
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget v4, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v4, v4, v11

    float-to-int v4, v4

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v10, 0x41200000    # 10.0f

    mul-float v5, v5, v10

    float-to-int v5, v5

    iget v12, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v12, v12, v11

    float-to-int v12, v12

    iget v13, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v13, v13, v10

    float-to-int v10, v13

    invoke-virtual {v3, v4, v5, v12, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 115
    new-instance v4, Lcom/savedplots/SavedPlotsPanel$2;

    invoke-direct {v4, p0}, Lcom/savedplots/SavedPlotsPanel$2;-><init>(Lcom/savedplots/SavedPlotsPanel;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    .line 125
    iget-object v3, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    const-string v4, "Show markers on game screen"

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 127
    iget-object v3, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 128
    iget-object v3, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v3, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    new-instance v4, Lcom/savedplots/SavedPlotsPanel$3;

    invoke-direct {v4, p0}, Lcom/savedplots/SavedPlotsPanel$3;-><init>(Lcom/savedplots/SavedPlotsPanel;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    iget v4, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v4, v4, v9

    float-to-int v4, v4

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v1, v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    iget-object v4, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v4, "Saved Locations:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const-string v4, "#A0ABC0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    const/high16 v4, 0x40c00000    # 6.0f

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v1, v4, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v3, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/savedplots/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    .line 151
    iget-object v4, p0, Lcom/savedplots/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    iget-object v0, p0, Lcom/savedplots/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43820000    # 260.0f

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-direct {v0, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    iget v4, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x43a00000    # 320.0f

    iget v3, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-direct {v0, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    invoke-virtual {p0, v2, v0}, Lcom/savedplots/SavedPlotsPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->refreshPlots()V

    .line 168
    return-void
.end method

.method private showDeleteDialog(Lcom/savedplots/SavedPlot;)V
    .locals 3

    .line 298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 299
    const-string v1, "Delete Plot"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Are you sure you want to delete \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/savedplots/SavedPlot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v1, Lcom/savedplots/SavedPlotsPanel$7;

    invoke-direct {v1, p0, p1}, Lcom/savedplots/SavedPlotsPanel$7;-><init>(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V

    const-string p1, "DELETE"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    const-string p1, "CANCEL"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 312
    return-void
.end method

.method private showEditDialog(Lcom/savedplots/SavedPlot;)V
    .locals 7

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 268
    const-string v1, "Rename Plot"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p1}, Lcom/savedplots/SavedPlot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p1}, Lcom/savedplots/SavedPlot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 273
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 274
    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 275
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 276
    iget v4, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iget v6, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 277
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 280
    new-instance v2, Lcom/savedplots/SavedPlotsPanel$6;

    invoke-direct {v2, p0, v1, p1}, Lcom/savedplots/SavedPlotsPanel$6;-><init>(Lcom/savedplots/SavedPlotsPanel;Landroid/widget/EditText;Lcom/savedplots/SavedPlot;)V

    const-string p1, "SAVE"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    const-string p1, "CANCEL"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    return-void
.end method


# virtual methods
.method public isMarkersEnabled()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/savedplots/SavedPlotsPanel;->markerToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshPlots()V
    .locals 14

    .line 171
    iget-object v0, p0, Lcom/savedplots/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 172
    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/savedplots/PlotStorage;->loadPlots(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    const-string v1, "No saved plots yet.\nTap \'+ Mark New Plot\' to save your first position!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v1, "#7A869A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    iget v1, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget v4, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    iget-object v1, p0, Lcom/savedplots/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    return-void

    .line 185
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/savedplots/SavedPlot;

    .line 186
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 190
    const/16 v6, 0x26

    const/16 v7, 0x34

    const/16 v8, 0xa0

    const/16 v9, 0x20

    invoke-static {v8, v9, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 191
    iget v6, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 192
    iget v6, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    const-string v9, "#444F67"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 193
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    const/high16 v5, 0x41200000    # 10.0f

    iget v6, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    .line 196
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 199
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 203
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v2, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 213
    const-string v8, "Edit"

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 215
    const-string v10, "#64B5F6"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 216
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 217
    iget v10, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v10, v10, v7

    float-to-int v10, v10

    iget v12, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v12, v12, v7

    float-to-int v12, v12

    invoke-virtual {v6, v10, v2, v12, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 218
    new-instance v10, Lcom/savedplots/SavedPlotsPanel$4;

    invoke-direct {v10, p0, v1}, Lcom/savedplots/SavedPlotsPanel$4;-><init>(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 228
    const-string v10, "Delete"

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 230
    const-string v10, "#E57373"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 231
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 232
    iget v10, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v10, v10, v7

    float-to-int v10, v10

    iget v12, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v12, v12, v7

    float-to-int v7, v12

    invoke-virtual {v6, v10, v2, v7, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 233
    new-instance v7, Lcom/savedplots/SavedPlotsPanel$5;

    invoke-direct {v7, p0, v1}, Lcom/savedplots/SavedPlotsPanel$5;-><init>(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getScreenX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getScreenY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v7, v13, v2

    aput-object v10, v13, v4

    const-string v7, "Position: Screen (%.0f, %.0f)"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getGridRow()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getGridColumn()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 247
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getGridRow()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getGridColumn()Ljava/lang/Integer;

    move-result-object v10

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v7, v13, v2

    aput-object v10, v13, v4

    const-string v7, " | Grid [%d, %d]"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getWorldX()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getWorldY()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 250
    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getWorldX()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1}, Lcom/savedplots/SavedPlot;->getWorldY()Ljava/lang/Float;

    move-result-object v1

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v7, v10, v2

    aput-object v1, v10, v4

    const-string v1, " | World (%.1f, %.1f)"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const-string v1, "#90A4AE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    const/high16 v4, 0x41000000    # 8.0f

    iget v5, p0, Lcom/savedplots/SavedPlotsPanel;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v1, v2, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    iget-object v4, p0, Lcom/savedplots/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    goto/16 :goto_0

    .line 264
    :cond_3
    return-void
.end method
