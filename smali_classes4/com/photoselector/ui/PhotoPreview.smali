.class public Lcom/photoselector/ui/PhotoPreview;
.super Landroid/widget/LinearLayout;
.source "PhotoPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ivContent:Lcom/polites/GestureImageView;

.field private l:Landroid/view/View$OnClickListener;

.field private pbLoading:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/photoselector/R$layout;->view_photopreview:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    sget p1, Lcom/photoselector/R$id;->pb_loading_vpp:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    .line 30
    sget p1, Lcom/photoselector/R$id;->iv_content_vpp:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/polites/GestureImageView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoPreview;->ivContent:Lcom/polites/GestureImageView;

    .line 31
    invoke-virtual {p1, p0}, Lcom/polites/GestureImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/photoselector/ui/PhotoPreview;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/photoselector/ui/PhotoPreview;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/photoselector/ui/PhotoPreview;)Lcom/polites/GestureImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/photoselector/ui/PhotoPreview;->ivContent:Lcom/polites/GestureImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/photoselector/ui/PhotoPreview;)Landroid/widget/ProgressBar;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/photoselector/ui/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/photoselector/ui/PhotoPreview$1;

    invoke-direct {v1, p0}, Lcom/photoselector/ui/PhotoPreview$1;-><init>(Lcom/photoselector/ui/PhotoPreview;)V

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method


# virtual methods
.method public loadImage(Lcom/photoselector/model/PhotoModel;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/photoselector/model/PhotoModel;->getOriginalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/photoselector/ui/PhotoPreview;->loadImage(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselector/R$id;->iv_content_vpp:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreview;->l:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/photoselector/ui/PhotoPreview;->ivContent:Lcom/polites/GestureImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/photoselector/ui/PhotoPreview;->l:Landroid/view/View$OnClickListener;

    return-void
.end method
