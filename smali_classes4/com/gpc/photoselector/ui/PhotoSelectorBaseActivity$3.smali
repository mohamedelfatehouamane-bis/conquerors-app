.class Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;
.super Ljava/lang/Object;
.source "PhotoSelectorBaseActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->showAuthorizeTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->access$200(Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 455
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    iget-object v0, v0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    iget-object v1, v1, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 456
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$3;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    iget-object v0, v0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 457
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 458
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
