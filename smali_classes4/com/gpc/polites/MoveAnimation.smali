.class public Lcom/gpc/polites/MoveAnimation;
.super Ljava/lang/Object;
.source "MoveAnimation.java"

# interfaces
.implements Lcom/gpc/polites/Animation;


# instance fields
.field private animationTimeMS:J

.field private firstFrame:Z

.field private moveAnimationListener:Lcom/gpc/polites/MoveAnimationListener;

.field private startX:F

.field private startY:F

.field private targetX:F

.field private targetY:F

.field private totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/gpc/polites/MoveAnimation;->firstFrame:Z

    const-wide/16 v0, 0x64

    .line 31
    iput-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->animationTimeMS:J

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->totalTime:J

    return-void
.end method


# virtual methods
.method public getAnimationTimeMS()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->animationTimeMS:J

    return-wide v0
.end method

.method public getTargetX()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/gpc/polites/MoveAnimation;->targetX:F

    return v0
.end method

.method public getTargetY()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/gpc/polites/MoveAnimation;->targetY:F

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/gpc/polites/MoveAnimation;->firstFrame:Z

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->totalTime:J

    return-void
.end method

.method public setAnimationTimeMS(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/gpc/polites/MoveAnimation;->animationTimeMS:J

    return-void
.end method

.method public setMoveAnimationListener(Lcom/gpc/polites/MoveAnimationListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/gpc/polites/MoveAnimation;->moveAnimationListener:Lcom/gpc/polites/MoveAnimationListener;

    return-void
.end method

.method public setTargetX(F)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gpc/polites/MoveAnimation;->targetX:F

    return-void
.end method

.method public setTargetY(F)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/gpc/polites/MoveAnimation;->targetY:F

    return-void
.end method

.method public update(Lcom/gpc/polites/GestureImageView;J)Z
    .locals 3

    .line 41
    iget-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->totalTime:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->totalTime:J

    .line 43
    iget-boolean p2, p0, Lcom/gpc/polites/MoveAnimation;->firstFrame:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 44
    iput-boolean p3, p0, Lcom/gpc/polites/MoveAnimation;->firstFrame:Z

    .line 45
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getImageX()F

    move-result p2

    iput p2, p0, Lcom/gpc/polites/MoveAnimation;->startX:F

    .line 46
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getImageY()F

    move-result p1

    iput p1, p0, Lcom/gpc/polites/MoveAnimation;->startY:F

    .line 49
    :cond_0
    iget-wide p1, p0, Lcom/gpc/polites/MoveAnimation;->totalTime:J

    iget-wide v0, p0, Lcom/gpc/polites/MoveAnimation;->animationTimeMS:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 53
    iget p2, p0, Lcom/gpc/polites/MoveAnimation;->targetX:F

    iget p3, p0, Lcom/gpc/polites/MoveAnimation;->startX:F

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    .line 54
    iget p3, p0, Lcom/gpc/polites/MoveAnimation;->targetY:F

    iget v0, p0, Lcom/gpc/polites/MoveAnimation;->startY:F

    sub-float/2addr p3, v0

    mul-float p3, p3, p1

    add-float/2addr p3, v0

    .line 56
    iget-object p1, p0, Lcom/gpc/polites/MoveAnimation;->moveAnimationListener:Lcom/gpc/polites/MoveAnimationListener;

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1, p2, p3}, Lcom/gpc/polites/MoveAnimationListener;->onMove(FF)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/gpc/polites/MoveAnimation;->moveAnimationListener:Lcom/gpc/polites/MoveAnimationListener;

    if-eqz p1, :cond_3

    .line 63
    iget p2, p0, Lcom/gpc/polites/MoveAnimation;->targetX:F

    iget v0, p0, Lcom/gpc/polites/MoveAnimation;->targetY:F

    invoke-interface {p1, p2, v0}, Lcom/gpc/polites/MoveAnimationListener;->onMove(FF)V

    :cond_3
    return p3
.end method
