.class Lcom/photoselector/ui/PhotoItem$1;
.super Ljava/lang/Object;
.source "PhotoItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/photoselector/ui/PhotoItem;->setImageDrawable(Lcom/photoselector/model/PhotoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/photoselector/ui/PhotoItem;

.field final synthetic val$photo:Lcom/photoselector/model/PhotoModel;


# direct methods
.method constructor <init>(Lcom/photoselector/ui/PhotoItem;Lcom/photoselector/model/PhotoModel;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/photoselector/ui/PhotoItem$1;->this$0:Lcom/photoselector/ui/PhotoItem;

    iput-object p2, p0, Lcom/photoselector/ui/PhotoItem$1;->val$photo:Lcom/photoselector/model/PhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/photoselector/ui/PhotoItem$1;->val$photo:Lcom/photoselector/model/PhotoModel;

    invoke-virtual {v2}, Lcom/photoselector/model/PhotoModel;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/photoselector/ui/PhotoItem$1;->this$0:Lcom/photoselector/ui/PhotoItem;

    invoke-static {v2}, Lcom/photoselector/ui/PhotoItem;->access$000(Lcom/photoselector/ui/PhotoItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
