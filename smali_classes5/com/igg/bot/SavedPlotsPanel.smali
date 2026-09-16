.class public Lcom/igg/bot/SavedPlotsPanel;
.super Landroid/widget/FrameLayout;
.source "SavedPlotsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/bot/SavedPlotsPanel$PanelListener;
    }
.end annotation


# instance fields
.field private emptyStateText:Landroid/widget/TextView;

.field private listContainer:Landroid/widget/LinearLayout;

.field private final listener:Lcom/igg/bot/SavedPlotsPanel$PanelListener;

.field private markerToggleBtn:Landroid/widget/TextView;

.field private markersVisible:Z

.field private final storage:Lcom/igg/bot/PlotStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igg/bot/PlotStorage;Lcom/igg/bot/SavedPlotsPanel$PanelListener;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igg/bot/SavedPlotsPanel;->markersVisible:Z

    .line 41
    iput-object p2, p0, Lcom/igg/bot/SavedPlotsPanel;->storage:Lcom/igg/bot/PlotStorage;

    .line 42
    iput-object p3, p0, Lcom/igg/bot/SavedPlotsPanel;->listener:Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    .line 43
    invoke-direct {p0, p1}, Lcom/igg/bot/SavedPlotsPanel;->initView(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/igg/bot/SavedPlotsPanel;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/igg/bot/SavedPlotsPanel;->markersVisible:Z

    return p0
.end method

.method static synthetic access$002(Lcom/igg/bot/SavedPlotsPanel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/igg/bot/SavedPlotsPanel;->markersVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/igg/bot/SavedPlotsPanel;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/igg/bot/SavedPlotsPanel;->listener:Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/igg/bot/SavedPlotsPanel;Lcom/igg/bot/SavedPlot;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/igg/bot/SavedPlotsPanel;->showEditDialog(Lcom/igg/bot/SavedPlot;)V

    return-void
.end method

.method static synthetic access$400(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/PlotStorage;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/igg/bot/SavedPlotsPanel;->storage:Lcom/igg/bot/PlotStorage;

    return-object p0
.end method

.method private dp(I)I
    .locals 2

    .line 287
    int-to-float p1, p1

    .line 290
    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 287
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 16

    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x77000000

    invoke-virtual {v0, v2}, Lcom/igg/bot/SavedPlotsPanel;->setBackgroundColor(I)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/igg/bot/SavedPlotsPanel;->setClickable(Z)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/igg/bot/SavedPlotsPanel;->setFocusable(Z)V

    .line 53
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    const/16 v4, 0x10

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v5

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v6

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v7

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 58
    const v6, -0xfe7e0d4

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 59
    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 60
    invoke-direct {v0, v2}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v6

    const v7, -0xccbeab

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 61
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    const/16 v4, 0xc

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v7

    invoke-virtual {v5, v6, v6, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v8, "\ud83d\udccd SAVED PLOTS"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/16 v8, -0x2900

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    const/high16 v8, 0x41880000    # 17.0f

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 74
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    invoke-direct {v10, v6, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    .line 78
    iget-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    const-string v10, "\ud83d\udc41 Visible"

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    const v10, -0xc74208

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v13

    const/4 v14, 0x4

    invoke-direct {v0, v14}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v15

    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v12

    invoke-direct {v0, v14}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v6

    invoke-virtual {v7, v13, v15, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    iget-object v6, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    new-instance v7, Lcom/igg/bot/SavedPlotsPanel$1;

    invoke-direct {v7, v0}, Lcom/igg/bot/SavedPlotsPanel$1;-><init>(Lcom/igg/bot/SavedPlotsPanel;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, v0, Lcom/igg/bot/SavedPlotsPanel;->markerToggleBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    const-string v7, " \u2715 "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v6, v9, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    invoke-virtual {v6, v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 100
    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v11

    invoke-direct {v0, v9}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v12

    invoke-direct {v0, v14}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v13

    invoke-direct {v0, v9}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    new-instance v11, Lcom/igg/bot/SavedPlotsPanel$2;

    invoke-direct {v11, v0}, Lcom/igg/bot/SavedPlotsPanel$2;-><init>(Lcom/igg/bot/SavedPlotsPanel;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v6, "+ Mark New Plot"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    invoke-virtual {v5, v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 118
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    const/16 v11, 0xa

    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v12

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v13

    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v14

    invoke-virtual {v5, v8, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 122
    const v12, -0xda9c15

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 123
    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 124
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v8, Lcom/igg/bot/SavedPlotsPanel$3;

    invoke-direct {v8, v0}, Lcom/igg/bot/SavedPlotsPanel$3;-><init>(Lcom/igg/bot/SavedPlotsPanel;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    const-string v8, "Saved Locations:"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v8, -0x6b5c48

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    const/16 v8, 0xe

    invoke-direct {v0, v8}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    const/4 v11, 0x6

    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v8, v12, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    const/16 v11, 0x118

    invoke-direct {v0, v11}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v11

    invoke-direct {v8, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    .line 151
    iget-object v7, v0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    iget-object v2, v0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    .line 157
    iget-object v1, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    const-string v2, "No plots saved yet.\nTap \'+ Mark New Plot\' to select a position on the map."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    const v2, -0x9b8b75

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v1, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    iget-object v1, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    iget-object v1, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v2

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v7

    invoke-direct {v0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v4

    invoke-direct {v0, v5}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v7, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 162
    iget-object v1, v0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    const/16 v2, 0x154

    invoke-direct {v0, v2}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v2

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    invoke-virtual {v0, v3, v1}, Lcom/igg/bot/SavedPlotsPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/igg/bot/SavedPlotsPanel;->refreshList()V

    .line 173
    return-void
.end method

.method private showEditDialog(Lcom/igg/bot/SavedPlot;)V
    .locals 3

    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    const-string v1, "Rename Plot"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 264
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 265
    iget-object v2, p1, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p1, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 269
    new-instance v2, Lcom/igg/bot/SavedPlotsPanel$6;

    invoke-direct {v2, p0, v1, p1}, Lcom/igg/bot/SavedPlotsPanel$6;-><init>(Lcom/igg/bot/SavedPlotsPanel;Landroid/widget/EditText;Lcom/igg/bot/SavedPlot;)V

    const-string p1, "Save"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    const-string p1, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 284
    return-void
.end method


# virtual methods
.method public refreshList()V
    .locals 14

    .line 176
    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel;->storage:Lcom/igg/bot/PlotStorage;

    invoke-virtual {v0}, Lcom/igg/bot/PlotStorage;->getAll()Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igg/bot/SavedPlotsPanel;->emptyStateText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igg/bot/SavedPlot;

    .line 185
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    invoke-virtual {v2, v5, v7, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 197
    const v8, -0xe1d6c5

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 198
    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 199
    invoke-direct {p0, v3}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v8

    const v10, -0xccbeab

    invoke-virtual {v4, v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 200
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 207
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 208
    iget-object v10, v1, Lcom/igg/bot/SavedPlot;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    const/high16 v5, 0x41600000    # 14.0f

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    const/4 v5, 0x0

    invoke-virtual {v8, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 212
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    const-string v5, "Edit"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const v5, -0xc74208

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v11

    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v12

    invoke-direct {p0, v8}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v13

    invoke-virtual {v3, v7, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 221
    new-instance v7, Lcom/igg/bot/SavedPlotsPanel$4;

    invoke-direct {v7, p0, v1}, Lcom/igg/bot/SavedPlotsPanel$4;-><init>(Lcom/igg/bot/SavedPlotsPanel;Lcom/igg/bot/SavedPlot;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v7, "Delete"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const v7, -0x10bbbc

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    invoke-virtual {v3, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v5

    invoke-direct {p0, v8}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v8}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v11

    invoke-virtual {v3, v5, v7, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 235
    new-instance v5, Lcom/igg/bot/SavedPlotsPanel$5;

    invoke-direct {v5, p0, v1}, Lcom/igg/bot/SavedPlotsPanel$5;-><init>(Lcom/igg/bot/SavedPlotsPanel;Lcom/igg/bot/SavedPlot;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/igg/bot/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v1}, Lcom/igg/bot/SavedPlot;->getPositionSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const v1, -0x6b5c48

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v3, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 253
    invoke-direct {p0, v8}, Lcom/igg/bot/SavedPlotsPanel;->dp(I)I

    move-result v1

    invoke-virtual {v3, v9, v1, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/igg/bot/SavedPlotsPanel;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    goto/16 :goto_0

    .line 258
    :cond_1
    return-void
.end method
