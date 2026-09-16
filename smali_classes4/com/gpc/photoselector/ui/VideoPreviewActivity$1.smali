.class Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;
.super Ljava/lang/Object;
.source "VideoPreviewActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/ui/VideoPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/ui/VideoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/VideoPreviewActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerVisibilityChange(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lcom/gpc/photoselector/util/AnimationUtil;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-virtual {v1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_down_current:I

    invoke-direct {p1, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 88
    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setFillAfter(Z)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->access$000(Lcom/gpc/photoselector/ui/VideoPreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    return-void

    .line 90
    :cond_0
    new-instance p1, Lcom/gpc/photoselector/util/AnimationUtil;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-virtual {v1}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_up:I

    invoke-direct {p1, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 91
    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setFillAfter(Z)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreviewActivity$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreviewActivity;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/VideoPreviewActivity;->access$000(Lcom/gpc/photoselector/ui/VideoPreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method
