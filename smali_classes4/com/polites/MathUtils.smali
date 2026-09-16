.class public Lcom/polites/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angle(FFFF)F
    .locals 2

    sub-float/2addr p3, p1

    float-to-double v0, p3

    sub-float/2addr p2, p0

    float-to-double p0, p2

    .line 73
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 69
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, v1, p1}, Lcom/polites/MathUtils;->angle(FFFF)F

    move-result p0

    return p0
.end method

.method public static distance(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 30
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 31
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    mul-float v0, v0, v0

    mul-float p0, p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distance(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static midpoint(FFFFLandroid/graphics/PointF;)V
    .locals 0

    add-float/2addr p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    .line 50
    iput p0, p4, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    .line 51
    iput p1, p4, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static midpoint(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V
    .locals 4

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 45
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    .line 46
    invoke-static {v1, v0, v3, p0, p1}, Lcom/polites/MathUtils;->midpoint(FFFFLandroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 11

    .line 60
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 61
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 62
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 63
    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-double v3, p3

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    sub-float/2addr v0, v2

    float-to-double v7, v0

    mul-double v5, v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    sub-float/2addr v1, p2

    float-to-double v0, v1

    mul-double v9, v9, v0

    sub-double/2addr v5, v9

    float-to-double v9, v2

    add-double/2addr v5, v9

    double-to-float p3, v5

    iput p3, p1, Landroid/graphics/PointF;->x:F

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    add-double/2addr v5, v2

    float-to-double p2, p2

    add-double/2addr v5, p2

    double-to-float p2, v5

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method
