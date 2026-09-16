.class public Lcom/polites/FlingAnimation;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Lcom/polites/Animation;


# instance fields
.field private factor:F

.field private listener:Lcom/polites/FlingAnimationListener;

.field private threshold:F

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f733333    # 0.95f

    .line 27
    iput v0, p0, Lcom/polites/FlingAnimation;->factor:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 29
    iput v0, p0, Lcom/polites/FlingAnimation;->threshold:F

    return-void
.end method


# virtual methods
.method public setFactor(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/polites/FlingAnimation;->factor:F

    return-void
.end method

.method public setListener(Lcom/polites/FlingAnimationListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/polites/FlingAnimation;->listener:Lcom/polites/FlingAnimationListener;

    return-void
.end method

.method public setVelocityX(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/polites/FlingAnimation;->velocityX:F

    return-void
.end method

.method public setVelocityY(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/polites/FlingAnimation;->velocityY:F

    return-void
.end method

.method public update(Lcom/polites/GestureImageView;J)Z
    .locals 2

    long-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 40
    iget p2, p0, Lcom/polites/FlingAnimation;->velocityX:F

    mul-float p3, p2, p1

    .line 41
    iget v0, p0, Lcom/polites/FlingAnimation;->velocityY:F

    mul-float p1, p1, v0

    .line 43
    iget v1, p0, Lcom/polites/FlingAnimation;->factor:F

    mul-float p2, p2, v1

    iput p2, p0, Lcom/polites/FlingAnimation;->velocityX:F

    mul-float v0, v0, v1

    .line 44
    iput v0, p0, Lcom/polites/FlingAnimation;->velocityY:F

    .line 46
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/polites/FlingAnimation;->threshold:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget p2, p0, Lcom/polites/FlingAnimation;->velocityY:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/polites/FlingAnimation;->threshold:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/polites/FlingAnimation;->listener:Lcom/polites/FlingAnimationListener;

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0, p3, p1}, Lcom/polites/FlingAnimationListener;->onMove(FF)V

    if-nez p2, :cond_1

    .line 52
    iget-object p1, p0, Lcom/polites/FlingAnimation;->listener:Lcom/polites/FlingAnimationListener;

    invoke-interface {p1}, Lcom/polites/FlingAnimationListener;->onComplete()V

    :cond_1
    return p2
.end method
