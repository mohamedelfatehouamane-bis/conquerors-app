.class Lcom/gpc/photoselector/util/ThumbnailUtils$2;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ThumbnailUtils;->loadImageThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageview:Landroid/widget/ImageView;

.field final synthetic val$model:Lcom/gpc/photoselector/model/PhotoModel;

.field final synthetic val$size:Landroid/util/Size;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    iput-object p3, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$imageview:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$size:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/photoselector/util/PhotoSelectorHelper;->getExifDegree(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 85
    new-instance v1, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;

    invoke-direct {v1, p0}, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;-><init>(Lcom/gpc/photoselector/util/ThumbnailUtils$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$size:Landroid/util/Size;

    iget-object v2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {v2}, Lcom/gpc/photoselector/model/PhotoModel;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadImageThumbnail(Landroid/content/Context;Landroid/util/Size;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$imageview:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 107
    new-instance v2, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;

    invoke-direct {v2, p0, v0}, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;-><init>(Lcom/gpc/photoselector/util/ThumbnailUtils$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
