.class public Lcom/igg/bot/IntegratedBotManager;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"


# static fields
.field private static instance:Lcom/igg/bot/IntegratedBotManager;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private floatBtn:Landroid/widget/TextView;

.field private isPanelOpen:Z

.field private final mainHandler:Landroid/os/Handler;

.field private markerView:Lcom/igg/bot/PlotMarkerView;

.field private panel:Lcom/igg/bot/SavedPlotsPanel;

.field private final rootLayout:Landroid/widget/FrameLayout;

.field private selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

.field private final storage:Lcom/igg/bot/PlotStorage;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igg/bot/IntegratedBotManager;->isPanelOpen:Z

    .line 64
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    .line 66
    new-instance p2, Lcom/igg/bot/PlotStorage;

    invoke-direct {p2, p1}, Lcom/igg/bot/PlotStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/igg/bot/IntegratedBotManager;->storage:Lcom/igg/bot/PlotStorage;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager;->mainHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/igg/bot/IntegratedBotManager$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/igg/bot/IntegratedBotManager;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$000()Lcom/igg/bot/IntegratedBotManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/igg/bot/IntegratedBotManager;->instance:Lcom/igg/bot/IntegratedBotManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/IntegratedBotManager;
    .locals 0

    .line 27
    sput-object p0, Lcom/igg/bot/IntegratedBotManager;->instance:Lcom/igg/bot/IntegratedBotManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/igg/bot/IntegratedBotManager;FF)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/igg/bot/IntegratedBotManager;->showPlotNamingDialog(FF)V

    return-void
.end method

.method static synthetic access$1100(Lcom/igg/bot/IntegratedBotManager;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/igg/bot/IntegratedBotManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->showPanel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/igg/bot/IntegratedBotManager;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->setupUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->startPlotSelectionMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotMarkerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/igg/bot/IntegratedBotManager;->markerView:Lcom/igg/bot/PlotMarkerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotStorage;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/igg/bot/IntegratedBotManager;->storage:Lcom/igg/bot/PlotStorage;

    return-object p0
.end method

.method static synthetic access$600(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->hidePanel()V

    return-void
.end method

.method static synthetic access$700(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->togglePanel()V

    return-void
.end method

.method static synthetic access$800(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotSelectionOverlay;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/igg/bot/IntegratedBotManager;->selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

    return-object p0
.end method

.method static synthetic access$802(Lcom/igg/bot/IntegratedBotManager;Lcom/igg/bot/PlotSelectionOverlay;)Lcom/igg/bot/PlotSelectionOverlay;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager;->selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

    return-object p1
.end method

.method static synthetic access$900(Lcom/igg/bot/IntegratedBotManager;)Landroid/widget/FrameLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private createFloatingButton()V
    .locals 6

    .line 110
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    const-string v1, "\ud83d\udccd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v0

    .line 116
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 117
    const v3, 0x800035

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 118
    const/16 v3, 0x6e

    invoke-direct {p0, v3}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 121
    const v4, -0x19e1d6c5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 122
    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 123
    invoke-direct {p0, v2}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v0

    const/16 v2, -0x2900

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 124
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/igg/bot/IntegratedBotManager$3;

    invoke-direct {v2, p0}, Lcom/igg/bot/IntegratedBotManager$3;-><init>(Lcom/igg/bot/IntegratedBotManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->floatBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method private dp(I)I
    .locals 2

    .line 292
    int-to-float p1, p1

    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 292
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private hidePanel()V
    .locals 2

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igg/bot/IntegratedBotManager;->isPanelOpen:Z

    .line 183
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->panel:Lcom/igg/bot/SavedPlotsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/igg/bot/SavedPlotsPanel;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public static declared-synchronized init(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 2

    const-class v0, Lcom/igg/bot/IntegratedBotManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/igg/bot/IntegratedBotManager;->instance:Lcom/igg/bot/IntegratedBotManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 45
    monitor-exit v0

    return-void

    .line 47
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    new-instance v1, Lcom/igg/bot/IntegratedBotManager$1;

    invoke-direct {v1, p0, p1}, Lcom/igg/bot/IntegratedBotManager$1;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    .line 48
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setupUI()V
    .locals 5

    .line 72
    new-instance v0, Lcom/igg/bot/PlotMarkerView;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/igg/bot/PlotMarkerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->markerView:Lcom/igg/bot/PlotMarkerView;

    .line 73
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->markerView:Lcom/igg/bot/PlotMarkerView;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->storage:Lcom/igg/bot/PlotStorage;

    invoke-virtual {v1}, Lcom/igg/bot/PlotStorage;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igg/bot/PlotMarkerView;->updatePlots(Ljava/util/List;)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/igg/bot/IntegratedBotManager;->markerView:Lcom/igg/bot/PlotMarkerView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v0, Lcom/igg/bot/SavedPlotsPanel;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/igg/bot/IntegratedBotManager;->storage:Lcom/igg/bot/PlotStorage;

    new-instance v4, Lcom/igg/bot/IntegratedBotManager$2;

    invoke-direct {v4, p0}, Lcom/igg/bot/IntegratedBotManager$2;-><init>(Lcom/igg/bot/IntegratedBotManager;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/igg/bot/SavedPlotsPanel;-><init>(Landroid/content/Context;Lcom/igg/bot/PlotStorage;Lcom/igg/bot/SavedPlotsPanel$PanelListener;)V

    iput-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->panel:Lcom/igg/bot/SavedPlotsPanel;

    .line 98
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->panel:Lcom/igg/bot/SavedPlotsPanel;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/igg/bot/SavedPlotsPanel;->setVisibility(I)V

    .line 99
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->panel:Lcom/igg/bot/SavedPlotsPanel;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->createFloatingButton()V

    .line 107
    return-void
.end method

.method private showPanel()V
    .locals 2

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igg/bot/IntegratedBotManager;->isPanelOpen:Z

    .line 176
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->panel:Lcom/igg/bot/SavedPlotsPanel;

    invoke-virtual {v0}, Lcom/igg/bot/SavedPlotsPanel;->refreshList()V

    .line 177
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->panel:Lcom/igg/bot/SavedPlotsPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igg/bot/SavedPlotsPanel;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->markerView:Lcom/igg/bot/PlotMarkerView;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->storage:Lcom/igg/bot/PlotStorage;

    invoke-virtual {v1}, Lcom/igg/bot/PlotStorage;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igg/bot/PlotMarkerView;->updatePlots(Ljava/util/List;)V

    .line 179
    return-void
.end method

.method private showPlotNamingDialog(FF)V
    .locals 12

    .line 223
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 224
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2, v1, v0}, Lcom/igg/bot/PlotGridHelper;->estimateGrid(FFII)Lcom/igg/bot/PlotGridHelper$GridCoord;

    move-result-object v7

    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    const-string v1, "Name this plot"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v8

    invoke-virtual {v1, v4, v6, v3, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 233
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    aput-object v8, v10, v2

    const-string v6, "Position: (%.0f, %.0f)"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz v7, :cond_0

    .line 237
    iget v6, v7, Lcom/igg/bot/PlotGridHelper$GridCoord;->row:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v8, v7, Lcom/igg/bot/PlotGridHelper$GridCoord;->col:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v11

    aput-object v8, v10, v2

    const-string v2, " | Grid: (%d, %d)"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const v2, -0x9b8b75

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v3, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    invoke-direct {p0, v5}, Lcom/igg/bot/IntegratedBotManager;->dp(I)I

    move-result v2

    invoke-virtual {v3, v11, v11, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 243
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    new-instance v4, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    invoke-direct {v4, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 246
    const-string v2, "e.g. My Castle, Army, Farm"

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 247
    const-string v2, "Castle"

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 249
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 253
    new-instance v1, Lcom/igg/bot/IntegratedBotManager$5;

    move-object v2, v1

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/igg/bot/IntegratedBotManager$5;-><init>(Lcom/igg/bot/IntegratedBotManager;Landroid/widget/EditText;FFLcom/igg/bot/PlotGridHelper$GridCoord;)V

    const-string p1, "SAVE"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    new-instance p1, Lcom/igg/bot/IntegratedBotManager$6;

    invoke-direct {p1, p0}, Lcom/igg/bot/IntegratedBotManager$6;-><init>(Lcom/igg/bot/IntegratedBotManager;)V

    const-string p2, "CANCEL"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    return-void
.end method

.method private startPlotSelectionMode()V
    .locals 3

    .line 187
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->hidePanel()V

    .line 189
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 193
    :cond_0
    new-instance v0, Lcom/igg/bot/PlotSelectionOverlay;

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/igg/bot/IntegratedBotManager$4;

    invoke-direct {v2, p0}, Lcom/igg/bot/IntegratedBotManager$4;-><init>(Lcom/igg/bot/IntegratedBotManager;)V

    invoke-direct {v0, v1, v2}, Lcom/igg/bot/PlotSelectionOverlay;-><init>(Landroid/content/Context;Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;)V

    iput-object v0, p0, Lcom/igg/bot/IntegratedBotManager;->selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

    .line 215
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 219
    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/igg/bot/IntegratedBotManager;->selectionOverlay:Lcom/igg/bot/PlotSelectionOverlay;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method private togglePanel()V
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/igg/bot/IntegratedBotManager;->isPanelOpen:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->hidePanel()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/igg/bot/IntegratedBotManager;->showPanel()V

    .line 172
    :goto_0
    return-void
.end method
