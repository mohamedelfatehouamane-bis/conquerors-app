.class public Lcom/gpc/photoselector/ui/PhotoPreview;
.super Landroid/widget/LinearLayout;
.source "PhotoPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoPreview"


# instance fields
.field private ivContent:Lcom/gpc/polites/GestureImageView;

.field private l:Landroid/view/View$OnClickListener;

.field private pbLoading:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/PhotoPreview;)Lcom/gpc/polites/GestureImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->ivContent:Lcom/gpc/polites/GestureImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/ui/PhotoPreview;)Landroid/widget/ProgressBar;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/gpc/photoselector/ui/PhotoPreview$1;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/ui/PhotoPreview$1;-><init>(Lcom/gpc/photoselector/ui/PhotoPreview;)V

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/photoselectorforts/R$layout;->ops_a_view_ts_photopreview:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    sget p1, Lcom/photoselectorforts/R$id;->pb_loading_vpp:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    .line 48
    sget p1, Lcom/photoselectorforts/R$id;->iv_content_vpp:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gpc/polites/GestureImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->ivContent:Lcom/gpc/polites/GestureImageView;

    .line 49
    invoke-virtual {p1, p0}, Lcom/gpc/polites/GestureImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadImage(Landroid/net/Uri;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->loadImage(Ljava/lang/String;)V

    return-void
.end method

.method public loadImage(Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getUri()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/PhotoPreview;->loadImage(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselectorforts/R$id;->iv_content_vpp:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->l:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->ivContent:Lcom/gpc/polites/GestureImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoPreview;->l:Landroid/view/View$OnClickListener;

    return-void
.end method
