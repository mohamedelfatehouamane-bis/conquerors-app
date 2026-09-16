.class public Lcom/photoselector/ui/AlbumItem;
.super Landroid/widget/LinearLayout;
.source "AlbumItem.java"


# instance fields
.field private ivAlbum:Landroid/widget/ImageView;

.field private ivIndex:Landroid/widget/ImageView;

.field private tvCount:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/photoselector/ui/AlbumItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/photoselector/R$layout;->layout_album:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    sget p1, Lcom/photoselector/R$id;->iv_album_la:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/photoselector/ui/AlbumItem;->ivAlbum:Landroid/widget/ImageView;

    .line 29
    sget p1, Lcom/photoselector/R$id;->iv_index_la:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/photoselector/ui/AlbumItem;->ivIndex:Landroid/widget/ImageView;

    .line 30
    sget p1, Lcom/photoselector/R$id;->tv_name_la:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/photoselector/ui/AlbumItem;->tvName:Landroid/widget/TextView;

    .line 31
    sget p1, Lcom/photoselector/R$id;->tv_count_la:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/AlbumItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/photoselector/ui/AlbumItem;->tvCount:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/photoselector/ui/AlbumItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isCheck(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/photoselector/ui/AlbumItem;->ivIndex:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/photoselector/ui/AlbumItem;->ivIndex:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setAlbumImage(Ljava/lang/String;)V
    .locals 3

    .line 40
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/photoselector/ui/AlbumItem;->ivAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCount(I)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/photoselector/ui/AlbumItem;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/photoselector/ui/AlbumItem;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/photoselector/R$string;->pics:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/photoselector/ui/AlbumItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public update(Lcom/photoselector/model/AlbumModel;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/photoselector/model/AlbumModel;->getRecent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/photoselector/ui/AlbumItem;->setAlbumImage(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/photoselector/ui/AlbumItem;->setName(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Lcom/photoselector/model/AlbumModel;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/photoselector/ui/AlbumItem;->setCount(I)V

    .line 48
    invoke-virtual {p1}, Lcom/photoselector/model/AlbumModel;->isCheck()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/AlbumItem;->isCheck(Z)V

    return-void
.end method
