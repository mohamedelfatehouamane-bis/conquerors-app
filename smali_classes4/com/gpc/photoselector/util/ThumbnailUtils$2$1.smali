.class Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ThumbnailUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/util/ThumbnailUtils$2;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "file://"

    .line 89
    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {v0}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1$1;

    invoke-direct {v2, p0}, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1$1;-><init>(Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
