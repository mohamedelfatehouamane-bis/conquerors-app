.class public Lcom/photoselector/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/photoselector/util/AnimationUtil$OnAnimationRepeatListener;,
        Lcom/photoselector/util/AnimationUtil$OnAnimationStartListener;,
        Lcom/photoselector/util/AnimationUtil$OnAnimationEndListener;
    }
.end annotation


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private animationEndListener:Lcom/photoselector/util/AnimationUtil$OnAnimationEndListener;

.field private animationRepeatListener:Lcom/photoselector/util/AnimationUtil$OnAnimationRepeatListener;

.field private animationStartListener:Lcom/photoselector/util/AnimationUtil$OnAnimationStartListener;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static startAnimation(ILandroid/view/View;)V
    .locals 0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animationEndListener:Lcom/photoselector/util/AnimationUtil$OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p1}, Lcom/photoselector/util/AnimationUtil$OnAnimationEndListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animationRepeatListener:Lcom/photoselector/util/AnimationUtil$OnAnimationRepeatListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lcom/photoselector/util/AnimationUtil$OnAnimationRepeatListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animationStartListener:Lcom/photoselector/util/AnimationUtil$OnAnimationStartListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Lcom/photoselector/util/AnimationUtil$OnAnimationStartListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)Lcom/photoselector/util/AnimationUtil;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public setFillAfter(Z)Lcom/photoselector/util/AnimationUtil;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/photoselector/util/AnimationUtil;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public setLinearInterpolator()Lcom/photoselector/util/AnimationUtil;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public setOnAnimationEndLinstener(Lcom/photoselector/util/AnimationUtil$OnAnimationEndListener;)Lcom/photoselector/util/AnimationUtil;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/photoselector/util/AnimationUtil;->animationEndListener:Lcom/photoselector/util/AnimationUtil$OnAnimationEndListener;

    return-object p0
.end method

.method public setOnAnimationRepeatLinstener(Lcom/photoselector/util/AnimationUtil$OnAnimationRepeatListener;)Lcom/photoselector/util/AnimationUtil;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/photoselector/util/AnimationUtil;->animationRepeatListener:Lcom/photoselector/util/AnimationUtil$OnAnimationRepeatListener;

    return-object p0
.end method

.method public setOnAnimationStartLinstener(Lcom/photoselector/util/AnimationUtil$OnAnimationStartListener;)Lcom/photoselector/util/AnimationUtil;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/photoselector/util/AnimationUtil;->animationStartListener:Lcom/photoselector/util/AnimationUtil$OnAnimationStartListener;

    return-object p0
.end method

.method public setStartOffSet(J)Lcom/photoselector/util/AnimationUtil;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-object p0
.end method

.method public startAnimation(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/photoselector/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
