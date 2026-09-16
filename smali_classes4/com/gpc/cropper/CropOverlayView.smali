.class public Lcom/gpc/cropper/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;,
        Lcom/gpc/cropper/CropOverlayView$ScaleListener;
    }
.end annotation


# instance fields
.field private initializedCropWindow:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderCornerLength:F

.field private mBorderCornerOffset:F

.field private mBorderCornerPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBoundsPoints:[F

.field private final mCalcBounds:Landroid/graphics/RectF;

.field private mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

.field private mCropWindowChangeListener:Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;

.field private final mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

.field private mInitialCropWindowPaddingRatio:F

.field private final mInitialCropWindowRect:Landroid/graphics/Rect;

.field private mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

.field private mMultiTouchEnabled:Z

.field private mOriginalLayerType:Ljava/lang/Integer;

.field private mPath:Landroid/graphics/Path;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchRadius:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/gpc/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Lcom/gpc/cropper/CropWindowHandler;

    invoke-direct {p1}, Lcom/gpc/cropper/CropWindowHandler;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 87
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    const/16 p1, 0x8

    .line 92
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 97
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 161
    iget p1, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    iget p2, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 176
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$100(Lcom/gpc/cropper/CropOverlayView;)Lcom/gpc/cropper/CropWindowHandler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    return-object p0
.end method

.method private calculateBounds(Landroid/graphics/RectF;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1000
    iget-object v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v2

    .line 1001
    iget-object v3, v0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v3}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    .line 1002
    iget-object v4, v0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v4}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v4

    .line 1003
    iget-object v5, v0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v5}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v5

    .line 1005
    invoke-direct {v0}, Lcom/gpc/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 1006
    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return v7

    .line 1009
    :cond_0
    iget-object v6, v0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v7, v6, v7

    const/4 v8, 0x1

    .line 1010
    aget v9, v6, v8

    const/4 v10, 0x4

    .line 1011
    aget v10, v6, v10

    const/4 v11, 0x5

    .line 1012
    aget v11, v6, v11

    const/4 v12, 0x6

    .line 1013
    aget v12, v6, v12

    const/4 v13, 0x7

    .line 1014
    aget v13, v6, v13

    const/4 v14, 0x3

    const/4 v15, 0x2

    cmpg-float v16, v13, v9

    if-gez v16, :cond_2

    .line 1017
    aget v14, v6, v14

    cmpg-float v16, v9, v14

    if-gez v16, :cond_1

    .line 1020
    aget v7, v6, v15

    move v6, v10

    move v10, v7

    move v7, v6

    move v9, v11

    move v6, v12

    move v11, v14

    move v14, v13

    goto :goto_0

    .line 1029
    :cond_1
    aget v6, v6, v15

    move/from16 v20, v7

    move v7, v6

    move v6, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move v11, v9

    move v9, v14

    move/from16 v14, v20

    goto :goto_0

    .line 1032
    :cond_2
    aget v14, v6, v14

    cmpl-float v16, v9, v14

    if-lez v16, :cond_3

    .line 1033
    aget v6, v6, v15

    move v10, v12

    move v11, v13

    goto :goto_0

    :cond_3
    move v6, v7

    move v14, v9

    move v7, v12

    move v9, v13

    :goto_0
    sub-float/2addr v9, v14

    sub-float/2addr v7, v6

    div-float/2addr v9, v7

    const/high16 v7, -0x40800000    # -1.0f

    div-float/2addr v7, v9

    mul-float v12, v9, v6

    sub-float v12, v14, v12

    mul-float v6, v6, v7

    sub-float/2addr v14, v6

    mul-float v6, v9, v10

    sub-float v6, v11, v6

    mul-float v10, v10, v7

    sub-float/2addr v11, v10

    .line 1048
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v13, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v13

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget v15, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v15

    div-float/2addr v10, v13

    neg-float v13, v10

    .line 1050
    iget v15, v1, Landroid/graphics/RectF;->top:F

    const/16 v16, 0x1

    iget v8, v1, Landroid/graphics/RectF;->left:F

    mul-float v8, v8, v10

    sub-float/2addr v15, v8

    .line 1051
    iget v8, v1, Landroid/graphics/RectF;->top:F

    move/from16 v17, v6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    mul-float v6, v6, v13

    sub-float/2addr v8, v6

    sub-float v6, v15, v12

    sub-float v18, v9, v10

    div-float v6, v6, v18

    move/from16 v19, v6

    .line 1053
    iget v6, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v19, v6

    if-gez v6, :cond_4

    move/from16 v6, v19

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v6, v15, v14

    sub-float v10, v7, v10

    div-float/2addr v6, v10

    .line 1054
    iget v10, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v6, v10

    if-gez v10, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v6, v8, v11

    sub-float v10, v7, v13

    div-float/2addr v6, v10

    move/from16 v19, v6

    .line 1055
    iget v6, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v19, v6

    if-gez v6, :cond_6

    move/from16 v6, v19

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v6, v8, v14

    div-float/2addr v6, v10

    .line 1056
    iget v10, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v6, v10

    if-lez v10, :cond_7

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_4
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v8, v8, v17

    sub-float v6, v9, v13

    div-float/2addr v8, v6

    .line 1057
    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v8, v6

    if-lez v6, :cond_8

    goto :goto_5

    :cond_8
    move v8, v4

    :goto_5
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v15, v15, v17

    div-float v15, v15, v18

    .line 1058
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v15, v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v15, v4

    :goto_6
    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v4, v9, v2

    add-float/2addr v4, v12

    mul-float v6, v7, v1

    add-float/2addr v6, v14

    .line 1060
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v7, v7, v2

    add-float/2addr v7, v11

    mul-float v9, v9, v1

    add-float v9, v9, v17

    .line 1061
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1063
    iget-object v5, v0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v2, v5, Landroid/graphics/RectF;->left:F

    .line 1064
    iget-object v2, v0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1065
    iget-object v2, v0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 1066
    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    return v16
.end method

.method private callOnCropWindowChanged(Z)V
    .locals 2

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v0, :cond_0

    .line 1084
    invoke-interface {v0, p1}, Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1087
    const-string v0, "AIC"

    const-string v1, "Exception in crop window changed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    .line 687
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 690
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 691
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 692
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 694
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    sget-object v2, Lcom/gpc/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;

    const/16 v3, 0x1a

    if-ne v1, v2, :cond_2

    .line 695
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 702
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v2, v2, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 703
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x3

    aget v2, v2, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 704
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x4

    aget v8, v2, v8

    const/4 v9, 0x5

    aget v2, v2, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 705
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x6

    aget v8, v2, v8

    const/4 v9, 0x7

    aget v2, v2, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 706
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 709
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 710
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-static {p1, v1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    goto :goto_0

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 714
    :goto_0
    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 715
    iget-object v8, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    move-object v3, p1

    move p1, v7

    .line 696
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 697
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v9, v6

    .line 698
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 699
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    move v9, v6

    move-object v6, p1

    .line 719
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 723
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 725
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 726
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 727
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_3

    .line 728
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-static {v6, p1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    goto :goto_1

    .line 730
    :cond_3
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v6, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 732
    :goto_1
    iget-object v8, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v6

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 733
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 791
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 792
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 794
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    sget-object v2, Lcom/gpc/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;

    if-ne v0, v2, :cond_0

    .line 796
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 808
    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 811
    :goto_0
    iget-object v3, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    .line 816
    iget-object v6, v0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    sget-object v7, Lcom/gpc/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;

    if-ne v6, v7, :cond_1

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerOffset:F

    :cond_1
    add-float/2addr v2, v5

    .line 818
    iget-object v6, v0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 819
    invoke-virtual {v6, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    sub-float/2addr v3, v1

    div-float/2addr v3, v4

    add-float/2addr v5, v3

    .line 825
    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float v8, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->top:F

    sub-float v9, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float v10, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v1, v2

    iget-object v12, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 831
    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float v14, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->top:F

    sub-float v15, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v16, v1, v2

    iget v1, v6, Landroid/graphics/RectF;->top:F

    sub-float v17, v1, v3

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 839
    iget v1, v6, Landroid/graphics/RectF;->right:F

    add-float v14, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->top:F

    sub-float v15, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->right:F

    add-float v16, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v17, v1, v2

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 845
    iget v1, v6, Landroid/graphics/RectF;->right:F

    add-float v14, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->top:F

    sub-float v15, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v16, v1, v2

    iget v1, v6, Landroid/graphics/RectF;->top:F

    sub-float v17, v1, v3

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 853
    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float v14, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    add-float v15, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float v16, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v17, v1, v2

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 859
    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float v14, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    add-float v15, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v16, v1, v2

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    add-float v17, v1, v3

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 867
    iget v1, v6, Landroid/graphics/RectF;->right:F

    add-float v14, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    add-float v15, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->right:F

    add-float v16, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v17, v1, v2

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 873
    iget v1, v6, Landroid/graphics/RectF;->right:F

    add-float v14, v1, v5

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    add-float v15, v1, v3

    iget v1, v6, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v16, v1, v2

    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    add-float v17, v1, v3

    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 742
    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 743
    iget-object v1, v0, Lcom/gpc/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 744
    :goto_0
    iget-object v2, v0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 745
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 747
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 748
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    .line 750
    iget-object v4, v0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    sget-object v6, Lcom/gpc/cropper/CropImageView$CropShape;->OVAL:Lcom/gpc/cropper/CropImageView$CropShape;

    if-ne v4, v6, :cond_1

    .line 752
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v4, v1

    .line 753
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v7, v1

    .line 756
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v9, v1, v3

    .line 757
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    float-to-double v10, v7

    sub-float v3, v4, v3

    div-float/2addr v3, v4

    float-to-double v12, v3

    .line 758
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    double-to-float v3, v10

    .line 759
    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    sub-float v10, v6, v3

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    add-float v12, v6, v3

    iget-object v13, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v11, v9

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 760
    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    sub-float v12, v6, v3

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    add-float v14, v6, v3

    iget-object v15, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v13, v1

    move-object/from16 v10, p1

    move v11, v1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 763
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v16, v1, v5

    .line 764
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    float-to-double v8, v4

    sub-float v3, v7, v5

    div-float/2addr v3, v7

    float-to-double v5, v3

    .line 765
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v8, v8, v5

    double-to-float v3, v8

    .line 766
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    sub-float v15, v5, v3

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    add-float v17, v5, v3

    iget-object v5, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move/from16 v18, v16

    move-object/from16 v14, p1

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 767
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    sub-float v15, v5, v3

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v17, v2, v3

    iget-object v2, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move/from16 v18, v1

    move/from16 v16, v1

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 771
    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v15, v1, v3

    .line 772
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    .line 773
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move/from16 v17, v15

    move-object/from16 v14, p1

    move/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 774
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move/from16 v17, v1

    move v15, v1

    move/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 777
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v16, v1, v5

    .line 778
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    .line 779
    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move/from16 v18, v16

    move/from16 v17, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 780
    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move/from16 v18, v1

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private fixCropWindowRectByRules(Landroid/graphics/RectF;)V
    .locals 6

    .line 602
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 604
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 605
    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 607
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 609
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 610
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 612
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 613
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 614
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 615
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 617
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 618
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 619
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 620
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 623
    :cond_3
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    .line 624
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 625
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 626
    iget-object v3, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 627
    iget-object v3, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 628
    iget-object v4, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 629
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    .line 630
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 632
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 633
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 635
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 636
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 638
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 639
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 642
    :cond_7
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v0, v3

    if-lez v5, :cond_9

    .line 643
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 644
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 645
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 646
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    return-void

    .line 648
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 649
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 650
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    return-void
.end method

.method private static getNewPaint(I)Landroid/graphics/Paint;
    .locals 1

    .line 886
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 887
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private static getNewPaintOrNull(FI)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 896
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 897
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 898
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 899
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 900
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCropWindow()V
    .locals 10

    .line 513
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 514
    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 515
    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 516
    iget-object v3, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v3}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 522
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    .line 525
    iput-boolean v5, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    .line 527
    iget v5, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v6, v2, v0

    mul-float v7, v5, v6

    sub-float v8, v3, v1

    mul-float v5, v5, v8

    .line 530
    iget-object v9, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_1

    .line 532
    iget-object v5, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    .line 533
    invoke-virtual {v6}, Lcom/gpc/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 534
    iget-object v5, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/gpc/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 535
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 536
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/gpc/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 537
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 538
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/gpc/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 542
    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 543
    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 544
    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 545
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 547
    :cond_1
    iget-boolean v9, p0, Lcom/gpc/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v2, v0

    if-lez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    .line 552
    iget v8, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    add-float/2addr v1, v5

    .line 554
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    .line 555
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 557
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 560
    iget v1, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 563
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    .line 564
    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    .line 567
    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 568
    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v0, v7

    .line 572
    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    .line 573
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 575
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 578
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    .line 579
    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    .line 582
    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 583
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v0, v7

    .line 587
    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    .line 588
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v7

    .line 589
    iput v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    .line 590
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 593
    :goto_0
    invoke-direct {p0, v4}, Lcom/gpc/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 595
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0, v4}, Lcom/gpc/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private isNonStraightAngleRotated()Z
    .locals 5

    .line 1075
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x6

    aget v3, v0, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v0, v0, v4

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private onActionDown(FF)V
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    iget v1, p0, Lcom/gpc/cropper/CropOverlayView;->mTouchRadius:F

    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/gpc/cropper/CropWindowHandler;->getMoveHandler(FFFLcom/gpc/cropper/CropImageView$CropShape;)Lcom/gpc/cropper/CropWindowMoveHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

    if-eqz p1, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method private onActionMove(FF)V
    .locals 12

    .line 964
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 965
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mSnapRadius:F

    .line 966
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 968
    invoke-direct {p0, v3}, Lcom/gpc/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    move v9, v0

    .line 972
    :goto_0
    iget-object v2, p0, Lcom/gpc/cropper/CropOverlayView;->mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

    iget-object v6, p0, Lcom/gpc/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v7, p0, Lcom/gpc/cropper/CropOverlayView;->mViewWidth:I

    iget v8, p0, Lcom/gpc/cropper/CropOverlayView;->mViewHeight:I

    iget-boolean v10, p0, Lcom/gpc/cropper/CropOverlayView;->mFixAspectRatio:Z

    iget v11, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v11}, Lcom/gpc/cropper/CropWindowMoveHandler;->move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V

    .line 982
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {p1, v3}, Lcom/gpc/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    .line 983
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 984
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method private onActionUp()V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

    const/4 v0, 0x0

    .line 953
    invoke-direct {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fixCurrentCropWindowRect()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 224
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v1, v0}, Lcom/gpc/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAspectRatioX()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioX:I

    return v0
.end method

.method public getAspectRatioY()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioY:I

    return v0
.end method

.method public getCropShape()Lcom/gpc/cropper/CropImageView$CropShape;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getGuidelines()Lcom/gpc/cropper/CropImageView$Guidelines;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mGuidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    return-object v0
.end method

.method public getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->mFixAspectRatio:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 662
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 667
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mGuidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/gpc/cropper/CropImageView$Guidelines;->ON:Lcom/gpc/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_0

    .line 670
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mGuidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/gpc/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/gpc/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mMoveHandler:Lcom/gpc/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 673
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 677
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 910
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 911
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 915
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    .line 925
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/gpc/cropper/CropOverlayView;->onActionMove(FF)V

    .line 926
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 921
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 922
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->onActionUp()V

    return v2

    .line 917
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/gpc/cropper/CropOverlayView;->onActionDown(FF)V

    return v2

    :cond_4
    return v1
.end method

.method public resetCropOverlayView()V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/gpc/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 257
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    .line 258
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public resetCropWindowRect()V
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    .line 462
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 350
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioX:I

    if-eq v0, p1, :cond_0

    .line 351
    iput p1, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    .line 352
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 354
    iget-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    .line 356
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 348
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 377
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioY:I

    if-eq v0, p1, :cond_0

    .line 378
    iput p1, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioY:I

    .line 379
    iget v0, p0, Lcom/gpc/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/gpc/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 381
    iget-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    .line 383
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBounds([FII)V
    .locals 4

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/gpc/cropper/CropOverlayView;->mBoundsPoints:[F

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :goto_0
    iput p2, p0, Lcom/gpc/cropper/CropOverlayView;->mViewWidth:I

    .line 243
    iput p3, p0, Lcom/gpc/cropper/CropOverlayView;->mViewHeight:I

    .line 244
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 246
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    return-void
.end method

.method public setCropShape(Lcom/gpc/cropper/CropImageView$CropShape;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_0

    .line 274
    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    .line 290
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropWindowChangeListener(Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;

    return-void
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/cropper/CropWindowHandler;->setCropWindowLimits(FFFF)V

    return-void
.end method

.method public setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->mFixAspectRatio:Z

    .line 329
    iget-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    .line 331
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/gpc/cropper/CropImageView$Guidelines;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mGuidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    .line 307
    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mGuidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    .line 308
    iget-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInitialAttributeValues(Lcom/gpc/cropper/CropImageOptions;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropWindowHandler;->setInitialAttributeValues(Lcom/gpc/cropper/CropImageOptions;)V

    .line 475
    iget-object v0, p1, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setCropShape(Lcom/gpc/cropper/CropImageView$CropShape;)V

    .line 477
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 479
    iget-object v0, p1, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setGuidelines(Lcom/gpc/cropper/CropImageView$Guidelines;)V

    .line 481
    iget-boolean v0, p1, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 483
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 485
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 487
    iget-boolean v0, p1, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    .line 489
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/gpc/cropper/CropOverlayView;->mTouchRadius:F

    .line 491
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    .line 493
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    iget v1, p1, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    invoke-static {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 495
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    iput v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerOffset:F

    .line 496
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    iput v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerLength:F

    .line 497
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    iget v1, p1, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    .line 498
    invoke-static {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 500
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    iget v1, p1, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    invoke-static {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 502
    iget p1, p1, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    invoke-static {p1}, Lcom/gpc/cropper/CropOverlayView;->getNewPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/gpc/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 449
    iget-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/gpc/cropper/CropOverlayView;->initCropWindow()V

    .line 451
    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    const/4 p1, 0x0

    .line 452
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    :cond_1
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/gpc/cropper/CropOverlayView;->mCropWindowHandler:Lcom/gpc/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    return-void
.end method

.method public setMultiTouchEnabled(Z)Z
    .locals 3

    .line 401
    iget-boolean v0, p0, Lcom/gpc/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 402
    iput-boolean p1, p0, Lcom/gpc/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 404
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/gpc/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/gpc/cropper/CropOverlayView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gpc/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/gpc/cropper/CropOverlayView;Lcom/gpc/cropper/CropOverlayView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/gpc/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setSnapRadius(F)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/gpc/cropper/CropOverlayView;->mSnapRadius:F

    return-void
.end method
