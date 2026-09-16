.class final Lcom/gpc/cropper/CropWindowHandler;
.super Ljava/lang/Object;
.source "CropWindowHandler.java"


# instance fields
.field private final mEdges:Landroid/graphics/RectF;

.field private final mGetEdges:Landroid/graphics/RectF;

.field private mMaxCropResultHeight:F

.field private mMaxCropResultWidth:F

.field private mMaxCropWindowHeight:F

.field private mMaxCropWindowWidth:F

.field private mMinCropResultHeight:F

.field private mMinCropResultWidth:F

.field private mMinCropWindowHeight:F

.field private mMinCropWindowWidth:F

.field private mScaleFactorHeight:F

.field private mScaleFactorWidth:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 87
    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return-void
.end method

.method private focusCenter()Z
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/gpc/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getOvalPressedMoveType(FF)Lcom/gpc/cropper/CropWindowMoveHandler$Type;
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 292
    iget-object v2, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    .line 293
    iget-object v3, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    .line 295
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    .line 296
    iget-object v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    .line 297
    iget-object v5, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float v0, v0, v4

    add-float/2addr v5, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_0

    .line 302
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    :cond_0
    cmpg-float p1, p2, v5

    if-gez p1, :cond_1

    .line 304
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 306
    :cond_1
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    :cond_2
    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    cmpg-float p1, p2, v1

    if-gez p1, :cond_3

    .line 310
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    :cond_3
    cmpg-float p1, p2, v5

    if-gez p1, :cond_4

    .line 312
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 314
    :cond_4
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    :cond_5
    cmpg-float p1, p2, v1

    if-gez p1, :cond_6

    .line 318
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    :cond_6
    cmpg-float p1, p2, v5

    if-gez p1, :cond_7

    .line 320
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 322
    :cond_7
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1
.end method

.method private getRectanglePressedMoveType(FFF)Lcom/gpc/cropper/CropWindowMoveHandler$Type;
    .locals 7

    .line 233
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/gpc/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/gpc/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/gpc/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/gpc/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Lcom/gpc/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result p1

    move v0, v1

    move v1, v2

    if-eqz p1, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/gpc/cropper/CropWindowHandler;->focusCenter()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 247
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 248
    :cond_4
    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->top:F

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/gpc/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 250
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/gpc/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 253
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 254
    :cond_6
    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/gpc/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 256
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 257
    :cond_7
    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/gpc/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 259
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    .line 260
    :cond_8
    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/gpc/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 262
    invoke-direct {p0}, Lcom/gpc/cropper/CropWindowHandler;->focusCenter()Z

    move-result p1

    if-nez p1, :cond_9

    .line 263
    sget-object p1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private static isInCenterTargetZone(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInCornerTargetZone(FFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 341
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    sub-float/2addr p1, p4

    .line 357
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 373
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getMaxCropHeight()F
    .locals 3

    .line 123
    iget v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    iget v2, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxCropWidth()F
    .locals 3

    .line 116
    iget v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    iget v2, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMinCropHeight()F
    .locals 3

    .line 109
    iget v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropResultHeight:F

    iget v2, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMinCropWidth()F
    .locals 3

    .line 102
    iget v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    iget v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropResultWidth:F

    iget v2, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMoveHandler(FFFLcom/gpc/cropper/CropImageView$CropShape;)Lcom/gpc/cropper/CropWindowMoveHandler;
    .locals 1

    .line 211
    sget-object v0, Lcom/gpc/cropper/CropImageView$CropShape;->OVAL:Lcom/gpc/cropper/CropImageView$CropShape;

    if-ne p4, v0, :cond_0

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/gpc/cropper/CropWindowHandler;->getOvalPressedMoveType(FF)Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/cropper/CropWindowHandler;->getRectanglePressedMoveType(FFF)Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    .line 214
    new-instance p4, Lcom/gpc/cropper/CropWindowMoveHandler;

    invoke-direct {p4, p3, p0, p1, p2}, Lcom/gpc/cropper/CropWindowMoveHandler;-><init>(Lcom/gpc/cropper/CropWindowMoveHandler$Type;Lcom/gpc/cropper/CropWindowHandler;FF)V

    return-object p4

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 95
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getScaleFactorHeight()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return v0
.end method

.method public getScaleFactorWidth()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorWidth:F

    return v0
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    .line 165
    iput p2, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    .line 166
    iput p3, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 167
    iput p4, p0, Lcom/gpc/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return-void
.end method

.method public setInitialAttributeValues(Lcom/gpc/cropper/CropImageOptions;)V
    .locals 1

    .line 174
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    .line 175
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    .line 176
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropResultWidth:F

    .line 177
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropResultHeight:F

    .line 178
    iget v0, p1, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    .line 179
    iget p1, p1, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float p1, p1

    iput p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 154
    iput p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    int-to-float p1, p2

    .line 155
    iput p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 145
    iput p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropResultWidth:F

    int-to-float p1, p2

    .line 146
    iput p1, p0, Lcom/gpc/cropper/CropWindowHandler;->mMinCropResultHeight:F

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public showGuidelines()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
