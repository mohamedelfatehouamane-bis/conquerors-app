.class Lcom/gpc/photoselector/util/ThumbnailUtils$2$1$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1$1;->this$1:Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 92
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    invoke-static {p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1$1;->this$1:Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;

    iget-object p2, p2, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    iget-object p2, p2, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$imageview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    iget-object p2, p0, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1$1;->this$1:Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;

    iget-object p2, p2, Lcom/gpc/photoselector/util/ThumbnailUtils$2$1;->this$0:Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    iget-object p2, p2, Lcom/gpc/photoselector/util/ThumbnailUtils$2;->val$model:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-static {p2, p1}, Lcom/gpc/photoselector/util/BitmapManager;->cache(Lcom/gpc/photoselector/model/PhotoModel;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
