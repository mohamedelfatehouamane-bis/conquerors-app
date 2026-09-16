.class Lcom/gpc/photoselector/util/ThumbnailUtils$1;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Lcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ThumbnailUtils;->loadVideoThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$imageview:Landroid/widget/ImageView;

.field final synthetic val$model:Lcom/gpc/photoselector/model/PhotoModel;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$imageview:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;

    invoke-direct {v1, p0, p1}, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;-><init>(Lcom/gpc/photoselector/util/ThumbnailUtils$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
