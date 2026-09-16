.class public Lcom/gpc/polites/VectorF;
.super Ljava/lang/Object;
.source "VectorF.java"


# instance fields
.field public angle:F

.field public final end:Landroid/graphics/PointF;

.field public length:F

.field public final start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public calculateAngle()F
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/gpc/polites/MathUtils;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iput v0, p0, Lcom/gpc/polites/VectorF;->angle:F

    return v0
.end method

.method public calculateEndPoint()V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v1, p0, Lcom/gpc/polites/VectorF;->angle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget v3, p0, Lcom/gpc/polites/VectorF;->length:F

    float-to-double v3, v3

    mul-double v1, v1, v3

    iget-object v3, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 31
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v1, p0, Lcom/gpc/polites/VectorF;->angle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget v3, p0, Lcom/gpc/polites/VectorF;->length:F

    float-to-double v3, v3

    mul-double v1, v1, v3

    iget-object v3, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public calculateLength()F
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/gpc/polites/MathUtils;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iput v0, p0, Lcom/gpc/polites/VectorF;->length:F

    return v0
.end method

.method public set(Landroid/view/MotionEvent;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 46
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 47
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 48
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public setEnd(Landroid/graphics/PointF;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 41
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->end:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public setStart(Landroid/graphics/PointF;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 36
    iget-object v0, p0, Lcom/gpc/polites/VectorF;->start:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method
