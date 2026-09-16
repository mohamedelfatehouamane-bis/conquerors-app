.class public Lcom/gpc/polites/ZoomAnimation;
.super Ljava/lang/Object;
.source "ZoomAnimation.java"

# interfaces
.implements Lcom/gpc/polites/Animation;


# instance fields
.field private animationLengthMS:J

.field private firstFrame:Z

.field private scaleDiff:F

.field private startScale:F

.field private startX:F

.field private startY:F

.field private totalTime:J

.field private touchX:F

.field private touchY:F

.field private xDiff:F

.field private yDiff:F

.field private zoom:F

.field private zoomAnimationListener:Lcom/gpc/polites/ZoomAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/gpc/polites/ZoomAnimation;->firstFrame:Z

    const-wide/16 v0, 0xc8

    .line 41
    iput-wide v0, p0, Lcom/gpc/polites/ZoomAnimation;->animationLengthMS:J

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/gpc/polites/ZoomAnimation;->totalTime:J

    return-void
.end method


# virtual methods
.method public getAnimationLengthMS()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/gpc/polites/ZoomAnimation;->animationLengthMS:J

    return-wide v0
.end method

.method public getTouchX()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->touchX:F

    return v0
.end method

.method public getTouchY()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->touchY:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->zoom:F

    return v0
.end method

.method public getZoomAnimationListener()Lcom/gpc/polites/ZoomAnimationListener;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/gpc/polites/ZoomAnimation;->zoomAnimationListener:Lcom/gpc/polites/ZoomAnimationListener;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/gpc/polites/ZoomAnimation;->firstFrame:Z

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/gpc/polites/ZoomAnimation;->totalTime:J

    return-void
.end method

.method public setAnimationLengthMS(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/gpc/polites/ZoomAnimation;->animationLengthMS:J

    return-void
.end method

.method public setTouchX(F)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/gpc/polites/ZoomAnimation;->touchX:F

    return-void
.end method

.method public setTouchY(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/gpc/polites/ZoomAnimation;->touchY:F

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/gpc/polites/ZoomAnimation;->zoom:F

    return-void
.end method

.method public setZoomAnimationListener(Lcom/gpc/polites/ZoomAnimationListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/gpc/polites/ZoomAnimation;->zoomAnimationListener:Lcom/gpc/polites/ZoomAnimationListener;

    return-void
.end method

.method public update(Lcom/gpc/polites/GestureImageView;J)Z
    .locals 5

    .line 51
    iget-boolean v0, p0, Lcom/gpc/polites/ZoomAnimation;->firstFrame:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 52
    iput-boolean v2, p0, Lcom/gpc/polites/ZoomAnimation;->firstFrame:Z

    .line 54
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getImageX()F

    move-result v0

    iput v0, p0, Lcom/gpc/polites/ZoomAnimation;->startX:F

    .line 55
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getImageY()F

    move-result v0

    iput v0, p0, Lcom/gpc/polites/ZoomAnimation;->startY:F

    .line 56
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/gpc/polites/ZoomAnimation;->startScale:F

    .line 57
    iget v3, p0, Lcom/gpc/polites/ZoomAnimation;->zoom:F

    mul-float v3, v3, v0

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/gpc/polites/ZoomAnimation;->scaleDiff:F

    cmpl-float v0, v3, v1

    if-lez v0, :cond_0

    .line 61
    new-instance p1, Lcom/gpc/polites/VectorF;

    invoke-direct {p1}, Lcom/gpc/polites/VectorF;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    iget v3, p0, Lcom/gpc/polites/ZoomAnimation;->touchX:F

    iget v4, p0, Lcom/gpc/polites/ZoomAnimation;->touchY:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/gpc/polites/VectorF;->setStart(Landroid/graphics/PointF;)V

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    iget v3, p0, Lcom/gpc/polites/ZoomAnimation;->startX:F

    iget v4, p0, Lcom/gpc/polites/ZoomAnimation;->startY:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/gpc/polites/VectorF;->setEnd(Landroid/graphics/PointF;)V

    .line 67
    invoke-virtual {p1}, Lcom/gpc/polites/VectorF;->calculateAngle()F

    .line 70
    invoke-virtual {p1}, Lcom/gpc/polites/VectorF;->calculateLength()F

    move-result v0

    .line 73
    iget v3, p0, Lcom/gpc/polites/ZoomAnimation;->zoom:F

    mul-float v0, v0, v3

    iput v0, p1, Lcom/gpc/polites/VectorF;->length:F

    .line 76
    invoke-virtual {p1}, Lcom/gpc/polites/VectorF;->calculateEndPoint()V

    .line 78
    iget-object v0, p1, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/gpc/polites/ZoomAnimation;->startX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/gpc/polites/ZoomAnimation;->xDiff:F

    .line 79
    iget-object p1, p1, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->startY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/gpc/polites/ZoomAnimation;->yDiff:F

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getCenterX()F

    move-result v0

    iget v3, p0, Lcom/gpc/polites/ZoomAnimation;->startX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/gpc/polites/ZoomAnimation;->xDiff:F

    .line 83
    invoke-virtual {p1}, Lcom/gpc/polites/GestureImageView;->getCenterY()F

    move-result p1

    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->startY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/gpc/polites/ZoomAnimation;->yDiff:F

    .line 87
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/gpc/polites/ZoomAnimation;->totalTime:J

    add-long/2addr v3, p2

    iput-wide v3, p0, Lcom/gpc/polites/ZoomAnimation;->totalTime:J

    long-to-float p1, v3

    .line 89
    iget-wide p2, p0, Lcom/gpc/polites/ZoomAnimation;->animationLengthMS:J

    long-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    cmpl-float p2, p1, v1

    if-lez p2, :cond_2

    .line 95
    iget p2, p0, Lcom/gpc/polites/ZoomAnimation;->scaleDiff:F

    mul-float p2, p2, p1

    iget p3, p0, Lcom/gpc/polites/ZoomAnimation;->startScale:F

    add-float/2addr p2, p3

    .line 96
    iget p3, p0, Lcom/gpc/polites/ZoomAnimation;->xDiff:F

    mul-float p3, p3, p1

    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->startX:F

    add-float/2addr p3, v0

    .line 97
    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->yDiff:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->startY:F

    add-float/2addr p1, v0

    .line 99
    iget-object v0, p0, Lcom/gpc/polites/ZoomAnimation;->zoomAnimationListener:Lcom/gpc/polites/ZoomAnimationListener;

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0, p2, p3, p1}, Lcom/gpc/polites/ZoomAnimationListener;->onZoom(FFF)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 107
    :cond_3
    iget p1, p0, Lcom/gpc/polites/ZoomAnimation;->scaleDiff:F

    iget p2, p0, Lcom/gpc/polites/ZoomAnimation;->startScale:F

    add-float/2addr p1, p2

    .line 108
    iget p2, p0, Lcom/gpc/polites/ZoomAnimation;->xDiff:F

    iget p3, p0, Lcom/gpc/polites/ZoomAnimation;->startX:F

    add-float/2addr p2, p3

    .line 109
    iget p3, p0, Lcom/gpc/polites/ZoomAnimation;->yDiff:F

    iget v0, p0, Lcom/gpc/polites/ZoomAnimation;->startY:F

    add-float/2addr p3, v0

    .line 111
    iget-object v0, p0, Lcom/gpc/polites/ZoomAnimation;->zoomAnimationListener:Lcom/gpc/polites/ZoomAnimationListener;

    if-eqz v0, :cond_4

    .line 112
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/polites/ZoomAnimationListener;->onZoom(FFF)V

    .line 113
    iget-object p1, p0, Lcom/gpc/polites/ZoomAnimation;->zoomAnimationListener:Lcom/gpc/polites/ZoomAnimationListener;

    invoke-interface {p1}, Lcom/gpc/polites/ZoomAnimationListener;->onComplete()V

    :cond_4
    return v2
.end method
