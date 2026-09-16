.class Lcom/gpc/cropper/CropImageView$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/cropper/CropImageView;


# direct methods
.method constructor <init>(Lcom/gpc/cropper/CropImageView;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView$1;->this$0:Lcom/gpc/cropper/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropWindowChanged(Z)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView$1;->this$0:Lcom/gpc/cropper/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/gpc/cropper/CropImageView;->access$000(Lcom/gpc/cropper/CropImageView;ZZ)V

    .line 395
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView$1;->this$0:Lcom/gpc/cropper/CropImageView;

    invoke-static {v0}, Lcom/gpc/cropper/CropImageView;->access$100(Lcom/gpc/cropper/CropImageView;)Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView$1;->this$0:Lcom/gpc/cropper/CropImageView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;->onCropOverlayReleased(Landroid/graphics/Rect;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView$1;->this$0:Lcom/gpc/cropper/CropImageView;

    invoke-static {v0}, Lcom/gpc/cropper/CropImageView;->access$200(Lcom/gpc/cropper/CropImageView;)Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 401
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView$1;->this$0:Lcom/gpc/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;->onCropOverlayMoved(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
