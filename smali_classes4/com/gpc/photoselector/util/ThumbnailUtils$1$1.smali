.class Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ThumbnailUtils$1;->onFinished(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/util/ThumbnailUtils$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$1;

    iput-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$1;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$1;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    iget-object v1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/gpc/photoselector/util/BitmapManager;->cache(Lcom/gpc/photoselector/model/PhotoModel;Landroid/graphics/Bitmap;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$1;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$imageview:Landroid/widget/ImageView;

    sget v1, Lcom/photoselectorforts/R$drawable;->ops_a_ic_tsh_loadfailed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 64
    :catch_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$1$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$1;

    iget-object v0, v0, Lcom/gpc/photoselector/util/ThumbnailUtils$1;->val$imageview:Landroid/widget/ImageView;

    sget v1, Lcom/photoselectorforts/R$drawable;->ops_a_ic_tsh_loadfailed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
