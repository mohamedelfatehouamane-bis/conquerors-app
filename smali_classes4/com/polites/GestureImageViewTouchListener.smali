.class public Lcom/polites/GestureImageViewTouchListener;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private boundaryBottom:F

.field private boundaryLeft:F

.field private boundaryRight:F

.field private boundaryTop:F

.field private canDragX:Z

.field private canDragY:Z

.field private canvasHeight:I

.field private canvasWidth:I

.field private centerX:F

.field private centerY:F

.field private final current:Landroid/graphics/PointF;

.field private currentScale:F

.field private displayHeight:I

.field private displayWidth:I

.field private fitScaleHorizontal:F

.field private fitScaleVertical:F

.field private flingAnimation:Lcom/polites/FlingAnimation;

.field private flingDetector:Landroid/view/GestureDetector;

.field private flingListener:Lcom/polites/FlingListener;

.field private image:Lcom/polites/GestureImageView;

.field private imageHeight:I

.field private imageListener:Lcom/polites/GestureImageViewListener;

.field private imageWidth:I

.field private inZoom:Z

.field private initialDistance:F

.field private final last:Landroid/graphics/PointF;

.field private lastScale:F

.field private maxScale:F

.field private final midpoint:Landroid/graphics/PointF;

.field private minScale:F

.field private moveAnimation:Lcom/polites/MoveAnimation;

.field private multiTouch:Z

.field private final next:Landroid/graphics/PointF;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private final pinchVector:Lcom/polites/VectorF;

.field private final scaleVector:Lcom/polites/VectorF;

.field private startingScale:F

.field private tapDetector:Landroid/view/GestureDetector;

.field private touched:Z

.field private zoomAnimation:Lcom/polites/ZoomAnimation;


# direct methods
.method public constructor <init>(Lcom/polites/GestureImageView;II)V
    .locals 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    .line 35
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->midpoint:Landroid/graphics/PointF;

    .line 37
    new-instance v1, Lcom/polites/VectorF;

    invoke-direct {v1}, Lcom/polites/VectorF;-><init>()V

    iput-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    .line 38
    new-instance v1, Lcom/polites/VectorF;

    invoke-direct {v1}, Lcom/polites/VectorF;-><init>()V

    iput-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->pinchVector:Lcom/polites/VectorF;

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/polites/GestureImageViewTouchListener;->touched:Z

    .line 41
    iput-boolean v1, p0, Lcom/polites/GestureImageViewTouchListener;->inZoom:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    .line 45
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    const/4 v3, 0x0

    .line 47
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryLeft:F

    .line 48
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryTop:F

    .line 49
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryRight:F

    .line 50
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryBottom:F

    const/high16 v4, 0x40a00000    # 5.0f

    .line 52
    iput v4, p0, Lcom/polites/GestureImageViewTouchListener;->maxScale:F

    const/high16 v4, 0x3e800000    # 0.25f

    .line 53
    iput v4, p0, Lcom/polites/GestureImageViewTouchListener;->minScale:F

    .line 54
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    .line 55
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    .line 57
    iput v1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasWidth:I

    .line 58
    iput v1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasHeight:I

    .line 63
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->startingScale:F

    .line 65
    iput-boolean v1, p0, Lcom/polites/GestureImageViewTouchListener;->canDragX:Z

    .line 66
    iput-boolean v1, p0, Lcom/polites/GestureImageViewTouchListener;->canDragY:Z

    .line 68
    iput-boolean v1, p0, Lcom/polites/GestureImageViewTouchListener;->multiTouch:Z

    .line 87
    iput-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    .line 89
    iput p2, p0, Lcom/polites/GestureImageViewTouchListener;->displayWidth:I

    .line 90
    iput p3, p0, Lcom/polites/GestureImageViewTouchListener;->displayHeight:I

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    .line 92
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->centerX:F

    int-to-float p3, p3

    div-float v2, p3, v1

    .line 93
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->centerY:F

    .line 95
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getImageWidth()I

    move-result v2

    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->imageWidth:I

    .line 96
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getImageHeight()I

    move-result v2

    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->imageHeight:I

    .line 98
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getScale()F

    move-result v2

    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->startingScale:F

    .line 100
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    .line 101
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    .line 103
    iput p2, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryRight:F

    .line 104
    iput p3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryBottom:F

    .line 105
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryLeft:F

    .line 106
    iput v3, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryTop:F

    .line 108
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getImageX()F

    move-result p2

    iput p2, v0, Landroid/graphics/PointF;->x:F

    .line 109
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getImageY()F

    move-result p2

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 111
    new-instance p2, Lcom/polites/FlingListener;

    invoke-direct {p2}, Lcom/polites/FlingListener;-><init>()V

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->flingListener:Lcom/polites/FlingListener;

    .line 112
    new-instance p2, Lcom/polites/FlingAnimation;

    invoke-direct {p2}, Lcom/polites/FlingAnimation;-><init>()V

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->flingAnimation:Lcom/polites/FlingAnimation;

    .line 113
    new-instance p2, Lcom/polites/ZoomAnimation;

    invoke-direct {p2}, Lcom/polites/ZoomAnimation;-><init>()V

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    .line 114
    new-instance p2, Lcom/polites/MoveAnimation;

    invoke-direct {p2}, Lcom/polites/MoveAnimation;-><init>()V

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->moveAnimation:Lcom/polites/MoveAnimation;

    .line 116
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->flingAnimation:Lcom/polites/FlingAnimation;

    new-instance p3, Lcom/polites/GestureImageViewTouchListener$1;

    invoke-direct {p3, p0}, Lcom/polites/GestureImageViewTouchListener$1;-><init>(Lcom/polites/GestureImageViewTouchListener;)V

    invoke-virtual {p2, p3}, Lcom/polites/FlingAnimation;->setListener(Lcom/polites/FlingAnimationListener;)V

    .line 126
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p2, v1}, Lcom/polites/ZoomAnimation;->setZoom(F)V

    .line 127
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    new-instance p3, Lcom/polites/GestureImageViewTouchListener$2;

    invoke-direct {p3, p0}, Lcom/polites/GestureImageViewTouchListener$2;-><init>(Lcom/polites/GestureImageViewTouchListener;)V

    invoke-virtual {p2, p3}, Lcom/polites/ZoomAnimation;->setZoomAnimationListener(Lcom/polites/ZoomAnimationListener;)V

    .line 142
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->moveAnimation:Lcom/polites/MoveAnimation;

    new-instance p3, Lcom/polites/GestureImageViewTouchListener$3;

    invoke-direct {p3, p0, p1}, Lcom/polites/GestureImageViewTouchListener$3;-><init>(Lcom/polites/GestureImageViewTouchListener;Lcom/polites/GestureImageView;)V

    invoke-virtual {p2, p3}, Lcom/polites/MoveAnimation;->setMoveAnimationListener(Lcom/polites/MoveAnimationListener;)V

    .line 151
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/polites/GestureImageViewTouchListener$4;

    invoke-direct {v0, p0, p1}, Lcom/polites/GestureImageViewTouchListener$4;-><init>(Lcom/polites/GestureImageViewTouchListener;Lcom/polites/GestureImageView;)V

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->tapDetector:Landroid/view/GestureDetector;

    .line 171
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->flingListener:Lcom/polites/FlingListener;

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->flingDetector:Landroid/view/GestureDetector;

    .line 172
    invoke-virtual {p1}, Lcom/polites/GestureImageView;->getGestureImageViewListener()Lcom/polites/GestureImageViewListener;

    move-result-object p1

    iput-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    .line 174
    invoke-virtual {p0}, Lcom/polites/GestureImageViewTouchListener;->calculateBoundaries()V

    return-void
.end method

.method static synthetic access$000(Lcom/polites/GestureImageViewTouchListener;)Landroid/graphics/PointF;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polites/GestureImageViewTouchListener;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/polites/GestureImageViewTouchListener;->maxScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/polites/GestureImageViewTouchListener;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/polites/GestureImageViewTouchListener;->minScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/polites/GestureImageViewTouchListener;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/polites/GestureImageViewTouchListener;->inZoom:Z

    return p0
.end method

.method static synthetic access$302(Lcom/polites/GestureImageViewTouchListener;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->inZoom:Z

    return p1
.end method

.method static synthetic access$400(Lcom/polites/GestureImageViewTouchListener;Landroid/view/MotionEvent;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/polites/GestureImageViewTouchListener;->startZoom(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/polites/GestureImageViewTouchListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/polites/GestureImageViewTouchListener;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private startFling()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->flingAnimation:Lcom/polites/FlingAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->flingListener:Lcom/polites/FlingListener;

    invoke-virtual {v1}, Lcom/polites/FlingListener;->getVelocityX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polites/FlingAnimation;->setVelocityX(F)V

    .line 179
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->flingAnimation:Lcom/polites/FlingAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->flingListener:Lcom/polites/FlingListener;

    invoke-virtual {v1}, Lcom/polites/FlingListener;->getVelocityY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polites/FlingAnimation;->setVelocityY(F)V

    .line 180
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->flingAnimation:Lcom/polites/FlingAnimation;

    invoke-virtual {v0, v1}, Lcom/polites/GestureImageView;->animationStart(Lcom/polites/Animation;)V

    return-void
.end method

.method private startZoom(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->inZoom:Z

    .line 185
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {v1}, Lcom/polites/ZoomAnimation;->reset()V

    .line 189
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->isLandscape()Z

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getDeviceOrientation()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->getScaledHeight()I

    move-result v0

    .line 193
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasHeight:I

    if-ge v0, v1, :cond_0

    .line 194
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float/2addr v0, v1

    .line 195
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 196
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto/16 :goto_1

    .line 199
    :cond_0
    iget p1, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float v0, p1, v0

    .line 200
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterX()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 201
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto/16 :goto_1

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->getScaledWidth()I

    move-result v0

    .line 207
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasWidth:I

    if-ne v0, v1, :cond_2

    .line 208
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    mul-float v0, v0, v2

    .line 209
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 210
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto/16 :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    .line 213
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float/2addr v0, v1

    .line 214
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v2, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v2}, Lcom/polites/GestureImageView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 215
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto/16 :goto_1

    .line 218
    :cond_3
    iget p1, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float/2addr p1, v0

    .line 219
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 220
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    :goto_0
    move v0, p1

    goto/16 :goto_1

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getDeviceOrientation()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 227
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->getScaledHeight()I

    move-result v0

    .line 229
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasHeight:I

    if-ne v0, v1, :cond_5

    .line 230
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    mul-float v0, v0, v2

    .line 231
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 232
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto/16 :goto_1

    :cond_5
    if-ge v0, v1, :cond_6

    .line 235
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 237
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto :goto_1

    .line 240
    :cond_6
    iget p1, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float/2addr p1, v0

    .line 241
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 242
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto :goto_0

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->getScaledWidth()I

    move-result v0

    .line 248
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasWidth:I

    if-ge v0, v1, :cond_8

    .line 249
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float/2addr v0, v1

    .line 250
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v2, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v2}, Lcom/polites/GestureImageView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 251
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    goto :goto_1

    .line 254
    :cond_8
    iget p1, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    div-float v0, p1, v0

    .line 255
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterX()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/polites/ZoomAnimation;->setTouchX(F)V

    .line 256
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v1}, Lcom/polites/GestureImageView;->getCenterY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/polites/ZoomAnimation;->setTouchY(F)V

    .line 261
    :goto_1
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1, v0}, Lcom/polites/ZoomAnimation;->setZoom(F)V

    .line 262
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->zoomAnimation:Lcom/polites/ZoomAnimation;

    invoke-virtual {p1, v0}, Lcom/polites/GestureImageView;->animationStart(Lcom/polites/Animation;)V

    return-void
.end method

.method private stopAnimations()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->animationStop()V

    return-void
.end method


# virtual methods
.method protected boundCoordinates()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryLeft:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryRight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 512
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryTop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryBottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_3
    return-void
.end method

.method protected calculateBoundaries()V
    .locals 7

    .line 522
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->imageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 523
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->imageHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 525
    iget v2, p0, Lcom/polites/GestureImageViewTouchListener;->displayWidth:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/polites/GestureImageViewTouchListener;->canDragX:Z

    .line 526
    iget v6, p0, Lcom/polites/GestureImageViewTouchListener;->displayHeight:I

    if-le v1, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/polites/GestureImageViewTouchListener;->canDragY:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v5, :cond_2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 530
    iget v2, p0, Lcom/polites/GestureImageViewTouchListener;->centerX:F

    sub-float v5, v2, v0

    iput v5, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryLeft:F

    add-float/2addr v2, v0

    .line 531
    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryRight:F

    :cond_2
    if-eqz v3, :cond_3

    sub-int/2addr v1, v6

    int-to-float v0, v1

    div-float/2addr v0, v4

    .line 536
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->centerY:F

    sub-float v2, v1, v0

    iput v2, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryTop:F

    add-float/2addr v1, v0

    .line 537
    iput v1, p0, Lcom/polites/GestureImageViewTouchListener;->boundaryBottom:F

    :cond_3
    return-void
.end method

.method public getMaxScale()F
    .locals 1

    .line 469
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->maxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 477
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->minScale:F

    return v0
.end method

.method protected handleDrag(FF)Z
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 428
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 430
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    .line 431
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 435
    :cond_0
    iget-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->canDragX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 436
    :cond_1
    iget-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->canDragY:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/polites/GestureImageViewTouchListener;->boundCoordinates()V

    .line 440
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 441
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 443
    iget-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->canDragX:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->canDragY:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 444
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Lcom/polites/GestureImageView;->setPosition(FF)V

    .line 446
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    if-eqz p1, :cond_5

    .line 447
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-interface {p1, p2, v0}, Lcom/polites/GestureImageViewListener;->onPosition(FF)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method protected handleScale(FFF)V
    .locals 2

    .line 400
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    .line 402
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->maxScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 403
    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    goto :goto_0

    .line 405
    :cond_0
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->minScale:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 406
    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    goto :goto_0

    .line 409
    :cond_1
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 410
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iput p3, p1, Landroid/graphics/PointF;->y:F

    .line 413
    :goto_0
    invoke-virtual {p0}, Lcom/polites/GestureImageViewTouchListener;->calculateBoundaries()V

    .line 415
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget p2, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    invoke-virtual {p1, p2}, Lcom/polites/GestureImageView;->setScale(F)V

    .line 416
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object p3, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Lcom/polites/GestureImageView;->setPosition(FF)V

    .line 418
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    if-eqz p1, :cond_2

    .line 419
    iget p2, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    invoke-interface {p1, p2}, Lcom/polites/GestureImageViewListener;->onScale(F)V

    .line 420
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object p3, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-interface {p1, p2, p3}, Lcom/polites/GestureImageViewListener;->onPosition(FF)V

    .line 423
    :cond_2
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->redraw()V

    return-void
.end method

.method protected handleUp()V
    .locals 3

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->multiTouch:Z

    const/4 v0, 0x0

    .line 362
    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->initialDistance:F

    .line 363
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    .line 365
    iget-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->canDragX:Z

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->centerX:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->canDragY:Z

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->centerY:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/polites/GestureImageViewTouchListener;->boundCoordinates()V

    .line 375
    iget-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->canDragX:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->canDragY:Z

    if-nez v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    .line 379
    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    goto :goto_0

    .line 382
    :cond_2
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    .line 383
    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    .line 387
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    invoke-virtual {v0, v1}, Lcom/polites/GestureImageView;->setScale(F)V

    .line 388
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/polites/GestureImageView;->setPosition(FF)V

    .line 390
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    if-eqz v0, :cond_4

    .line 391
    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    invoke-interface {v0, v1}, Lcom/polites/GestureImageViewListener;->onScale(F)V

    .line 392
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2}, Lcom/polites/GestureImageViewListener;->onPosition(FF)V

    .line 395
    :cond_4
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->redraw()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 273
    iget-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->inZoom:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 275
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->tapDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->flingDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/polites/GestureImageViewTouchListener;->startFling()V

    .line 280
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/polites/GestureImageViewTouchListener;->handleUp()V

    goto/16 :goto_0

    .line 283
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 284
    invoke-direct {p0}, Lcom/polites/GestureImageViewTouchListener;->stopAnimations()V

    .line 286
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 287
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 289
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->imageListener:Lcom/polites/GestureImageViewListener;

    if-eqz p1, :cond_2

    .line 290
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-interface {p1, p2, v1}, Lcom/polites/GestureImageViewListener;->onTouch(FF)V

    .line 293
    :cond_2
    iput-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->touched:Z

    goto/16 :goto_0

    .line 295
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_5

    .line 297
    iput-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->multiTouch:Z

    .line 298
    iget p1, p0, Lcom/polites/GestureImageViewTouchListener;->initialDistance:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 300
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->pinchVector:Lcom/polites/VectorF;

    invoke-virtual {p1, p2}, Lcom/polites/VectorF;->set(Landroid/view/MotionEvent;)V

    .line 301
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->pinchVector:Lcom/polites/VectorF;

    invoke-virtual {p1}, Lcom/polites/VectorF;->calculateLength()F

    .line 303
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->pinchVector:Lcom/polites/VectorF;

    iget p1, p1, Lcom/polites/VectorF;->length:F

    .line 305
    iget p2, p0, Lcom/polites/GestureImageViewTouchListener;->initialDistance:F

    cmpl-float v1, p2, p1

    if-eqz v1, :cond_7

    div-float/2addr p1, p2

    .line 307
    iget p2, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    mul-float p1, p1, p2

    .line 309
    iget p2, p0, Lcom/polites/GestureImageViewTouchListener;->maxScale:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_7

    .line 310
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget v1, p2, Lcom/polites/VectorF;->length:F

    mul-float v1, v1, p1

    iput v1, p2, Lcom/polites/VectorF;->length:F

    .line 312
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    invoke-virtual {p2}, Lcom/polites/VectorF;->calculateEndPoint()V

    .line 314
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget v1, p2, Lcom/polites/VectorF;->length:F

    div-float/2addr v1, p1

    iput v1, p2, Lcom/polites/VectorF;->length:F

    .line 316
    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget-object p2, p2, Lcom/polites/VectorF;->end:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 317
    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget-object v1, v1, Lcom/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 319
    invoke-virtual {p0, p1, p2, v1}, Lcom/polites/GestureImageViewTouchListener;->handleScale(FFF)V

    goto :goto_0

    .line 324
    :cond_4
    invoke-static {p2}, Lcom/polites/MathUtils;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->initialDistance:F

    .line 326
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->midpoint:Landroid/graphics/PointF;

    invoke-static {p2, p1}, Lcom/polites/MathUtils;->midpoint(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V

    .line 328
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->midpoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/polites/VectorF;->setStart(Landroid/graphics/PointF;)V

    .line 329
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/polites/VectorF;->setEnd(Landroid/graphics/PointF;)V

    .line 331
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    invoke-virtual {p1}, Lcom/polites/VectorF;->calculateLength()F

    .line 332
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    invoke-virtual {p1}, Lcom/polites/VectorF;->calculateAngle()F

    .line 334
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->scaleVector:Lcom/polites/VectorF;

    iget p2, p1, Lcom/polites/VectorF;->length:F

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->lastScale:F

    div-float/2addr p2, v1

    iput p2, p1, Lcom/polites/VectorF;->length:F

    goto :goto_0

    .line 338
    :cond_5
    iget-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->touched:Z

    if-nez p1, :cond_6

    .line 339
    iput-boolean v0, p0, Lcom/polites/GestureImageViewTouchListener;->touched:Z

    .line 340
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 341
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 342
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {p2}, Lcom/polites/GestureImageView;->getImageX()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 343
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {p2}, Lcom/polites/GestureImageView;->getImageY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 345
    :cond_6
    iget-boolean p1, p0, Lcom/polites/GestureImageViewTouchListener;->multiTouch:Z

    if-nez p1, :cond_7

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/polites/GestureImageViewTouchListener;->handleDrag(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 347
    iget-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {p1}, Lcom/polites/GestureImageView;->redraw()V

    :cond_7
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 3

    .line 458
    iget v0, p0, Lcom/polites/GestureImageViewTouchListener;->startingScale:F

    iput v0, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    .line 459
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->centerX:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 460
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->centerY:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 461
    invoke-virtual {p0}, Lcom/polites/GestureImageViewTouchListener;->calculateBoundaries()V

    .line 462
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget v1, p0, Lcom/polites/GestureImageViewTouchListener;->currentScale:F

    invoke-virtual {v0, v1}, Lcom/polites/GestureImageView;->setScale(F)V

    .line 463
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    iget-object v1, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/polites/GestureImageViewTouchListener;->next:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/polites/GestureImageView;->setPosition(FF)V

    .line 464
    iget-object v0, p0, Lcom/polites/GestureImageViewTouchListener;->image:Lcom/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/polites/GestureImageView;->redraw()V

    return-void
.end method

.method protected setCanvasHeight(I)V
    .locals 0

    .line 493
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasHeight:I

    return-void
.end method

.method protected setCanvasWidth(I)V
    .locals 0

    .line 489
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->canvasWidth:I

    return-void
.end method

.method protected setFitScaleHorizontal(F)V
    .locals 0

    .line 497
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleHorizontal:F

    return-void
.end method

.method protected setFitScaleVertical(F)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->fitScaleVertical:F

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 473
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->maxScale:F

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 481
    iput p1, p0, Lcom/polites/GestureImageViewTouchListener;->minScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/polites/GestureImageViewTouchListener;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
