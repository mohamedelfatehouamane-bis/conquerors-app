.class final Lcom/gpc/cropper/CropWindowMoveHandler;
.super Ljava/lang/Object;
.source "CropWindowMoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/cropper/CropWindowMoveHandler$Type;
    }
.end annotation


# static fields
.field private static final MATRIX:Landroid/graphics/Matrix;


# instance fields
.field private final mMaxCropHeight:F

.field private final mMaxCropWidth:F

.field private final mMinCropHeight:F

.field private final mMinCropWidth:F

.field private final mTouchOffset:Landroid/graphics/PointF;

.field private final mType:Lcom/gpc/cropper/CropWindowMoveHandler$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler;->MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/cropper/CropWindowMoveHandler$Type;Lcom/gpc/cropper/CropWindowHandler;FF)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    .line 76
    iput-object p1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mType:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 77
    invoke-virtual {p2}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result p1

    iput p1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    .line 78
    invoke-virtual {p2}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result p1

    iput p1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    .line 79
    invoke-virtual {p2}, Lcom/gpc/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result p1

    iput p1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    .line 80
    invoke-virtual {p2}, Lcom/gpc/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result p1

    iput p1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    .line 81
    invoke-virtual {p2}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/gpc/cropper/CropWindowMoveHandler;->calculateTouchOffset(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 3

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 636
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 639
    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1

    .line 640
    iget-object p4, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->y:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->y:F

    .line 643
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    .line 644
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    .line 648
    :cond_2
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 649
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    add-float/2addr p2, p4

    .line 653
    :cond_3
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 654
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    add-float/2addr p2, p4

    .line 657
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_5

    .line 658
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    :cond_5
    const/4 p4, 0x0

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 663
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    .line 666
    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float p5, p4, p5

    if-gez p5, :cond_6

    .line 667
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 668
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    .line 672
    :cond_6
    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_7

    .line 673
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 674
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 679
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    .line 680
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    .line 683
    iget p5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p5, p5, p7

    if-gez p5, :cond_9

    .line 684
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p1, Landroid/graphics/RectF;->right:F

    iget p7, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p5, p7

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 685
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    :cond_9
    if-eqz p8, :cond_a

    .line 689
    iget p5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p4

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p5, p4

    if-lez p4, :cond_a

    .line 690
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p7, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p7

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    .line 693
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 691
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 698
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2

    .line 730
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 373
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 376
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float v3, p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 380
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    cmpg-float v1, v1, p4

    if-gez v1, :cond_2

    .line 381
    iget p2, p3, Landroid/graphics/RectF;->left:F

    .line 385
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 386
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    sub-float/2addr p2, v1

    .line 390
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 391
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    sub-float/2addr p2, v1

    .line 394
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    cmpg-float p4, v1, p4

    if-gez p4, :cond_5

    .line 395
    iget p2, p3, Landroid/graphics/RectF;->left:F

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    .line 400
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 403
    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 404
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 405
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 409
    :cond_6
    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 410
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 411
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 416
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    .line 417
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    .line 420
    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p6, p4

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    .line 421
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p6, v0

    mul-float p6, p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 422
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_9
    if-eqz p7, :cond_a

    .line 426
    iget p6, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p6, p4

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 427
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p7, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p7

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    .line 430
    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 428
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 435
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method private adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2

    .line 706
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method private adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    .line 738
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p3

    sub-float/2addr v0, v1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 739
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 740
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 742
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 743
    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method private adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 3

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 461
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 464
    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1

    .line 465
    iget-object p4, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->x:F

    .line 469
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    .line 470
    iget p2, p3, Landroid/graphics/RectF;->right:F

    .line 474
    :cond_2
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 475
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    add-float/2addr p2, p4

    .line 479
    :cond_3
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 480
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    add-float/2addr p2, p4

    .line 484
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_5

    .line 485
    iget p2, p3, Landroid/graphics/RectF;->right:F

    :cond_5
    const/4 p4, 0x0

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 490
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    .line 493
    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float p5, p4, p5

    if-gez p5, :cond_6

    .line 494
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 495
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    .line 499
    :cond_6
    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_7

    .line 500
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 501
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 506
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    .line 507
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    .line 510
    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p5, p5, p7

    if-gez p5, :cond_9

    .line 511
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    iget p7, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p5, p7

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 512
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    :cond_9
    if-eqz p8, :cond_a

    .line 516
    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p4

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p5, p4

    if-lez p4, :cond_a

    .line 517
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p7, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p7

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    .line 520
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 518
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 525
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private adjustRightByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2

    .line 722
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 549
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 552
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 556
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    cmpg-float v1, v1, p4

    if-gez v1, :cond_2

    .line 557
    iget p2, p3, Landroid/graphics/RectF;->top:F

    .line 561
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 562
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    sub-float/2addr p2, v1

    .line 566
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 567
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    sub-float/2addr p2, v1

    .line 570
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    cmpg-float p4, v1, p4

    if-gez p4, :cond_5

    .line 571
    iget p2, p3, Landroid/graphics/RectF;->top:F

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    .line 576
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 579
    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 580
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 581
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 585
    :cond_6
    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 586
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 587
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 592
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    .line 595
    iget p6, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p6, p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    .line 596
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p6, v0

    div-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 597
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_9
    if-eqz p7, :cond_a

    .line 601
    iget p6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p6, p4

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 602
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p7, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p7

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    .line 605
    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 603
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 610
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method private adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    .line 752
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 753
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 754
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 756
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 757
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method private adjustTopByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2

    .line 714
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method private static calculateAspectRatio(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    return p2
.end method

.method private calculateTouchOffset(Landroid/graphics/RectF;FF)V
    .locals 2

    .line 150
    sget-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$1;->$SwitchMap$com$gpc$cropper$CropWindowMoveHandler$Type:[I

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mType:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    .line 184
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v1, v0, p2

    .line 185
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    goto :goto_2

    .line 181
    :pswitch_1
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 176
    :pswitch_2
    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 173
    :pswitch_3
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 168
    :pswitch_4
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_1
    sub-float/2addr p1, p2

    move v1, p1

    goto :goto_0

    .line 164
    :pswitch_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p2

    .line 165
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 160
    :pswitch_6
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p2

    .line 161
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 156
    :pswitch_7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p2

    .line 157
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 152
    :pswitch_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p2

    .line 153
    iget p1, p1, Landroid/graphics/RectF;->top:F

    :goto_2
    sub-float/2addr p1, p3

    .line 191
    :goto_3
    iget-object p2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 192
    iget-object p2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->y:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private moveCenter(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 5

    .line 200
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p2, v0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p3, v0

    .line 202
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3f866666    # 1.05f

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    int-to-float p5, p5

    cmpl-float p5, v0, p5

    if-gtz p5, :cond_0

    iget p5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p2

    iget v0, p4, Landroid/graphics/RectF;->left:F

    cmpg-float p5, p5, v0

    if-ltz p5, :cond_0

    iget p5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p5, p2

    iget v0, p4, Landroid/graphics/RectF;->right:F

    cmpl-float p5, p5, v0

    if-lez p5, :cond_1

    :cond_0
    div-float/2addr p2, v2

    .line 207
    iget-object p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, p5, Landroid/graphics/PointF;->x:F

    div-float v4, p2, v1

    sub-float/2addr v0, v4

    iput v0, p5, Landroid/graphics/PointF;->x:F

    .line 209
    :cond_1
    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p3

    cmpg-float p5, p5, v3

    if-ltz p5, :cond_2

    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p5, p3

    int-to-float p6, p6

    cmpl-float p5, p5, p6

    if-gtz p5, :cond_2

    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p3

    iget p6, p4, Landroid/graphics/RectF;->top:F

    cmpg-float p5, p5, p6

    if-ltz p5, :cond_2

    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p5, p3

    iget p6, p4, Landroid/graphics/RectF;->bottom:F

    cmpl-float p5, p5, p6

    if-lez p5, :cond_3

    :cond_2
    div-float/2addr p3, v2

    .line 214
    iget-object p5, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget p6, p5, Landroid/graphics/PointF;->y:F

    div-float v0, p3, v1

    sub-float/2addr p6, v0

    iput p6, p5, Landroid/graphics/PointF;->y:F

    .line 216
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 217
    invoke-direct {p0, p1, p4, p7}, Lcom/gpc/cropper/CropWindowMoveHandler;->snapEdgesToBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private moveSizeWithFixedAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V
    .locals 9

    .line 276
    sget-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$1;->$SwitchMap$com$gpc$cropper$CropWindowMoveHandler$Type:[I

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mType:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 326
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v5, v6

    .line 327
    invoke-direct {p0, p1, p4, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :pswitch_1
    move/from16 v5, p8

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v6, v5

    move/from16 v5, p7

    .line 322
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v5, v6

    .line 323
    invoke-direct {p0, p1, p4, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :pswitch_2
    move/from16 v5, p8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    .line 318
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 319
    invoke-direct {p0, p1, p4, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :pswitch_3
    move/from16 v5, p8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    .line 314
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 315
    invoke-direct {p0, p1, p4, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :pswitch_4
    move/from16 v5, p8

    .line 305
    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7, p2, p3}, Lcom/gpc/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p6

    move v6, v5

    move/from16 v5, p7

    .line 306
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v5, v6

    .line 307
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRightByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v6, v5

    move/from16 v5, p7

    .line 309
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v5, v6

    .line 310
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :pswitch_5
    move/from16 v5, p8

    .line 296
    iget p5, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p2, p5, v3, p3}, Lcom/gpc/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result p5

    cmpg-float p5, p5, v5

    if-gez p5, :cond_1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p6

    move v6, v5

    move/from16 v5, p7

    .line 297
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v5, v6

    .line 298
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    .line 300
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 301
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :pswitch_6
    move/from16 v5, p8

    .line 287
    iget p6, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p6, p3, p2, v3}, Lcom/gpc/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result p6

    cmpg-float p6, p6, v5

    if-gez p6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    .line 288
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 289
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRightByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v6, v5

    move/from16 v5, p7

    .line 291
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v5, v6

    .line 292
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTopByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :pswitch_7
    move/from16 v5, p8

    .line 278
    iget p5, p1, Landroid/graphics/RectF;->right:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p3, p5, p6}, Lcom/gpc/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result p5

    cmpg-float p5, p5, v5

    if-gez p5, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    .line 279
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 280
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    .line 282
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 283
    invoke-direct {p0, p1, v5}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTopByAspectRatio(Landroid/graphics/RectF;F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private moveSizeWithFreeAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 10

    .line 227
    sget-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$1;->$SwitchMap$com$gpc$cropper$CropWindowMoveHandler$Type:[I

    iget-object v2, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mType:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 254
    invoke-direct/range {v1 .. v9}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    return-void

    :pswitch_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    .line 251
    invoke-direct/range {v1 .. v9}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    return-void

    :pswitch_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    .line 248
    invoke-direct/range {v1 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    return-void

    :pswitch_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p7

    .line 245
    invoke-direct/range {v1 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    return-void

    :pswitch_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 241
    invoke-direct/range {v1 .. v9}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v3, p2

    move v5, p5

    .line 242
    invoke-direct/range {v1 .. v9}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    return-void

    :pswitch_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 237
    invoke-direct/range {v1 .. v9}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    move v3, p2

    move/from16 v5, p7

    .line 238
    invoke-direct/range {v1 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    return-void

    :pswitch_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    .line 233
    invoke-direct/range {v1 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/4 v9, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v5, p5

    move/from16 v6, p7

    .line 234
    invoke-direct/range {v1 .. v9}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    return-void

    :pswitch_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    .line 229
    invoke-direct/range {v1 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    move v3, p2

    .line 230
    invoke-direct/range {v1 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private snapEdgesToBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    .line 338
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p3

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 339
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 341
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 342
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 344
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 345
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 347
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    cmpl-float p3, v0, v1

    if-lez p3, :cond_3

    .line 348
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p3

    invoke-virtual {p1, v2, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    return-void
.end method


# virtual methods
.method public move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V
    .locals 9

    .line 122
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float v2, p2, v1

    .line 123
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float v3, p3, v1

    .line 125
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowMoveHandler;->mType:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    sget-object v4, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    if-ne v1, v4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->moveCenter(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    return-void

    :cond_0
    if-eqz p8, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    .line 129
    invoke-direct/range {v0 .. v8}, Lcom/gpc/cropper/CropWindowMoveHandler;->moveSizeWithFixedAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 132
    invoke-direct/range {v0 .. v7}, Lcom/gpc/cropper/CropWindowMoveHandler;->moveSizeWithFreeAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    return-void
.end method
