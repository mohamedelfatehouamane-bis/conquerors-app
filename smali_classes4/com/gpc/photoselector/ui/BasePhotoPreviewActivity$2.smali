.class Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;
.super Ljava/lang/Object;
.source "BasePhotoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 163
    iget-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    iget-boolean p1, p1, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->isUp:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 164
    new-instance p1, Lcom/gpc/photoselector/util/AnimationUtil;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    invoke-virtual {v1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_up:I

    invoke-direct {p1, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 165
    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setFillAfter(Z)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    invoke-static {v1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->access$100(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 166
    iget-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    iput-boolean v0, p1, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->isUp:Z

    return-void

    .line 168
    :cond_0
    new-instance p1, Lcom/gpc/photoselector/util/AnimationUtil;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    invoke-virtual {v1}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselectorforts/R$anim;->ops_a_translate_down_current:I

    invoke-direct {p1, v1, v2}, Lcom/gpc/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 169
    invoke-virtual {p1, v1}, Lcom/gpc/photoselector/util/AnimationUtil;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->setFillAfter(Z)Lcom/gpc/photoselector/util/AnimationUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->access$100(Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 170
    iget-object p1, p0, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity$2;->this$0:Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/gpc/photoselector/ui/BasePhotoPreviewActivity;->isUp:Z

    return-void
.end method
