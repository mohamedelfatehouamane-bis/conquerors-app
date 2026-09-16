.class public Lcom/gpc/photoselector/ui/VideoPreview;
.super Landroid/widget/LinearLayout;
.source "VideoPreview.java"


# instance fields
.field private exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

.field private onPlayerListener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

.field private pbLoading:Landroid/widget/ProgressBar;

.field private pvPlayerView:Lcom/gpc/photoselector/util/ExPlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/VideoPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/VideoPreview;)Landroid/widget/ProgressBar;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->pbLoading:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/ui/VideoPreview;)Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->onPlayerListener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/photoselectorforts/R$layout;->ops_a_view_ts_videopreview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget v0, Lcom/photoselectorforts/R$id;->pb_loading_vpp:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/VideoPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->pbLoading:Landroid/widget/ProgressBar;

    .line 45
    sget v0, Lcom/photoselectorforts/R$id;->exo_play_view:I

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/VideoPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gpc/photoselector/util/ExPlayerView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->pvPlayerView:Lcom/gpc/photoselector/util/ExPlayerView;

    .line 46
    new-instance v0, Lcom/gpc/photoselector/util/ExPlayerHelper;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/VideoPreview;->pvPlayerView:Lcom/gpc/photoselector/util/ExPlayerView;

    new-instance v2, Lcom/gpc/photoselector/ui/VideoPreview$1;

    invoke-direct {v2, p0}, Lcom/gpc/photoselector/ui/VideoPreview$1;-><init>(Lcom/gpc/photoselector/ui/VideoPreview;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/gpc/photoselector/util/ExPlayerHelper;-><init>(Landroid/content/Context;Lcom/gpc/photoselector/util/ExPlayerView;Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;)V

    iput-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    .line 60
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->initializePlayer()Z

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->onStop()V

    :cond_0
    return-void
.end method

.method public play(Landroid/net/Uri;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview;->exPlayerHelper:Lcom/gpc/photoselector/util/ExPlayerHelper;

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/util/ExPlayerHelper;->play(Landroid/net/Uri;)V

    return-void
.end method

.method public setPlayerListener(Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreview;->onPlayerListener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    return-void
.end method
