.class public Lcom/polites/MoveAnimation;
.super Ljava/lang/Object;
.source "MoveAnimation.java"

# interfaces
.implements Lcom/polites/Animation;


# instance fields
.field private animationTimeMS:J

.field private firstFrame:Z

.field private moveAnimationListener:Lcom/polites/MoveAnimationListener;

.field private startX:F

.field private startY:F

.field private targetX:F

.field private targetY:F

.field private totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/polites/MoveAnimation;->firstFrame:Z

    const-wide/16 v0, 0x64

    .line 32
    iput-wide v0, p0, Lcom/polites/MoveAnimation;->animationTimeMS:J

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/polites/MoveAnimation;->totalTime:J

    return-void
.end method


# virtual methods
.method public getAnimationTimeMS()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/polites/MoveAnimation;->animationTimeMS:J

    return-wide v0
.end method

.method public getTargetX()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/polites/MoveAnimation;->targetX:F

    return v0
.end method

.method public getTargetY()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/polites/MoveAnimation;->targetY:F

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/polites/MoveAnimation;->firstFrame:Z

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/polites/MoveAnimation;->totalTime:J

    return-void
.end method

.method public setAnimationTimeMS(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/polites/MoveAnimation;->animationTimeMS:J

    return-void
.end method

.method public setMoveAnimationListener(Lcom/polites/MoveAnimationListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/polites/MoveAnimation;->moveAnimationListener:Lcom/polites/MoveAnimationListener;

    return-void
.end method

.method public setTargetX(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/polites/MoveAnimation;->targetX:F

    return-void
.end method

.method public setTargetY(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/polites/MoveAnimation;->targetY:F

    return-void
.end method

.method public update(Lcom/polites/GestureImageView;J)Z
    .locals 3

    .line 42
    iget-wide v0, p0, Lcom/polites/MoveAnimation;->totalTime:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/polites/MoveAnimation;->totalTime:J

    .line 44
    iget-boolean p2, p0, Lcom/polites/MoveAnimation;->firstFrame:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 45
    iput-boolean p3, p0, Lcom/polites/MoveAnimation;->firstFrame:Z

    .line 46
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getImageX()F

    move-result p2

    iput p2, p0, Lcom/polites/MoveAnimation;->startX:F

    .line 47
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getImageY()F

    move-result p1

    iput p1, p0, Lcom/polites/MoveAnimation;->startY:F

    .line 50
    :cond_0
    iget-wide p1, p0, Lcom/polites/MoveAnimation;->totalTime:J

    iget-wide v0, p0, Lcom/polites/MoveAnimation;->animationTimeMS:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 54
    iget p2, p0, Lcom/polites/MoveAnimation;->targetX:F

    iget p3, p0, Lcom/polites/MoveAnimation;->startX:F

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    .line 55
    iget p3, p0, Lcom/polites/MoveAnimation;->targetY:F

    iget v0, p0, Lcom/polites/MoveAnimation;->startY:F

    sub-float/2addr p3, v0

    mul-float p3, p3, p1

    add-float/2addr p3, v0

    .line 57
    iget-object p1, p0, Lcom/polites/MoveAnimation;->moveAnimationListener:Lcom/polites/MoveAnimationListener;

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1, p2, p3}, Lcom/polites/MoveAnimationListener;->onMove(FF)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/polites/MoveAnimation;->moveAnimationListener:Lcom/polites/MoveAnimationListener;

    if-eqz p1, :cond_3

    .line 65
    iget p2, p0, Lcom/polites/MoveAnimation;->targetX:F

    iget v0, p0, Lcom/polites/MoveAnimation;->targetY:F

    invoke-interface {p1, p2, v0}, Lcom/polites/MoveAnimationListener;->onMove(FF)V

    :cond_3
    return p3
.end method
