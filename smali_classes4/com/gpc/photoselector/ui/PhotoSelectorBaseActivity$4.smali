.class Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoSelectorBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->hideAuthorizeTip()V
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

    .line 468
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$4;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 471
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity$4;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;

    iget-object p1, p1, Lcom/gpc/photoselector/ui/PhotoSelectorBaseActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
