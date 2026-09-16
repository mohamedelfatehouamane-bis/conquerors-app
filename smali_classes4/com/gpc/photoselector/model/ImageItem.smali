.class public Lcom/gpc/photoselector/model/ImageItem;
.super Ljava/lang/Object;
.source "ImageItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public imageId:Ljava/lang/String;

.field public imagePath:Ljava/lang/String;

.field public isSelected:Z

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/gpc/photoselector/model/ImageItem;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/photoselector/util/Bimp;->revitionImageSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/gpc/photoselector/model/ImageItem;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/gpc/photoselector/model/ImageItem;->isSelected:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/gpc/photoselector/model/ImageItem;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/gpc/photoselector/model/ImageItem;->imageId:Ljava/lang/String;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/gpc/photoselector/model/ImageItem;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/gpc/photoselector/model/ImageItem;->isSelected:Z

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/gpc/photoselector/model/ImageItem;->thumbnailPath:Ljava/lang/String;

    return-void
.end method
