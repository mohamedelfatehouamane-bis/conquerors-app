.class Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/util/ThumbnailUtils$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    iput-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/gpc/photoselector/util/BitmapManager;->cache(Lcom/gpc/photoselector/model/PhotoModel;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
