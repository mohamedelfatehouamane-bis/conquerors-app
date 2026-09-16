.class Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1$1;
.super Ljava/lang/Object;
.source "BasePhotoPreviewActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1$1;->this$1:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerVisibilityChange(I)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1$1;->this$1:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;

    iget-object p1, p1, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    invoke-static {p1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->access$000(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method
