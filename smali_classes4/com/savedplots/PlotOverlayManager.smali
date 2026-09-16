.class public Lcom/savedplots/PlotOverlayManager;
.super Ljava/lang/Object;
.source "PlotOverlayManager.java"


# static fields
.field private static sInstance:Lcom/savedplots/PlotOverlayManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private floatingButton:Lcom/savedplots/FloatingPlotButton;

.field private markerView:Lcom/savedplots/PlotMarkerView;

.field private rootOverlay:Landroid/widget/FrameLayout;

.field private savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

.field private tapCaptureOverlay:Lcom/savedplots/PlotTapCaptureOverlay;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    .line 46
    invoke-direct {p0}, Lcom/savedplots/PlotOverlayManager;->setupUI()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/savedplots/PlotOverlayManager$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/savedplots/PlotOverlayManager;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000()Lcom/savedplots/PlotOverlayManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/savedplots/PlotOverlayManager;->sInstance:Lcom/savedplots/PlotOverlayManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/savedplots/PlotOverlayManager;)Lcom/savedplots/PlotOverlayManager;
    .locals 0

    .line 17
    sput-object p0, Lcom/savedplots/PlotOverlayManager;->sInstance:Lcom/savedplots/PlotOverlayManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/savedplots/PlotOverlayManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/savedplots/PlotOverlayManager;->openSavedPlotsPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/savedplots/PlotOverlayManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/savedplots/PlotOverlayManager;->startMarkNewPlot()V

    return-void
.end method

.method static synthetic access$400(Lcom/savedplots/PlotOverlayManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/savedplots/PlotOverlayManager;->closeSavedPlotsPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/savedplots/PlotOverlayManager;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/savedplots/PlotOverlayManager;)Lcom/savedplots/PlotMarkerView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/savedplots/PlotOverlayManager;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/savedplots/PlotOverlayManager;->finishMarkNewPlot(Z)V

    return-void
.end method

.method private closeSavedPlotsPanel()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/savedplots/SavedPlotsPanel;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->floatingButton:Lcom/savedplots/FloatingPlotButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/savedplots/FloatingPlotButton;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {v1}, Lcom/savedplots/SavedPlotsPanel;->isMarkersEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/savedplots/PlotMarkerView;->setMarkersVisible(Z)V

    .line 147
    return-void
.end method

.method private finishMarkNewPlot(Z)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->tapCaptureOverlay:Lcom/savedplots/PlotTapCaptureOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/savedplots/PlotTapCaptureOverlay;->setVisibility(I)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/savedplots/PlotStorage;->loadPlots(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/savedplots/PlotMarkerView;->setPlots(Ljava/util/List;)V

    .line 159
    iget-object p1, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {v0}, Lcom/savedplots/SavedPlotsPanel;->isMarkersEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/savedplots/PlotMarkerView;->setMarkersVisible(Z)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {p1}, Lcom/savedplots/SavedPlotsPanel;->refreshPlots()V

    .line 162
    iget-object p1, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/savedplots/SavedPlotsPanel;->setVisibility(I)V

    .line 163
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2

    .line 28
    if-nez p0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/savedplots/PlotOverlayManager$1;

    invoke-direct {v1, p0}, Lcom/savedplots/PlotOverlayManager$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method private openSavedPlotsPanel()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/savedplots/PlotStorage;->loadPlots(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/savedplots/PlotMarkerView;->setPlots(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {v1}, Lcom/savedplots/SavedPlotsPanel;->isMarkersEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/savedplots/PlotMarkerView;->setMarkersVisible(Z)V

    .line 138
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {v0}, Lcom/savedplots/SavedPlotsPanel;->refreshPlots()V

    .line 139
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/savedplots/SavedPlotsPanel;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->floatingButton:Lcom/savedplots/FloatingPlotButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/savedplots/FloatingPlotButton;->setVisibility(I)V

    .line 141
    return-void
.end method

.method private setupUI()V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 52
    iget-object v2, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/savedplots/PlotOverlayManager;->rootOverlay:Landroid/widget/FrameLayout;

    .line 56
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    new-instance v4, Lcom/savedplots/PlotMarkerView;

    iget-object v5, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/savedplots/PlotMarkerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    .line 63
    iget-object v4, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    iget-object v5, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/savedplots/PlotStorage;->loadPlots(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/savedplots/PlotMarkerView;->setPlots(Ljava/util/List;)V

    .line 64
    iget-object v4, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/savedplots/PlotMarkerView;->setMarkersVisible(Z)V

    .line 65
    iget-object v4, p0, Lcom/savedplots/PlotOverlayManager;->rootOverlay:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v4, Lcom/savedplots/FloatingPlotButton;

    iget-object v5, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/savedplots/PlotOverlayManager$2;

    invoke-direct {v6, p0}, Lcom/savedplots/PlotOverlayManager$2;-><init>(Lcom/savedplots/PlotOverlayManager;)V

    invoke-direct {v4, v5, v6}, Lcom/savedplots/FloatingPlotButton;-><init>(Landroid/content/Context;Lcom/savedplots/FloatingPlotButton$OnClickListener;)V

    iput-object v4, p0, Lcom/savedplots/PlotOverlayManager;->floatingButton:Lcom/savedplots/FloatingPlotButton;

    .line 78
    const/high16 v4, 0x42400000    # 48.0f

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 79
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    const v4, 0x800035

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v4, v4, v1

    float-to-int v4, v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    const/high16 v4, 0x41800000    # 16.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 83
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->rootOverlay:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/savedplots/PlotOverlayManager;->floatingButton:Lcom/savedplots/FloatingPlotButton;

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v1, Lcom/savedplots/SavedPlotsPanel;

    iget-object v4, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/savedplots/PlotOverlayManager$3;

    invoke-direct {v5, p0}, Lcom/savedplots/PlotOverlayManager$3;-><init>(Lcom/savedplots/PlotOverlayManager;)V

    invoke-direct {v1, v4, v5}, Lcom/savedplots/SavedPlotsPanel;-><init>(Landroid/content/Context;Lcom/savedplots/SavedPlotsPanel$PanelListener;)V

    iput-object v1, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    .line 107
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/savedplots/SavedPlotsPanel;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->rootOverlay:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v1, Lcom/savedplots/PlotTapCaptureOverlay;

    iget-object v5, p0, Lcom/savedplots/PlotOverlayManager;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/savedplots/PlotOverlayManager;->markerView:Lcom/savedplots/PlotMarkerView;

    new-instance v7, Lcom/savedplots/PlotOverlayManager$4;

    invoke-direct {v7, p0}, Lcom/savedplots/PlotOverlayManager$4;-><init>(Lcom/savedplots/PlotOverlayManager;)V

    invoke-direct {v1, v5, v6, v7}, Lcom/savedplots/PlotTapCaptureOverlay;-><init>(Landroid/content/Context;Lcom/savedplots/PlotMarkerView;Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;)V

    iput-object v1, p0, Lcom/savedplots/PlotOverlayManager;->tapCaptureOverlay:Lcom/savedplots/PlotTapCaptureOverlay;

    .line 125
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->tapCaptureOverlay:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-virtual {v1, v4}, Lcom/savedplots/PlotTapCaptureOverlay;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->rootOverlay:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/savedplots/PlotOverlayManager;->tapCaptureOverlay:Lcom/savedplots/PlotTapCaptureOverlay;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager;->rootOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void
.end method

.method private startMarkNewPlot()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->savedPlotsPanel:Lcom/savedplots/SavedPlotsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/savedplots/SavedPlotsPanel;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->floatingButton:Lcom/savedplots/FloatingPlotButton;

    invoke-virtual {v0, v1}, Lcom/savedplots/FloatingPlotButton;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager;->tapCaptureOverlay:Lcom/savedplots/PlotTapCaptureOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/savedplots/PlotTapCaptureOverlay;->setVisibility(I)V

    .line 153
    return-void
.end method
