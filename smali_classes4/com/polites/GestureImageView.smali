.class public Lcom/polites/GestureImageView;
.super Landroid/widget/ImageView;
.source "GestureImageView.java"


# static fields
.field public static final GLOBAL_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final LOCAL_NS:Ljava/lang/String; = "http://schemas.polites.com/android"


# instance fields
.field private alpha:I

.field private animator:Lcom/polites/Animator;

.field private centerX:F

.field private centerY:F

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private customOnTouchListener:Landroid/view/View$OnTouchListener;

.field public defaultImageViewListener:Lcom/polites/GestureImageViewListener;

.field private deviceOrientation:I

.field private displayHeight:I

.field private displayWidth:I

.field private final drawLock:Ljava/util/concurrent/Semaphore;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private fitScaleHorizontal:F

.field private fitScaleVertical:F

.field private gestureImageViewListener:Lcom/polites/GestureImageViewListener;

.field private gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

.field private hHeight:I

.field private hWidth:I

.field private imageOrientation:I

.field private layout:Z

.field private maxScale:F

.field private minScale:F

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private recycle:Z

.field private resId:I

.field private rotation:F

.field private scale:F

.field private scaleAdjust:F

.field private startX:Ljava/lang/Float;

.field private startY:Ljava/lang/Float;

.field private startingScale:F

.field private strict:Z

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/polites/GestureImageView;->x:F

    iput p1, p0, Lcom/polites/GestureImageView;->y:F

    .line 53
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->layout:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    iput v1, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 56
    iput v2, p0, Lcom/polites/GestureImageView;->startingScale:F

    .line 58
    iput v1, p0, Lcom/polites/GestureImageView;->scale:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 59
    iput v2, p0, Lcom/polites/GestureImageView;->maxScale:F

    const/high16 v2, 0x3f400000    # 0.75f

    .line 60
    iput v2, p0, Lcom/polites/GestureImageView;->minScale:F

    .line 61
    iput v1, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    .line 62
    iput v1, p0, Lcom/polites/GestureImageView;->fitScaleVertical:F

    .line 63
    iput p1, p0, Lcom/polites/GestureImageView;->rotation:F

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/polites/GestureImageView;->resId:I

    .line 74
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->recycle:Z

    .line 75
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    const/16 v0, 0xff

    .line 80
    iput v0, p0, Lcom/polites/GestureImageView;->alpha:I

    .line 83
    iput p1, p0, Lcom/polites/GestureImageView;->deviceOrientation:I

    .line 730
    new-instance p1, Lcom/polites/GestureImageView$2;

    invoke-direct {p1, p0}, Lcom/polites/GestureImageView$2;-><init>(Lcom/polites/GestureImageView;)V

    iput-object p1, p0, Lcom/polites/GestureImageView;->defaultImageViewListener:Lcom/polites/GestureImageViewListener;

    .line 128
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->initImage()V

    .line 131
    iget-object p1, p0, Lcom/polites/GestureImageView;->defaultImageViewListener:Lcom/polites/GestureImageViewListener;

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setGestureImageViewListener(Lcom/polites/GestureImageViewListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/polites/GestureImageView;->x:F

    iput p1, p0, Lcom/polites/GestureImageView;->y:F

    .line 53
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->layout:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    iput v1, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 56
    iput v2, p0, Lcom/polites/GestureImageView;->startingScale:F

    .line 58
    iput v1, p0, Lcom/polites/GestureImageView;->scale:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 59
    iput v2, p0, Lcom/polites/GestureImageView;->maxScale:F

    const/high16 v2, 0x3f400000    # 0.75f

    .line 60
    iput v2, p0, Lcom/polites/GestureImageView;->minScale:F

    .line 61
    iput v1, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    .line 62
    iput v1, p0, Lcom/polites/GestureImageView;->fitScaleVertical:F

    .line 63
    iput p1, p0, Lcom/polites/GestureImageView;->rotation:F

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/polites/GestureImageView;->resId:I

    .line 74
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->recycle:Z

    .line 75
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    const/16 v0, 0xff

    .line 80
    iput v0, p0, Lcom/polites/GestureImageView;->alpha:I

    .line 83
    iput p1, p0, Lcom/polites/GestureImageView;->deviceOrientation:I

    .line 730
    new-instance p1, Lcom/polites/GestureImageView$2;

    invoke-direct {p1, p0}, Lcom/polites/GestureImageView$2;-><init>(Lcom/polites/GestureImageView;)V

    iput-object p1, p0, Lcom/polites/GestureImageView;->defaultImageViewListener:Lcom/polites/GestureImageViewListener;

    .line 99
    const-string p1, "http://schemas.android.com/apk/res/android"

    const-string v0, "scaleType"

    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 102
    :cond_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    :cond_1
    const-string p1, "start-x"

    const-string v0, "http://schemas.polites.com/android"

    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    const-string v1, "start-y"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 109
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/polites/GestureImageView;->startX:Ljava/lang/Float;

    :cond_2
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 113
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/polites/GestureImageView;->startY:Ljava/lang/Float;

    .line 116
    :cond_3
    const-string p1, "start-scale"

    iget v1, p0, Lcom/polites/GestureImageView;->startingScale:F

    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setStartingScale(F)V

    .line 117
    const-string p1, "min-scale"

    iget v1, p0, Lcom/polites/GestureImageView;->minScale:F

    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setMinScale(F)V

    .line 118
    const-string p1, "max-scale"

    iget v1, p0, Lcom/polites/GestureImageView;->maxScale:F

    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setMaxScale(F)V

    .line 119
    const-string p1, "strict"

    iget-boolean v1, p0, Lcom/polites/GestureImageView;->strict:Z

    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setStrict(Z)V

    .line 120
    const-string p1, "recycle"

    iget-boolean v1, p0, Lcom/polites/GestureImageView;->recycle:Z

    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setRecycle(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->initImage()V

    .line 123
    iget-object p1, p0, Lcom/polites/GestureImageView;->defaultImageViewListener:Lcom/polites/GestureImageViewListener;

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setGestureImageViewListener(Lcom/polites/GestureImageViewListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/polites/GestureImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/polites/GestureImageView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/polites/GestureImageView;->customOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polites/GestureImageView;)Lcom/polites/GestureImageViewTouchListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    return-object p0
.end method


# virtual methods
.method public animationStart(Lcom/polites/Animation;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/polites/GestureImageView;->animator:Lcom/polites/Animator;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Lcom/polites/Animator;->play(Lcom/polites/Animation;)V

    :cond_0
    return-void
.end method

.method public animationStop()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/polites/GestureImageView;->animator:Lcom/polites/Animator;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/polites/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method protected computeCropScale(IIII)V
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    .line 254
    iput p3, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 255
    iput p1, p0, Lcom/polites/GestureImageView;->fitScaleVertical:F

    return-void
.end method

.method protected computeStartingScale(IIII)V
    .locals 2

    .line 260
    sget-object v0, Lcom/polites/GestureImageView$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    int-to-float p3, p4

    div-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 280
    iget p1, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    iput p1, p0, Lcom/polites/GestureImageView;->startingScale:F

    return-void

    .line 283
    :cond_1
    iget p1, p0, Lcom/polites/GestureImageView;->fitScaleVertical:F

    iput p1, p0, Lcom/polites/GestureImageView;->startingScale:F

    return-void

    :cond_2
    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p4, p2

    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 269
    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->startingScale:F

    return-void

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 263
    iput p1, p0, Lcom/polites/GestureImageView;->startingScale:F

    return-void
.end method

.method public getCenterX()F
    .locals 1

    .line 679
    iget v0, p0, Lcom/polites/GestureImageView;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .line 683
    iget v0, p0, Lcom/polites/GestureImageView;->centerY:F

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/polites/GestureImageView;->deviceOrientation:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGestureImageViewListener()Lcom/polites/GestureImageViewListener;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/polites/GestureImageView;->gestureImageViewListener:Lcom/polites/GestureImageViewListener;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 600
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez v0, :cond_0

    .line 603
    invoke-super {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getImageX()F
    .locals 1

    .line 478
    iget v0, p0, Lcom/polites/GestureImageView;->x:F

    return v0
.end method

.method public getImageY()F
    .locals 1

    .line 482
    iget v0, p0, Lcom/polites/GestureImageView;->y:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 474
    iget v0, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    return v0
.end method

.method public getScaledHeight()I
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getScaledWidth()I
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected initImage()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 385
    iget v1, p0, Lcom/polites/GestureImageView;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 386
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 387
    iget-object v0, p0, Lcom/polites/GestureImageView;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->layout:Z

    if-nez v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->requestLayout()V

    .line 394
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->redraw()V

    :cond_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 621
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez v0, :cond_0

    .line 624
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 622
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLandscape()Z
    .locals 2

    .line 687
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOrientationAligned()Z
    .locals 2

    .line 717
    iget v0, p0, Lcom/polites/GestureImageView;->deviceOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->isLandscape()Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->isPortrait()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public isPortrait()Z
    .locals 2

    .line 691
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecycle()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->recycle:Z

    return v0
.end method

.method protected isRecycled()Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStrict()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    return v0
.end method

.method public moveBy(FF)V
    .locals 1

    .line 442
    iget v0, p0, Lcom/polites/GestureImageView;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/polites/GestureImageView;->x:F

    .line 443
    iget p1, p0, Lcom/polites/GestureImageView;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/polites/GestureImageView;->y:F

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 349
    new-instance v0, Lcom/polites/Animator;

    const-string v1, "GestureImageViewAnimator"

    invoke-direct {v0, p0, v1}, Lcom/polites/Animator;-><init>(Lcom/polites/GestureImageView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/polites/GestureImageView;->animator:Lcom/polites/Animator;

    .line 350
    invoke-virtual {v0}, Lcom/polites/Animator;->start()V

    .line 352
    iget v0, p0, Lcom/polites/GestureImageView;->resId:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Lcom/polites/GestureImageView;->setImageResource(I)V

    .line 356
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez v0, :cond_0

    .line 632
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/polites/GestureImageView;->animator:Lcom/polites/Animator;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/polites/Animator;->finish()V

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->recycle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->recycle()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 380
    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 311
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->layout:Z

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    iget v0, p0, Lcom/polites/GestureImageView;->scale:F

    iget v1, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    mul-float v0, v0, v1

    .line 317
    iget v1, p0, Lcom/polites/GestureImageView;->x:F

    iget v2, p0, Lcom/polites/GestureImageView;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget v1, p0, Lcom/polites/GestureImageView;->rotation:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    if-gtz p1, :cond_3

    .line 333
    iget-object p1, p0, Lcom/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 171
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-nez p2, :cond_1

    .line 172
    iget-boolean p2, p1, Lcom/polites/GestureImageView;->layout:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 173
    :cond_1
    :goto_0
    iget p2, p1, Lcom/polites/GestureImageView;->displayWidth:I

    iget p3, p1, Lcom/polites/GestureImageView;->displayHeight:I

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p2, p3, p4}, Lcom/polites/GestureImageView;->setupCanvas(III)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, -0x2

    if-ne v0, v1, :cond_1

    .line 140
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iput p2, p0, Lcom/polites/GestureImageView;->displayHeight:I

    .line 142
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 144
    iget p2, p0, Lcom/polites/GestureImageView;->displayHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->displayWidth:I

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->displayWidth:I

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->displayWidth:I

    .line 152
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v2, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 154
    iget p2, p0, Lcom/polites/GestureImageView;->displayWidth:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->displayHeight:I

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->displayHeight:I

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iput p2, p0, Lcom/polites/GestureImageView;->displayHeight:I

    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageView;->displayWidth:I

    .line 166
    :goto_0
    iget p1, p0, Lcom/polites/GestureImageView;->displayWidth:I

    iget p2, p0, Lcom/polites/GestureImageView;->displayHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/polites/GestureImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected recycle()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->recycle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public redraw()V
    .locals 0

    .line 452
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->postInvalidate()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 502
    iget v0, p0, Lcom/polites/GestureImageView;->centerX:F

    iput v0, p0, Lcom/polites/GestureImageView;->x:F

    .line 503
    iget v0, p0, Lcom/polites/GestureImageView;->centerY:F

    iput v0, p0, Lcom/polites/GestureImageView;->y:F

    .line 504
    iget v0, p0, Lcom/polites/GestureImageView;->startingScale:F

    iput v0, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    .line 505
    iget-object v0, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/polites/GestureImageViewTouchListener;->reset()V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->redraw()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    .line 637
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez v0, :cond_0

    .line 640
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-void

    .line 638
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 530
    iput p1, p0, Lcom/polites/GestureImageView;->alpha:I

    .line 531
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 538
    iput-object p1, p0, Lcom/polites/GestureImageView;->colorFilter:Landroid/graphics/ColorFilter;

    .line 539
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setGestureImageViewListener(Lcom/polites/GestureImageViewListener;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/polites/GestureImageView;->gestureImageViewListener:Lcom/polites/GestureImageViewListener;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 399
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->initImage()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 406
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->initImage()V

    return-void
.end method

.method public setImageLevel(I)V
    .locals 1

    .line 645
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez v0, :cond_0

    .line 648
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void

    .line 646
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 653
    iget-boolean p1, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez p1, :cond_0

    return-void

    .line 654
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageResource(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->recycle()V

    :cond_0
    if-ltz p1, :cond_1

    .line 414
    iput p1, p0, Lcom/polites/GestureImageView;->resId:I

    .line 415
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 0

    .line 660
    iget-boolean p1, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez p1, :cond_0

    return-void

    .line 661
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11

    .line 546
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GestureImageView"

    if-eqz v0, :cond_5

    .line 548
    :try_start_0
    const-string v0, "orientation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 553
    aget-object v0, v4, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/polites/GestureImageView;->imageOrientation:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    const/4 v2, 0x0

    .line 559
    :try_start_2
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 560
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 562
    iget v0, p0, Lcom/polites/GestureImageView;->imageOrientation:I

    if-eqz v0, :cond_1

    .line 563
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 564
    iget v0, p0, Lcom/polites/GestureImageView;->imageOrientation:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 565
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 566
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 567
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Lcom/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 570
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    .line 575
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz p1, :cond_6

    .line 579
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 575
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p1, :cond_4

    .line 579
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, p1

    :goto_1
    move-object p1, v0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open content: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    move-object v3, p1

    .line 588
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_7

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resolveUri failed on bad bitmap uri: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public setMaxScale(F)V
    .locals 2

    .line 463
    iput p1, p0, Lcom/polites/GestureImageView;->maxScale:F

    .line 464
    iget-object v0, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 465
    iget v1, p0, Lcom/polites/GestureImageView;->startingScale:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/polites/GestureImageViewTouchListener;->setMaxScale(F)V

    :cond_0
    return-void
.end method

.method public setMinScale(F)V
    .locals 2

    .line 456
    iput p1, p0, Lcom/polites/GestureImageView;->minScale:F

    .line 457
    iget-object v0, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 458
    iget v1, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/polites/GestureImageViewTouchListener;->setMinScale(F)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 705
    iput-object p1, p0, Lcom/polites/GestureImageView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 707
    iget-object v0, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p1}, Lcom/polites/GestureImageViewTouchListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/polites/GestureImageView;->customOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/polites/GestureImageView;->x:F

    .line 448
    iput p2, p0, Lcom/polites/GestureImageView;->y:F

    return-void
.end method

.method public setRecycle(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/polites/GestureImageView;->recycle:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/polites/GestureImageView;->rotation:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 608
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    iget-boolean p1, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez p1, :cond_1

    return-void

    .line 615
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 612
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/polites/GestureImageView;->strict:Z

    if-nez v0, :cond_0

    .line 670
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 668
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartingPosition(FF)V
    .locals 0

    .line 699
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/polites/GestureImageView;->startX:Ljava/lang/Float;

    .line 700
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/polites/GestureImageView;->startY:Ljava/lang/Float;

    return-void
.end method

.method public setStartingScale(F)V
    .locals 0

    .line 695
    iput p1, p0, Lcom/polites/GestureImageView;->startingScale:F

    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/polites/GestureImageView;->strict:Z

    return-void
.end method

.method protected setupCanvas(III)V
    .locals 4

    .line 179
    iget v0, p0, Lcom/polites/GestureImageView;->deviceOrientation:I

    if-eq v0, p3, :cond_0

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/polites/GestureImageView;->layout:Z

    .line 181
    iput p3, p0, Lcom/polites/GestureImageView;->deviceOrientation:I

    .line 184
    :cond_0
    iget-object p3, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/polites/GestureImageView;->layout:Z

    if-nez p3, :cond_5

    .line 185
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result p3

    .line 186
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result v0

    int-to-float v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 188
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/polites/GestureImageView;->hWidth:I

    int-to-float v1, v0

    div-float/2addr v1, v2

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/polites/GestureImageView;->hHeight:I

    .line 191
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr p1, v1

    .line 192
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/polites/GestureImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr p2, v1

    .line 194
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/polites/GestureImageView;->computeCropScale(IIII)V

    .line 196
    iget v1, p0, Lcom/polites/GestureImageView;->startingScale:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 197
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/polites/GestureImageView;->computeStartingScale(IIII)V

    .line 200
    :cond_1
    iget p3, p0, Lcom/polites/GestureImageView;->startingScale:F

    iput p3, p0, Lcom/polites/GestureImageView;->scaleAdjust:F

    int-to-float p3, p1

    div-float/2addr p3, v2

    .line 202
    iput p3, p0, Lcom/polites/GestureImageView;->centerX:F

    int-to-float v0, p2

    div-float/2addr v0, v2

    .line 203
    iput v0, p0, Lcom/polites/GestureImageView;->centerY:F

    .line 205
    iget-object v0, p0, Lcom/polites/GestureImageView;->startX:Ljava/lang/Float;

    if-nez v0, :cond_2

    .line 206
    iput p3, p0, Lcom/polites/GestureImageView;->x:F

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lcom/polites/GestureImageView;->x:F

    .line 212
    :goto_0
    iget-object p3, p0, Lcom/polites/GestureImageView;->startY:Ljava/lang/Float;

    if-nez p3, :cond_3

    .line 213
    iget p3, p0, Lcom/polites/GestureImageView;->centerY:F

    iput p3, p0, Lcom/polites/GestureImageView;->y:F

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lcom/polites/GestureImageView;->y:F

    .line 219
    :goto_1
    new-instance p3, Lcom/polites/GestureImageViewTouchListener;

    invoke-direct {p3, p0, p1, p2}, Lcom/polites/GestureImageViewTouchListener;-><init>(Lcom/polites/GestureImageView;II)V

    iput-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    .line 221
    invoke-virtual {p0}, Lcom/polites/GestureImageView;->isLandscape()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 222
    iget-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    iget v0, p0, Lcom/polites/GestureImageView;->minScale:F

    iget v1, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    mul-float v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/polites/GestureImageViewTouchListener;->setMinScale(F)V

    goto :goto_2

    .line 225
    :cond_4
    iget-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    iget v0, p0, Lcom/polites/GestureImageView;->minScale:F

    iget v1, p0, Lcom/polites/GestureImageView;->fitScaleVertical:F

    mul-float v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/polites/GestureImageViewTouchListener;->setMinScale(F)V

    .line 229
    :goto_2
    iget-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    iget v0, p0, Lcom/polites/GestureImageView;->maxScale:F

    iget v1, p0, Lcom/polites/GestureImageView;->startingScale:F

    mul-float v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/polites/GestureImageViewTouchListener;->setMaxScale(F)V

    .line 231
    iget-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    iget v0, p0, Lcom/polites/GestureImageView;->fitScaleHorizontal:F

    invoke-virtual {p3, v0}, Lcom/polites/GestureImageViewTouchListener;->setFitScaleHorizontal(F)V

    .line 232
    iget-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    iget v0, p0, Lcom/polites/GestureImageView;->fitScaleVertical:F

    invoke-virtual {p3, v0}, Lcom/polites/GestureImageViewTouchListener;->setFitScaleVertical(F)V

    .line 233
    iget-object p3, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    invoke-virtual {p3, p1}, Lcom/polites/GestureImageViewTouchListener;->setCanvasWidth(I)V

    .line 234
    iget-object p1, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    invoke-virtual {p1, p2}, Lcom/polites/GestureImageViewTouchListener;->setCanvasHeight(I)V

    .line 235
    iget-object p1, p0, Lcom/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/polites/GestureImageViewTouchListener;

    iget-object p2, p0, Lcom/polites/GestureImageView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/polites/GestureImageViewTouchListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/polites/GestureImageView;->hWidth:I

    neg-int p3, p2

    iget v0, p0, Lcom/polites/GestureImageView;->hHeight:I

    neg-int v1, v0

    invoke-virtual {p1, p3, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    new-instance p1, Lcom/polites/GestureImageView$1;

    invoke-direct {p1, p0}, Lcom/polites/GestureImageView$1;-><init>(Lcom/polites/GestureImageView;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/polites/GestureImageView;->layout:Z

    :cond_5
    return-void
.end method

.method public waitForDraw(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method
