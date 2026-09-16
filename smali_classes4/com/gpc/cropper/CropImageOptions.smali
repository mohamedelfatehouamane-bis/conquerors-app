.class public Lcom/gpc/cropper/CropImageOptions;
.super Ljava/lang/Object;
.source "CropImageOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gpc/cropper/CropImageOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activityMenuIconColor:I

.field public activityTitle:Ljava/lang/CharSequence;

.field public allowCounterRotation:Z

.field public allowFlipping:Z

.field public allowRotation:Z

.field public aspectRatioX:I

.field public aspectRatioY:I

.field public autoZoomEnabled:Z

.field public backgroundColor:I

.field public borderCornerColor:I

.field public borderCornerLength:F

.field public borderCornerOffset:F

.field public borderCornerThickness:F

.field public borderLineColor:I

.field public borderLineThickness:F

.field public cropMenuCropButtonIcon:I

.field public cropMenuCropButtonTitle:Ljava/lang/CharSequence;

.field public cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

.field public fixAspectRatio:Z

.field public flipHorizontally:Z

.field public flipVertically:Z

.field public guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

.field public guidelinesColor:I

.field public guidelinesThickness:F

.field public initialCropWindowPaddingRatio:F

.field public initialCropWindowRectangle:Landroid/graphics/Rect;

.field public initialRotation:I

.field public maxCropResultHeight:I

.field public maxCropResultWidth:I

.field public maxZoom:I

.field public minCropResultHeight:I

.field public minCropResultWidth:I

.field public minCropWindowHeight:I

.field public minCropWindowWidth:I

.field public multiTouchEnabled:Z

.field public noOutputImage:Z

.field public outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public outputCompressQuality:I

.field public outputRequestHeight:I

.field public outputRequestSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field public outputRequestWidth:I

.field public outputUri:Landroid/net/Uri;

.field public rotationDegrees:I

.field public scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

.field public showCropOverlay:Z

.field public showProgressBar:Z

.field public snapRadius:F

.field public touchRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/gpc/cropper/CropImageOptions$1;

    invoke-direct {v0}, Lcom/gpc/cropper/CropImageOptions$1;-><init>()V

    sput-object v0, Lcom/gpc/cropper/CropImageOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 306
    sget-object v1, Lcom/gpc/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;

    iput-object v1, p0, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 307
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    const/high16 v3, 0x41c00000    # 24.0f

    .line 308
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    .line 309
    sget-object v3, Lcom/gpc/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/gpc/cropper/CropImageView$Guidelines;

    iput-object v3, p0, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    .line 310
    sget-object v3, Lcom/gpc/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

    iput-object v3, p0, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 311
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->showCropOverlay:Z

    .line 312
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->showProgressBar:Z

    .line 313
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    const/4 v3, 0x0

    .line 314
    iput-boolean v3, p0, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    const/4 v4, 0x4

    .line 315
    iput v4, p0, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    const v4, 0x3dcccccd    # 0.1f

    .line 316
    iput v4, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 318
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 319
    iput v1, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    .line 320
    iput v1, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    .line 322
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    const/16 v2, 0xaa

    const/16 v4, 0xff

    .line 323
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 324
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    const/high16 v5, 0x40a00000    # 5.0f

    .line 325
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    const/high16 v5, 0x41600000    # 14.0f

    .line 326
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    const/4 v5, -0x1

    .line 327
    iput v5, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 329
    invoke-static {v1, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iput v6, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    .line 330
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    const/16 v2, 0x77

    .line 331
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    const/high16 v2, 0x42280000    # 42.0f

    .line 333
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 334
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    const/16 v0, 0x28

    .line 335
    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    .line 336
    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    const v0, 0x1869f

    .line 337
    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 338
    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    .line 341
    iput v3, p0, Lcom/gpc/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 343
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    .line 344
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    .line 345
    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputCompressQuality:I

    const/16 v2, 0x100

    .line 346
    iput v2, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    .line 347
    iput v2, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    .line 348
    sget-object v2, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    iput-object v2, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 349
    iput-boolean v3, p0, Lcom/gpc/cropper/CropImageOptions;->noOutputImage:Z

    const/4 v2, 0x0

    .line 351
    iput-object v2, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 352
    iput v5, p0, Lcom/gpc/cropper/CropImageOptions;->initialRotation:I

    .line 353
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->allowRotation:Z

    .line 354
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->allowFlipping:Z

    .line 355
    iput-boolean v3, p0, Lcom/gpc/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 356
    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->rotationDegrees:I

    .line 357
    iput-boolean v3, p0, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    .line 358
    iput-boolean v3, p0, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    .line 359
    iput-object v2, p0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    .line 361
    iput v3, p0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Lcom/gpc/cropper/CropImageView$CropShape;->values()[Lcom/gpc/cropper/CropImageView$CropShape;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    .line 371
    invoke-static {}, Lcom/gpc/cropper/CropImageView$Guidelines;->values()[Lcom/gpc/cropper/CropImageView$Guidelines;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    .line 372
    invoke-static {}, Lcom/gpc/cropper/CropImageView$ScaleType;->values()[Lcom/gpc/cropper/CropImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->showCropOverlay:Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->showProgressBar:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 397
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 399
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputCompressQuality:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    .line 404
    invoke-static {}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->values()[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->noOutputImage:Z

    .line 406
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialRotation:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->allowRotation:Z

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->allowFlipping:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gpc/cropper/CropImageOptions;->rotationDegrees:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    .line 414
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public validate()V
    .locals 6

    .line 481
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    if-ltz v0, :cond_f

    .line 484
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_e

    .line 487
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_d

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-gez v0, :cond_d

    .line 491
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    const-string v2, "Cannot set aspect ratio value to a number less than or equal to 0."

    if-lez v0, :cond_c

    .line 495
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    if-lez v0, :cond_b

    .line 499
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_a

    .line 503
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 507
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 511
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    if-ltz v0, :cond_7

    .line 515
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    if-ltz v0, :cond_6

    .line 518
    iget v1, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    if-ltz v1, :cond_5

    .line 522
    iget v2, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    if-lt v2, v0, :cond_4

    .line 526
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    if-lt v0, v1, :cond_3

    .line 530
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    if-ltz v0, :cond_2

    .line 533
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    if-ltz v0, :cond_1

    .line 536
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->rotationDegrees:I

    if-ltz v0, :cond_0

    const/16 v1, 0x168

    if-gt v0, v1, :cond_0

    return-void

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set rotation degrees value to a number < 0 or > 360"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result height to smaller value than min crop result height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result width to smaller value than min crop result width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop window height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set guidelines thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set corner thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set line thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set initial crop window padding value to a number < 0 or >= 0.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set touch radius value to a number <= 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max zoom to a number < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 422
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 423
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->showCropOverlay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->showProgressBar:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 427
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 428
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 429
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 431
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 432
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 435
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 437
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 438
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 439
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 441
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 450
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 452
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputCompressQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->noOutputImage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 459
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->allowRotation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 461
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->allowFlipping:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 462
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->allowCounterRotation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 463
    iget v0, p0, Lcom/gpc/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 465
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 466
    iget-object v0, p0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 467
    iget p2, p0, Lcom/gpc/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
