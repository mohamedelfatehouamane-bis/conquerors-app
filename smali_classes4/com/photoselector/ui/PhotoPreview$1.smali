.class Lcom/photoselector/ui/PhotoPreview$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "PhotoPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/photoselector/ui/PhotoPreview;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/photoselector/ui/PhotoPreview;


# direct methods
.method constructor <init>(Lcom/photoselector/ui/PhotoPreview;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/photoselector/ui/PhotoPreview$1;->this$0:Lcom/photoselector/ui/PhotoPreview;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreview$1;->this$0:Lcom/photoselector/ui/PhotoPreview;

    invoke-static {p1}, Lcom/photoselector/ui/PhotoPreview;->access$000(Lcom/photoselector/ui/PhotoPreview;)Lcom/polites/GestureImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/polites/GestureImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreview$1;->this$0:Lcom/photoselector/ui/PhotoPreview;

    invoke-static {p1}, Lcom/photoselector/ui/PhotoPreview;->access$100(Lcom/photoselector/ui/PhotoPreview;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreview$1;->this$0:Lcom/photoselector/ui/PhotoPreview;

    invoke-static {p1}, Lcom/photoselector/ui/PhotoPreview;->access$000(Lcom/photoselector/ui/PhotoPreview;)Lcom/polites/GestureImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/photoselector/ui/PhotoPreview$1;->this$0:Lcom/photoselector/ui/PhotoPreview;

    invoke-virtual {p2}, Lcom/photoselector/ui/PhotoPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/photoselector/R$drawable;->ic_picture_loadfailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p1, p0, Lcom/photoselector/ui/PhotoPreview$1;->this$0:Lcom/photoselector/ui/PhotoPreview;

    invoke-static {p1}, Lcom/photoselector/ui/PhotoPreview;->access$100(Lcom/photoselector/ui/PhotoPreview;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
