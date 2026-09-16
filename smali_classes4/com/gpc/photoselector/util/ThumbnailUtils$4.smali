.class Lcom/gpc/photoselector/util/ThumbnailUtils$4;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ThumbnailUtils;->loadImageThumbnailAsync(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$loadResult:Lcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;

.field final synthetic val$resId:J

.field final synthetic val$size:Landroid/util/Size;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$size:Landroid/util/Size;

    iput-wide p3, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$resId:J

    iput-object p5, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$loadResult:Lcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$size:Landroid/util/Size;

    iget-wide v2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$resId:J

    invoke-static {v0, v1, v2, v3}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadImageThumbnail(Landroid/content/Context;Landroid/util/Size;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;->val$loadResult:Lcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;

    invoke-interface {v1, v0}, Lcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;->onFinished(Landroid/graphics/Bitmap;)V

    return-void
.end method
