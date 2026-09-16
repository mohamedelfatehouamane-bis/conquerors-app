.class public Lcom/photoselector/ui/PhotoPreviewActivity;
.super Lcom/photoselector/ui/BasePhotoPreviewActivity;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;


# instance fields
.field private photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/photoselector/ui/BasePhotoPreviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected init(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "photos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "position"

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->photos:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->current:I

    .line 33
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoPreviewActivity;->updatePercent()V

    .line 34
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoPreviewActivity;->bindData()V

    return-void

    .line 35
    :cond_1
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->current:I

    .line 38
    invoke-static {v0}, Lcom/photoselector/util/CommonUtils;->isNull(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u6700\u8fd1\u7167\u7247"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p1, p0}, Lcom/photoselector/domain/PhotoSelectorDomain;->getReccent(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p1, v0, p0}, Lcom/photoselector/domain/PhotoSelectorDomain;->getAlbum(Ljava/lang/String;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/photoselector/ui/BasePhotoPreviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance p1, Lcom/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/photoselector/domain/PhotoSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    .line 22
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoPreviewActivity;->init(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPhotoLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/photoselector/ui/PhotoPreviewActivity;->photos:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoPreviewActivity;->updatePercent()V

    .line 54
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoPreviewActivity;->bindData()V

    return-void
.end method
