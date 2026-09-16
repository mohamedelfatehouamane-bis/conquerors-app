.class public Lcom/gpc/photoselector/ui/AlbumItem;
.super Landroid/widget/LinearLayout;
.source "AlbumItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumItem"


# instance fields
.field private ivAlbum:Landroid/widget/ImageView;

.field private ivIndex:Landroid/widget/ImageView;

.field private tvCount:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/gpc/photoselector/ui/AlbumItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/photoselectorforts/R$layout;->ops_a_layout_ts_album:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    sget p1, Lcom/photoselectorforts/R$id;->iv_album_la:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->ivAlbum:Landroid/widget/ImageView;

    .line 36
    sget p1, Lcom/photoselectorforts/R$id;->iv_index_la:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->ivIndex:Landroid/widget/ImageView;

    .line 37
    sget p1, Lcom/photoselectorforts/R$id;->tv_name_la:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->tvName:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/photoselectorforts/R$id;->tv_count_la:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->tvCount:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/gpc/photoselector/ui/AlbumItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getThumbnailBitmapSize()Landroid/util/Size;
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/AlbumItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/photoselectorforts/R$dimen;->ops_a_albumitem_content_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/AlbumItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$dimen;->ops_a_albumitem_content_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x5a

    if-gtz v0, :cond_0

    const/16 v0, 0x5a

    :cond_0
    if-gtz v1, :cond_1

    const/16 v1, 0x5a

    .line 69
    :cond_1
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public isCheck(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->ivIndex:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->ivIndex:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setAlbumImage(Lcom/gpc/photoselector/model/AlbumModel;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/AlbumItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/AlbumItem;->getThumbnailBitmapSize()Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/photoselector/ui/AlbumItem;->ivAlbum:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1, v2}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V

    return-void

    .line 50
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    const-string v0, "default_icon"

    iget-object v1, p0, Lcom/gpc/photoselector/ui/AlbumItem;->ivAlbum:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCount(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/gpc/photoselector/ui/AlbumItem;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ops_a_pics"

    invoke-static {p1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/gpc/photoselector/ui/AlbumItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public update(Lcom/gpc/photoselector/model/AlbumModel;)V
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->setAlbumImage(Lcom/gpc/photoselector/model/AlbumModel;)V

    .line 80
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/AlbumItem;->setName(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gpc/photoselector/ui/AlbumItem;->setCount(I)V

    .line 82
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/AlbumModel;->isCheck()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/AlbumItem;->isCheck(Z)V

    return-void
.end method
