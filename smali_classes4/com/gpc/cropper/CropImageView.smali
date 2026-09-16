.class public Lcom/gpc/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;,
        Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;,
        Lcom/gpc/cropper/CropImageView$ScaleType;,
        Lcom/gpc/cropper/CropImageView$CropShape;,
        Lcom/gpc/cropper/CropImageView$Guidelines;,
        Lcom/gpc/cropper/CropImageView$RequestSizeOptions;,
        Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;,
        Lcom/gpc/cropper/CropImageView$OnSetCropWindowChangeListener;,
        Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;,
        Lcom/gpc/cropper/CropImageView$CropResult;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/gpc/cropper/CropImageAnimation;

.field private mAutoZoomEnabled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gpc/cropper/BitmapCroppingWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gpc/cropper/BitmapLoadingWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

.field private mDegreesRotated:I

.field private mFlipHorizontally:Z

.field private mFlipVertically:Z

.field private final mImageInverseMatrix:Landroid/graphics/Matrix;

.field private final mImageMatrix:Landroid/graphics/Matrix;

.field private final mImagePoints:[F

.field private mImageResource:I

.field private final mImageView:Landroid/widget/ImageView;

.field private mInitialDegreesRotated:I

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLoadedImageUri:Landroid/net/Uri;

.field private mLoadedSampleSize:I

.field private mMaxZoom:I

.field private mOnCropImageCompleteListener:Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;

.field private mOnCropOverlayReleasedListener:Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;

.field private mOnSetCropOverlayMovedListener:Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;

.field private mOnSetCropWindowChangeListener:Lcom/gpc/cropper/CropImageView$OnSetCropWindowChangeListener;

.field private mOnSetImageUriCompleteListener:Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;

.field private mRestoreCropWindowRect:Landroid/graphics/RectF;

.field private mRestoreDegreesRotated:I

.field private mSaveBitmapToInstanceState:Z

.field private mSaveInstanceStateBitmapUri:Landroid/net/Uri;

.field private final mScaleImagePoints:[F

.field private mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

.field private mShowCropOverlay:Z

.field private mShowProgressBar:Z

.field private mSizeChanged:Z

.field private mZoom:F

.field private mZoomOffsetX:F

.field private mZoomOffsetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/gpc/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 240
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    .line 75
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 80
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mScaleImagePoints:[F

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    .line 139
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageView;->mShowProgressBar:Z

    .line 145
    iput-boolean v1, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 185
    iput v1, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 190
    iput v2, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    .line 243
    instance-of v2, p1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 245
    const-string v4, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 247
    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/gpc/cropper/CropImageOptions;

    :cond_1
    if-nez v3, :cond_3

    .line 253
    new-instance v3, Lcom/gpc/cropper/CropImageOptions;

    invoke-direct {v3}, Lcom/gpc/cropper/CropImageOptions;-><init>()V

    if-eqz p2, :cond_3

    .line 256
    sget-object v2, Lcom/photoselectorforts/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 258
    :try_start_0
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropFixAspectRatio:I

    iget-boolean v2, v3, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 259
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 260
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropAspectRatioX:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    .line 261
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->aspectRatioX:I

    .line 262
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropAspectRatioY:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    .line 263
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->aspectRatioY:I

    .line 265
    invoke-static {}, Lcom/gpc/cropper/CropImageView$ScaleType;->values()[Lcom/gpc/cropper/CropImageView$ScaleType;

    move-result-object v0

    sget v2, Lcom/photoselectorforts/R$styleable;->CropImageView_cropScaleType:I

    iget-object v4, v3, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 266
    invoke-virtual {v4}, Lcom/gpc/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 267
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v2, v3, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 268
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 269
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v2, v3, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 270
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 272
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMaxZoom:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    .line 274
    invoke-static {}, Lcom/gpc/cropper/CropImageView$CropShape;->values()[Lcom/gpc/cropper/CropImageView$CropShape;

    move-result-object v0

    sget v2, Lcom/photoselectorforts/R$styleable;->CropImageView_cropShape:I

    iget-object v4, v3, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    .line 275
    invoke-virtual {v4}, Lcom/gpc/cropper/CropImageView$CropShape;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/gpc/cropper/CropImageOptions;->cropShape:Lcom/gpc/cropper/CropImageView$CropShape;

    .line 277
    invoke-static {}, Lcom/gpc/cropper/CropImageView$Guidelines;->values()[Lcom/gpc/cropper/CropImageView$Guidelines;

    move-result-object v0

    sget v2, Lcom/photoselectorforts/R$styleable;->CropImageView_cropGuidelines:I

    iget-object v4, v3, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    .line 279
    invoke-virtual {v4}, Lcom/gpc/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v4

    .line 278
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/gpc/cropper/CropImageOptions;->guidelines:Lcom/gpc/cropper/CropImageView$Guidelines;

    .line 280
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropSnapRadius:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    .line 281
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->snapRadius:F

    .line 282
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropTouchRadius:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    .line 283
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->touchRadius:F

    .line 284
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 285
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 288
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderLineThickness:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    .line 289
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderLineThickness:F

    .line 291
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderLineColor:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    .line 292
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderLineColor:I

    .line 293
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    .line 294
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    .line 297
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderCornerOffset:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    .line 298
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerOffset:F

    .line 300
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderCornerLength:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    .line 301
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerLength:F

    .line 303
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderCornerColor:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    .line 304
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerColor:I

    .line 306
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropGuidelinesThickness:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    .line 307
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->guidelinesThickness:F

    .line 309
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropGuidelinesColor:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    .line 310
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->guidelinesColor:I

    .line 311
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBackgroundColor:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    .line 312
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->backgroundColor:I

    .line 313
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropShowCropOverlay:I

    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    .line 314
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->showCropOverlay:Z

    .line 315
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropShowProgressBar:I

    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mShowProgressBar:Z

    .line 316
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->showProgressBar:Z

    .line 317
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    .line 318
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->borderCornerThickness:F

    .line 321
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMinCropWindowWidth:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v2, v2

    .line 323
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 325
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMinCropWindowHeight:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v2, v2

    .line 327
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 330
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMinCropResultWidthPX:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v2, v2

    .line 332
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->minCropResultWidth:I

    .line 335
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMinCropResultHeightPX:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v2, v2

    .line 337
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->minCropResultHeight:I

    .line 340
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMaxCropResultWidthPX:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v2, v2

    .line 342
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 345
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropMaxCropResultHeightPX:I

    iget v2, v3, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v2, v2

    .line 347
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/gpc/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 350
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    .line 351
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    .line 353
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    .line 354
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    .line 356
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropSaveBitmapToInstanceState:I

    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    .line 357
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    .line 362
    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropAspectRatioX:I

    .line 363
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/photoselectorforts/R$styleable;->CropImageView_cropFixAspectRatio:I

    .line 364
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iput-boolean v1, v3, Lcom/gpc/cropper/CropImageOptions;->fixAspectRatio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 369
    throw p1

    .line 373
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/gpc/cropper/CropImageOptions;->validate()V

    .line 375
    iget-object p2, v3, Lcom/gpc/cropper/CropImageOptions;->scaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    iput-object p2, p0, Lcom/gpc/cropper/CropImageView;->mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 376
    iget-boolean p2, v3, Lcom/gpc/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean p2, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 377
    iget p2, v3, Lcom/gpc/cropper/CropImageOptions;->maxZoom:I

    iput p2, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    .line 378
    iget-boolean p2, v3, Lcom/gpc/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean p2, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    .line 379
    iget-boolean p2, v3, Lcom/gpc/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean p2, p0, Lcom/gpc/cropper/CropImageView;->mShowProgressBar:Z

    .line 380
    iget-boolean p2, v3, Lcom/gpc/cropper/CropImageOptions;->flipHorizontally:Z

    iput-boolean p2, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 381
    iget-boolean p2, v3, Lcom/gpc/cropper/CropImageOptions;->flipVertically:Z

    iput-boolean p2, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    .line 383
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 384
    sget p2, Lcom/photoselectorforts/R$layout;->ops_a_view_crop_image_view:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 386
    sget p2, Lcom/photoselectorforts/R$id;->ImageView_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    .line 387
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 389
    sget p2, Lcom/photoselectorforts/R$id;->CropOverlayView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gpc/cropper/CropOverlayView;

    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 390
    new-instance p2, Lcom/gpc/cropper/CropImageView$1;

    invoke-direct {p2, p0}, Lcom/gpc/cropper/CropImageView$1;-><init>(Lcom/gpc/cropper/CropImageView;)V

    invoke-virtual {p1, p2}, Lcom/gpc/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/gpc/cropper/CropOverlayView$CropWindowChangeListener;)V

    .line 405
    invoke-virtual {p1, v3}, Lcom/gpc/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/gpc/cropper/CropImageOptions;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/cropper/CropImageView;ZZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/gpc/cropper/CropImageView;)Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/gpc/cropper/CropImageView;->mOnCropOverlayReleasedListener:Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gpc/cropper/CropImageView;)Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/gpc/cropper/CropImageView;->mOnSetCropOverlayMovedListener:Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;

    return-object p0
.end method

.method private applyImageMatrix(FFZZ)V
    .locals 8

    .line 1732
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_a

    cmpl-float v1, p2, v0

    if-lez v1, :cond_a

    .line 1734
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1735
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 1736
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1738
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1741
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1742
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    .line 1741
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1743
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1746
    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    if-lez v2, :cond_0

    .line 1747
    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1749
    invoke-static {v5}, Lcom/gpc/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v5

    iget-object v6, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1750
    invoke-static {v6}, Lcom/gpc/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v6

    .line 1747
    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1751
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1755
    :cond_0
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1757
    invoke-static {v2}, Lcom/gpc/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v2

    div-float v2, p1, v2

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1758
    invoke-static {v3}, Lcom/gpc/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v3

    div-float v3, p2, v3

    .line 1756
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1759
    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    sget-object v5, Lcom/gpc/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    sget-object v5, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/gpc/cropper/CropImageView$ScaleType;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_1

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_2

    :cond_1
    cmpl-float v3, v2, v6

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eqz v3, :cond_3

    .line 1762
    :cond_2
    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1765
    invoke-static {v5}, Lcom/gpc/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v5

    iget-object v6, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1766
    invoke-static {v6}, Lcom/gpc/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v6

    .line 1762
    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1767
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1771
    :cond_3
    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    neg-float v2, v2

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    .line 1772
    :goto_0
    iget-boolean v3, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    neg-float v3, v3

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    .line 1773
    :goto_1
    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1776
    invoke-static {v6}, Lcom/gpc/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    iget-object v7, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    .line 1777
    invoke-static {v7}, Lcom/gpc/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v7

    .line 1773
    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1778
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1780
    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p3, :cond_8

    .line 1785
    iget-object p3, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p3}, Lcom/gpc/cropper/BitmapUtils;->getRectWidth([F)F

    move-result p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    div-float/2addr p1, v4

    .line 1789
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p3}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p3

    neg-float p3, p3

    .line 1788
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1790
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v5

    sub-float/2addr p3, v5

    .line 1787
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v2

    :goto_2
    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    .line 1793
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p1}, Lcom/gpc/cropper/BitmapUtils;->getRectHeight([F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    div-float/2addr p2, v4

    .line 1797
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p1}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result p1

    neg-float p1, p1

    .line 1796
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1798
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p3}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result p3

    sub-float/2addr p2, p3

    .line 1795
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v0, p1, v3

    :goto_3
    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    goto :goto_4

    .line 1803
    :cond_8
    iget p3, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    mul-float p3, p3, v2

    iget v0, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    .line 1804
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v0, v1, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    .line 1806
    iget p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    mul-float p1, p1, v3

    iget p3, v1, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    .line 1807
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v1, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    .line 1812
    :goto_4
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    mul-float p2, p2, v2

    iget p3, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    mul-float p3, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1813
    iget p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    mul-float p1, p1, v2

    iget p2, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    mul-float p2, p2, v3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1814
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1, v1}, Lcom/gpc/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1815
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1816
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    if-eqz p4, :cond_9

    .line 1821
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mAnimation:Lcom/gpc/cropper/CropImageAnimation;

    iget-object p2, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    iget-object p3, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Lcom/gpc/cropper/CropImageAnimation;->setEndState([FLandroid/graphics/Matrix;)V

    .line 1822
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/gpc/cropper/CropImageView;->mAnimation:Lcom/gpc/cropper/CropImageAnimation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1824
    :cond_9
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_5
    const/4 p1, 0x0

    .line 1828
    invoke-direct {p0, p1}, Lcom/gpc/cropper/CropImageView;->updateImageBounds(Z)V

    :cond_a
    return-void
.end method

.method private clearImageInt()V
    .locals 3

    .line 1324
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1325
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 1327
    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 1330
    iput v1, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    .line 1331
    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 1332
    iput v2, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    .line 1333
    iput v1, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1334
    iput v1, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    const/4 v1, 0x0

    .line 1335
    iput v1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    .line 1336
    iput v1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    .line 1337
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1338
    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mSaveInstanceStateBitmapUri:Landroid/net/Uri;

    .line 1340
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1342
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->setCropOverlayVisibility()V

    return-void
.end method

.method private static getOnMeasureSpec(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 1876
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    return p2
.end method

.method private handleCropWindowChanged(ZZ)V
    .locals 11

    .line 1667
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v0

    .line 1668
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v1

    .line 1669
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    if-lez v0, :cond_a

    if-lez v1, :cond_a

    .line 1671
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1673
    iget p2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_0

    iget p2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_0

    iget p2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_0

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_9

    :cond_0
    int-to-float p2, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    .line 1677
    invoke-direct {p0, p2, v0, v1, v1}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    goto/16 :goto_2

    .line 1679
    :cond_1
    iget-boolean v4, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_2

    iget v4, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1682
    :cond_2
    iget v4, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    iget v6, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    .line 1683
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v8, v6, v7

    cmpg-float v4, v4, v8

    if-gez v4, :cond_3

    .line 1684
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v8, v1

    mul-float v7, v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    .line 1685
    iget v4, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    int-to-float v4, v4

    .line 1689
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v9, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    div-float/2addr v7, v9

    const v9, 0x3f23d70a    # 0.64f

    div-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 1690
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v10, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    div-float/2addr v7, v10

    div-float/2addr v7, v9

    div-float/2addr v8, v7

    .line 1688
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1686
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 1692
    :goto_0
    iget v6, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v0

    const v8, 0x3f266666    # 0.65f

    mul-float v9, v7, v8

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v9, v1

    mul-float v9, v9, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    .line 1697
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v6, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    div-float/2addr v4, v6

    const v6, 0x3f028f5c    # 0.51f

    div-float/2addr v4, v6

    div-float/2addr v7, v4

    int-to-float v4, v1

    .line 1698
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v8, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    div-float/2addr v2, v8

    div-float/2addr v2, v6

    div-float/2addr v4, v2

    .line 1696
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1694
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1700
    :cond_5
    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v5, v4

    :goto_1
    cmpl-float v2, v5, v3

    if-lez v2, :cond_9

    .line 1704
    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_9

    if-eqz p2, :cond_8

    .line 1706
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mAnimation:Lcom/gpc/cropper/CropImageAnimation;

    if-nez v2, :cond_7

    .line 1708
    new-instance v2, Lcom/gpc/cropper/CropImageAnimation;

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-direct {v2, v3, v4}, Lcom/gpc/cropper/CropImageAnimation;-><init>(Landroid/widget/ImageView;Lcom/gpc/cropper/CropOverlayView;)V

    iput-object v2, p0, Lcom/gpc/cropper/CropImageView;->mAnimation:Lcom/gpc/cropper/CropImageAnimation;

    .line 1711
    :cond_7
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mAnimation:Lcom/gpc/cropper/CropImageAnimation;

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    iget-object v4, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Lcom/gpc/cropper/CropImageAnimation;->setStartState([FLandroid/graphics/Matrix;)V

    .line 1714
    :cond_8
    iput v5, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 1716
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1719
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/gpc/cropper/CropImageView;->mOnSetCropWindowChangeListener:Lcom/gpc/cropper/CropImageView$OnSetCropWindowChangeListener;

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    .line 1720
    invoke-interface {p2}, Lcom/gpc/cropper/CropImageView$OnSetCropWindowChangeListener;->onCropWindowChanged()V

    :cond_a
    return-void
.end method

.method private mapImagePointsByImageMatrix()V
    .locals 11

    .line 1838
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 1839
    aput v2, v0, v3

    .line 1840
    iget-object v4, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 1841
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 1842
    iget-object v6, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    .line 1843
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    iget-object v6, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    .line 1844
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    const/4 v6, 0x6

    aput v2, v0, v6

    .line 1845
    iget-object v9, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    .line 1846
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1847
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mScaleImagePoints:[F

    aput v2, v0, v1

    .line 1848
    aput v2, v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    .line 1849
    aput v1, v0, v5

    .line 1850
    aput v2, v0, v4

    .line 1851
    aput v1, v0, v7

    .line 1852
    aput v1, v0, v8

    .line 1853
    aput v2, v0, v6

    .line 1854
    aput v1, v0, v10

    .line 1855
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1297
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->clearImageInt()V

    .line 1299
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1300
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1302
    iput-object p3, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 1303
    iput p2, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    .line 1304
    iput p4, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    .line 1305
    iput p5, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    .line 1307
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1309
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    .line 1310
    invoke-virtual {p1}, Lcom/gpc/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 1311
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->setCropOverlayVisibility()V

    :cond_1
    return-void
.end method

.method private setCropOverlayVisibility()V
    .locals 2

    .line 1889
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    .line 1890
    iget-boolean v1, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateImageBounds(Z)V
    .locals 5

    .line 1899
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1903
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mScaleImagePoints:[F

    .line 1904
    invoke-static {v2}, Lcom/gpc/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1905
    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mScaleImagePoints:[F

    .line 1906
    invoke-static {v1}, Lcom/gpc/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v1

    div-float/2addr v2, v1

    .line 1907
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1908
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1907
    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/gpc/cropper/CropOverlayView;->setCropWindowLimits(FFFF)V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mImagePoints:[F

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/cropper/CropOverlayView;->setBounds([FII)V

    return-void
.end method


# virtual methods
.method public clearAspectRatio()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 616
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->setAspectRatioY(I)V

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public clearImage()V
    .locals 2

    .line 1132
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->clearImageInt()V

    .line 1133
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public flipImageHorizontally()V
    .locals 4

    .line 1221
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1222
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    return-void
.end method

.method public flipImageVertically()V
    .locals 4

    .line 1229
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    .line 1230
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    return-void
.end method

.method public getAspectRatio()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 6

    .line 773
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    const/16 v1, 0x8

    .line 775
    new-array v2, v1, [F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v2, v3

    const/4 v3, 0x2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v2, v3

    const/4 v3, 0x3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v2, v3

    const/4 v3, 0x4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v2, v3

    const/4 v3, 0x5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v2, v3

    const/4 v3, 0x6

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v2, v3

    const/4 v3, 0x7

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    aput v0, v2, v3

    .line 787
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 788
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 791
    aget v0, v2, v4

    iget v3, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    aput v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 8

    .line 728
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    .line 729
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v2, v1

    .line 735
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v1

    .line 737
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v0

    .line 738
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, v0

    .line 741
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 745
    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v4

    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 746
    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v5

    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 747
    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v6

    move v7, v3

    move v3, v2

    move v2, v7

    .line 741
    invoke-static/range {v1 .. v6}, Lcom/gpc/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCropShape()Lcom/gpc/cropper/CropImageView$CropShape;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->getCropShape()Lcom/gpc/cropper/CropImageView$CropShape;

    move-result-object v0

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 759
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 827
    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v0, v0, v1}, Lcom/gpc/cropper/CropImageView;->getCroppedImage(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 839
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/cropper/CropImageView;->getCroppedImage(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCroppedImage(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 852
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 853
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 855
    sget-object v2, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    move/from16 v13, p1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 856
    :goto_0
    sget-object v2, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-eq v1, v2, :cond_1

    move/from16 v14, p2

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 858
    :goto_1
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    sget-object v2, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-ne v1, v2, :cond_3

    .line 860
    :cond_2
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v8, v2, v3

    .line 861
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v9, v2, v3

    .line 864
    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 866
    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    iget v7, v0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 870
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v10

    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 871
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v11

    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 872
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v12

    iget-boolean v15, v0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    iget-boolean v2, v0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    move/from16 v16, v2

    .line 863
    invoke-static/range {v4 .. v16}, Lcom/gpc/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object v2

    .line 877
    iget-object v2, v2, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 879
    :cond_3
    iget-object v3, v0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 882
    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    iget v5, v0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 884
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v6

    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 885
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v7

    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 886
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v8

    iget-boolean v9, v0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    iget-boolean v10, v0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    .line 880
    invoke-static/range {v3 .. v10}, Lcom/gpc/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object v2

    iget-object v2, v2, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    .line 892
    :goto_2
    invoke-static {v2, v13, v14, v1}, Lcom/gpc/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCroppedImageAsync()V
    .locals 2

    const/4 v0, 0x0

    .line 904
    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v0, v0, v1}, Lcom/gpc/cropper/CropImageView;->getCroppedImageAsync(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public getCroppedImageAsync(II)V
    .locals 1

    .line 917
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/cropper/CropImageView;->getCroppedImageAsync(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public getCroppedImageAsync(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V
    .locals 8

    .line 930
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 933
    invoke-virtual/range {v1 .. v7}, Lcom/gpc/cropper/CropImageView;->startCropWorkerTask(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void

    .line 931
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGuidelines()Lcom/gpc/cropper/CropImageView$Guidelines;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->getGuidelines()Lcom/gpc/cropper/CropImageView$Guidelines;

    move-result-object v0

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    return v0
.end method

.method public getRotatedDegrees()I
    .locals 1

    .line 512
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    return v0
.end method

.method public getScaleType()Lcom/gpc/cropper/CropImageView$ScaleType;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    return-object v0
.end method

.method public getWholeImageRect()Landroid/graphics/Rect;
    .locals 4

    .line 710
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    .line 711
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 716
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, v0

    .line 717
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, v0

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public isAutoZoomEnabled()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    return v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v0

    return v0
.end method

.method public isFlippedHorizontally()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    return v0
.end method

.method public isSaveBitmapToInstanceState()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    return v0
.end method

.method public isShowCropOverlay()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    return v0
.end method

.method public isShowProgressBar()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mShowProgressBar:Z

    return v0
.end method

.method onImageCroppingAsyncComplete(Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;)V
    .locals 12

    const/4 v0, 0x0

    .line 1265
    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1268
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    .line 1270
    new-instance v1, Lcom/gpc/cropper/CropImageView$CropResult;

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object v6, p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 1277
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    .line 1278
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 1279
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 1280
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getRotatedDegrees()I

    move-result v10

    iget v11, p1, Lcom/gpc/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    invoke-direct/range {v1 .. v11}, Lcom/gpc/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1282
    invoke-interface {v0, p0, v1}, Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;->onCropImageComplete(Lcom/gpc/cropper/CropImageView;Lcom/gpc/cropper/CropImageView$CropResult;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1610
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1612
    iget v0, p1, Lcom/gpc/cropper/CropImageView;->mLayoutWidth:I

    const/4 v1, 0x1

    if-lez v0, :cond_4

    iget v0, p1, Lcom/gpc/cropper/CropImageView;->mLayoutHeight:I

    if-lez v0, :cond_4

    .line 1614
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1615
    iget v2, p1, Lcom/gpc/cropper/CropImageView;->mLayoutWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1616
    iget v2, p1, Lcom/gpc/cropper/CropImageView;->mLayoutHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1617
    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1619
    iget-object v0, p1, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    const/4 p4, 0x0

    .line 1620
    invoke-direct {p0, p2, p3, v1, p4}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1624
    iget-object p5, p1, Lcom/gpc/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    if-eqz p5, :cond_1

    .line 1625
    iget p5, p1, Lcom/gpc/cropper/CropImageView;->mRestoreDegreesRotated:I

    iget v0, p1, Lcom/gpc/cropper/CropImageView;->mInitialDegreesRotated:I

    if-eq p5, v0, :cond_0

    .line 1626
    iput p5, p1, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    .line 1627
    invoke-direct {p0, p2, p3, v1, p4}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1629
    :cond_0
    iget-object p2, p1, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object p3, p1, Lcom/gpc/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1630
    iget-object p2, p1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    iget-object p3, p1, Lcom/gpc/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Lcom/gpc/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1631
    invoke-direct {p0, p4, p4}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1632
    iget-object p2, p1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p2}, Lcom/gpc/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    const/4 p2, 0x0

    .line 1633
    iput-object p2, p1, Lcom/gpc/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    return-void

    .line 1634
    :cond_1
    iget-boolean p2, p1, Lcom/gpc/cropper/CropImageView;->mSizeChanged:Z

    if-eqz p2, :cond_2

    .line 1635
    iput-boolean p4, p1, Lcom/gpc/cropper/CropImageView;->mSizeChanged:Z

    .line 1636
    invoke-direct {p0, p4, p4}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    :cond_2
    return-void

    .line 1639
    :cond_3
    invoke-direct {p0, v1}, Lcom/gpc/cropper/CropImageView;->updateImageBounds(Z)V

    return-void

    .line 1642
    :cond_4
    invoke-direct {p0, v1}, Lcom/gpc/cropper/CropImageView;->updateImageBounds(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1549
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1551
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1552
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1553
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1554
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1556
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-nez p2, :cond_0

    .line 1560
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 1570
    :cond_0
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v2, :cond_1

    int-to-double v5, p1

    .line 1571
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 1573
    :goto_0
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_2

    int-to-double v7, p2

    .line 1574
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v9, v2

    div-double/2addr v7, v9

    goto :goto_1

    :cond_2
    move-wide v7, v3

    :goto_1
    cmpl-double v2, v5, v3

    if-nez v2, :cond_4

    cmpl-double v2, v7, v3

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1590
    :cond_3
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1591
    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_2
    cmpg-double v2, v5, v7

    if-gtz v2, :cond_5

    .line 1582
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v5

    double-to-int v3, v2

    move v2, p1

    goto :goto_3

    .line 1585
    :cond_5
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v7

    double-to-int v2, v2

    move v3, p2

    .line 1594
    :goto_3
    invoke-static {v0, p1, v2}, Lcom/gpc/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result p1

    .line 1595
    invoke-static {v1, p2, v3}, Lcom/gpc/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result p2

    .line 1597
    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mLayoutWidth:I

    .line 1598
    iput p2, p0, Lcom/gpc/cropper/CropImageView;->mLayoutHeight:I

    .line 1600
    invoke-virtual {p0, p1, p2}, Lcom/gpc/cropper/CropImageView;->setMeasuredDimension(II)V

    return-void

    .line 1603
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/gpc/cropper/CropImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1482
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_a

    .line 1483
    check-cast p1, Landroid/os/Bundle;

    .line 1486
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    if-nez v0, :cond_9

    .line 1491
    const-string v0, "LOADED_IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 1493
    const-string v0, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1496
    sget-object v1, Lcom/gpc/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gpc/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    sget-object v0, Lcom/gpc/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1499
    :goto_0
    sput-object v2, Lcom/gpc/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 1500
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1501
    const-string v1, "LOADED_SAMPLE_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/gpc/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 1504
    :goto_1
    iget-object v0, v1, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 1505
    invoke-virtual {p0, v4}, Lcom/gpc/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    .line 1508
    const-string v0, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 1510
    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropImageView;->setImageResource(I)V

    goto :goto_2

    .line 1512
    :cond_3
    const-string v0, "LOADING_IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1514
    invoke-virtual {p0, v0}, Lcom/gpc/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    .line 1519
    :cond_4
    :goto_2
    const-string v0, "DEGREES_ROTATED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/gpc/cropper/CropImageView;->mRestoreDegreesRotated:I

    iput v0, v1, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    .line 1521
    const-string v0, "INITIAL_CROP_RECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 1523
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_6

    .line 1524
    :cond_5
    iget-object v2, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v2, v0}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1527
    :cond_6
    const-string v0, "CROP_WINDOW_RECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    .line 1528
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1529
    :cond_7
    iput-object v0, v1, Lcom/gpc/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 1532
    :cond_8
    iget-object v0, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    const-string v2, "CROP_SHAPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/gpc/cropper/CropImageView$CropShape;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/cropper/CropOverlayView;->setCropShape(Lcom/gpc/cropper/CropImageView$CropShape;)V

    .line 1534
    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 1535
    const-string v0, "CROP_MAX_ZOOM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    .line 1537
    const-string v0, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1538
    const-string v0, "CROP_FLIP_VERTICALLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    goto :goto_3

    :cond_9
    move-object v1, p0

    .line 1541
    :goto_3
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_a
    move-object v1, p0

    .line 1543
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1434
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    if-ge v0, v1, :cond_0

    .line 1435
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1438
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1439
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 1440
    iget-boolean v3, p0, Lcom/gpc/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    iget v3, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    if-ge v3, v1, :cond_1

    .line 1444
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/gpc/cropper/CropImageView;->mSaveInstanceStateBitmapUri:Landroid/net/Uri;

    .line 1443
    invoke-static {v1, v2, v3}, Lcom/gpc/cropper/BitmapUtils;->writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/cropper/CropImageView;->mSaveInstanceStateBitmapUri:Landroid/net/Uri;

    :cond_1
    if-eqz v2, :cond_2

    .line 1446
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1447
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1448
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/gpc/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    .line 1449
    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    :cond_2
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 1452
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/cropper/BitmapLoadingWorkerTask;

    if-eqz v1, :cond_3

    .line 1454
    const-string v3, "LOADING_IMAGE_URI"

    invoke-virtual {v1}, Lcom/gpc/cropper/BitmapLoadingWorkerTask;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1457
    :cond_3
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1458
    const-string v1, "LOADED_IMAGE_URI"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1459
    const-string v1, "LOADED_IMAGE_RESOURCE"

    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mImageResource:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1460
    const-string v1, "LOADED_SAMPLE_SIZE"

    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1461
    const-string v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1462
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "INITIAL_CROP_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1464
    sget-object v1, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1466
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1467
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1469
    const-string v1, "CROP_WINDOW_RECT"

    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1470
    iget-object v1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropOverlayView;->getCropShape()Lcom/gpc/cropper/CropImageView$CropShape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/cropper/CropImageView$CropShape;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_SHAPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v1, "CROP_AUTO_ZOOM_ENABLED"

    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1472
    const-string v1, "CROP_MAX_ZOOM"

    iget v2, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    const-string v1, "CROP_FLIP_HORIZONTALLY"

    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1474
    const-string v1, "CROP_FLIP_VERTICALLY"

    iget-boolean v2, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method onSetImageUriAsyncComplete(Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;)V
    .locals 7

    const/4 v0, 0x0

    .line 1243
    iput-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1246
    iget-object v0, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 1247
    iget v0, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mInitialDegreesRotated:I

    .line 1248
    iget-object v2, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget v5, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->loadSampleSize:I

    iget v6, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/gpc/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 1251
    :goto_0
    iget-object v0, v1, Lcom/gpc/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;

    if-eqz v0, :cond_1

    .line 1253
    iget-object v2, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    invoke-interface {v0, p0, v2, p1}, Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;->onSetImageUriComplete(Lcom/gpc/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1652
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1653
    :goto_0
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mSizeChanged:Z

    return-void
.end method

.method public resetCropRect()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 811
    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    const/4 v0, 0x0

    .line 812
    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    .line 813
    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    .line 814
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mInitialDegreesRotated:I

    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 816
    iput-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    .line 817
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 818
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/gpc/cropper/CropOverlayView;->resetCropWindowRect()V

    return-void
.end method

.method public rotateImage(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1143
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    if-gez v1, :cond_0

    .line 1146
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    .line 1148
    :cond_0
    rem-int/lit16 v1, v1, 0x168

    .line 1151
    :goto_0
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1152
    invoke-virtual {v2}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    const/16 v2, 0x2d

    if-le v1, v2, :cond_1

    const/16 v2, 0x87

    if-lt v1, v2, :cond_2

    :cond_1
    const/16 v2, 0xd7

    if-le v1, v2, :cond_3

    const/16 v2, 0x131

    if-ge v1, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1154
    :goto_1
    sget-object v5, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v6}, Lcom/gpc/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1155
    sget-object v5, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1156
    sget-object v7, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_3
    div-float/2addr v7, v6

    if-eqz v2, :cond_6

    .line 1158
    iget-boolean v2, v0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1159
    iget-boolean v6, v0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    iput-boolean v6, v0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1160
    iput-boolean v2, v0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    .line 1163
    :cond_6
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1165
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    sget-object v6, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v2, v4

    .line 1166
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    sget-object v6, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v2, v3

    .line 1167
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput v8, v2, v6

    .line 1168
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    const/4 v9, 0x3

    aput v8, v2, v9

    .line 1169
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v2, v10

    .line 1170
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    const/4 v12, 0x5

    aput v8, v2, v12

    .line 1171
    iget-object v2, v0, Lcom/gpc/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v8, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1174
    iget v2, v0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    .line 1176
    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1179
    iget-object v1, v0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    sget-object v8, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1180
    iget v1, v0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    float-to-double v1, v1

    sget-object v8, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v8, v8, v10

    sget-object v13, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v13, v13, v6

    sub-float/2addr v8, v13

    float-to-double v13, v8

    const/16 p1, 0x3

    const/4 v8, 0x4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 1182
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sget-object v15, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v15, v15, v12

    sget-object v16, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v16, v16, p1

    sub-float v15, v15, v16

    move-wide/from16 v17, v13

    const/16 v16, 0x5

    float-to-double v12, v15

    .line 1183
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double v13, v17, v12

    .line 1181
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double/2addr v1, v12

    double-to-float v1, v1

    iput v1, v0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    .line 1184
    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    .line 1186
    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1188
    iget-object v1, v0, Lcom/gpc/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    sget-object v11, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1191
    sget-object v1, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v1, v1, v8

    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 1193
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget-object v6, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v6, v6, v16

    sget-object v8, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v8, v8, p1

    sub-float/2addr v6, v8

    float-to-double v11, v6

    .line 1194
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v1, v8

    .line 1192
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v5, v5

    mul-double v5, v5, v1

    double-to-float v5, v5

    float-to-double v6, v7

    mul-double v6, v6, v1

    double-to-float v1, v6

    .line 1200
    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    sget-object v6, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v6, v6, v4

    sub-float/2addr v6, v5

    sget-object v7, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v7, v7, v3

    sub-float/2addr v7, v1

    sget-object v8, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v8, v8, v4

    add-float/2addr v8, v5

    sget-object v5, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    aget v5, v5, v3

    add-float/2addr v5, v1

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1206
    iget-object v1, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 1207
    iget-object v1, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    sget-object v2, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/gpc/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1208
    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1209
    invoke-direct {v0, v4, v4}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1213
    iget-object v1, v0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/gpc/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    :cond_7
    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;)V
    .locals 7

    .line 945
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    sget-object v6, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 7

    const/4 v5, 0x0

    .line 959
    sget-object v6, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;III)V
    .locals 7

    .line 981
    sget-object v6, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/gpc/cropper/CropImageView$RequestSizeOptions;)V
    .locals 8

    .line 1009
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v2, p4

    move v3, p5

    move-object v4, p6

    .line 1012
    invoke-virtual/range {v1 .. v7}, Lcom/gpc/cropper/CropImageView;->startCropWorkerTask(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void

    .line 1010
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAspectRatio(II)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 607
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1, p2}, Lcom/gpc/cropper/CropOverlayView;->setAspectRatioY(I)V

    const/4 p1, 0x1

    .line 608
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setAutoZoomEnabled(Z)V
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eq v0, p1, :cond_0

    .line 456
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mAutoZoomEnabled:Z

    const/4 p1, 0x0

    .line 457
    invoke-direct {p0, p1, p1}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 458
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCropShape(Lcom/gpc/cropper/CropImageView$CropShape;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setCropShape(Lcom/gpc/cropper/CropImageView$CropShape;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setFlippedHorizontally(Z)V
    .locals 3

    .line 553
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    if-eq v0, p1, :cond_0

    .line 554
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    .line 555
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    :cond_0
    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 3

    .line 570
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    if-eq v0, p1, :cond_0

    .line 571
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    .line 572
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/gpc/cropper/CropImageView$Guidelines;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setGuidelines(Lcom/gpc/cropper/CropImageView$Guidelines;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1059
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1060
    invoke-direct/range {v2 .. v7}, Lcom/gpc/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Lcom/gpc/exif/GPCExifInterface;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1076
    invoke-static {p1, p2}, Lcom/gpc/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Lcom/gpc/exif/GPCExifInterface;)Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object p1

    .line 1077
    iget-object p2, p1, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 1078
    iget v0, p1, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    .line 1079
    iget p1, p1, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mInitialDegreesRotated:I

    move-object v2, p2

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    const/4 v6, 0x0

    .line 1083
    :goto_0
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    .line 1084
    invoke-direct/range {v1 .. v6}, Lcom/gpc/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1095
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    .line 1096
    invoke-direct/range {v1 .. v6}, Lcom/gpc/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1110
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/cropper/BitmapLoadingWorkerTask;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1114
    invoke-virtual {v0, v2}, Lcom/gpc/cropper/BitmapLoadingWorkerTask;->cancel(Z)Z

    .line 1118
    :cond_1
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->clearImageInt()V

    .line 1119
    iput-object v1, p0, Lcom/gpc/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 1120
    iput v0, p0, Lcom/gpc/cropper/CropImageView;->mRestoreDegreesRotated:I

    .line 1121
    iget-object v2, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v2, v1}, Lcom/gpc/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1122
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/gpc/cropper/BitmapLoadingWorkerTask;

    invoke-direct {v2, p0, p1}, Lcom/gpc/cropper/BitmapLoadingWorkerTask;-><init>(Lcom/gpc/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gpc/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1123
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/cropper/BitmapLoadingWorkerTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Lcom/gpc/cropper/BitmapLoadingWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/cropper/CropOverlayView;->setMaxCropResultSize(II)V

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 1

    .line 483
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 484
    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mMaxZoom:I

    const/4 p1, 0x0

    .line 485
    invoke-direct {p0, p1, p1}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 486
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/cropper/CropOverlayView;->setMinCropResultSize(II)V

    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 467
    invoke-direct {p0, p1, p1}, Lcom/gpc/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 468
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnCropImageCompleteListener(Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/gpc/cropper/CropImageView$OnCropImageCompleteListener;

    return-void
.end method

.method public setOnCropWindowChangedListener(Lcom/gpc/cropper/CropImageView$OnSetCropWindowChangeListener;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mOnSetCropWindowChangeListener:Lcom/gpc/cropper/CropImageView$OnSetCropWindowChangeListener;

    return-void
.end method

.method public setOnSetCropOverlayMovedListener(Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mOnSetCropOverlayMovedListener:Lcom/gpc/cropper/CropImageView$OnSetCropOverlayMovedListener;

    return-void
.end method

.method public setOnSetCropOverlayReleasedListener(Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mOnCropOverlayReleasedListener:Lcom/gpc/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/gpc/cropper/CropImageView$OnSetImageUriCompleteListener;

    return-void
.end method

.method public setRotatedDegrees(I)V
    .locals 1

    .line 521
    iget v0, p0, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    if-eq v0, p1, :cond_0

    sub-int/2addr p1, v0

    .line 522
    invoke-virtual {p0, p1}, Lcom/gpc/cropper/CropImageView;->rotateImage(I)V

    :cond_0
    return-void
.end method

.method public setSaveBitmapToInstanceState(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    return-void
.end method

.method public setScaleType(Lcom/gpc/cropper/CropImageView$ScaleType;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 421
    iput-object p1, p0, Lcom/gpc/cropper/CropImageView;->mScaleType:Lcom/gpc/cropper/CropImageView$ScaleType;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 422
    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mZoom:F

    const/4 p1, 0x0

    .line 423
    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetY:F

    iput p1, p0, Lcom/gpc/cropper/CropImageView;->mZoomOffsetX:F

    .line 424
    iget-object p1, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/gpc/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 425
    invoke-virtual {p0}, Lcom/gpc/cropper/CropImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    if-eq v0, p1, :cond_0

    .line 665
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mShowCropOverlay:Z

    .line 666
    invoke-direct {p0}, Lcom/gpc/cropper/CropImageView;->setCropOverlayVisibility()V

    :cond_0
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 1

    .line 644
    iget-boolean v0, p0, Lcom/gpc/cropper/CropImageView;->mShowProgressBar:Z

    if-eq v0, p1, :cond_0

    .line 645
    iput-boolean p1, p0, Lcom/gpc/cropper/CropImageView;->mShowProgressBar:Z

    :cond_0
    return-void
.end method

.method public setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/gpc/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_0
    return-void
.end method

.method public startCropWorkerTask(IILcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v12, p3

    .line 1369
    iget-object v2, v1, Lcom/gpc/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 1371
    iget-object v0, v1, Lcom/gpc/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1374
    iget-object v0, v1, Lcom/gpc/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1377
    invoke-virtual {v0, v3}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->cancel(Z)Z

    .line 1380
    :cond_1
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v4, 0x0

    if-eq v12, v0, :cond_2

    move/from16 v10, p1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 1381
    :goto_1
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-eq v12, v0, :cond_3

    move/from16 v9, p2

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 1383
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v5, v1, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v5, v5, v0

    .line 1384
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v1, Lcom/gpc/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v0, v0, v6

    .line 1385
    iget-object v7, v1, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    if-gt v6, v3, :cond_4

    sget-object v3, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-ne v12, v3, :cond_5

    .line 1387
    :cond_4
    new-instance v2, Ljava/lang/ref/WeakReference;

    move v6, v0

    new-instance v0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;

    move-object v3, v2

    iget-object v2, v1, Lcom/gpc/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    move-object v7, v3

    .line 1392
    invoke-virtual {v1}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    const/4 v8, 0x0

    iget v4, v1, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    iget-object v11, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1396
    invoke-virtual {v11}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v11

    iget-object v13, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1397
    invoke-virtual {v13}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v13

    iget-object v14, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1398
    invoke-virtual {v14}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v14

    iget-boolean v12, v1, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    move v8, v13

    const/4 v15, 0x0

    iget-boolean v13, v1, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, v7

    move v7, v11

    move v11, v9

    move v9, v14

    move-object/from16 v14, p3

    invoke-direct/range {v0 .. v17}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;-><init>(Lcom/gpc/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v3, v18

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/gpc/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    goto :goto_3

    .line 1408
    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v3, v0

    new-instance v0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;

    move-object v4, v3

    .line 1413
    invoke-virtual {v1}, Lcom/gpc/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    move-object v5, v4

    iget v4, v1, Lcom/gpc/cropper/CropImageView;->mDegreesRotated:I

    iget-object v6, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1415
    invoke-virtual {v6}, Lcom/gpc/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v6

    iget-object v7, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1416
    invoke-virtual {v7}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v7

    iget-object v8, v1, Lcom/gpc/cropper/CropImageView;->mCropOverlayView:Lcom/gpc/cropper/CropOverlayView;

    .line 1417
    invoke-virtual {v8}, Lcom/gpc/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v8

    move-object v11, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    iget-boolean v10, v1, Lcom/gpc/cropper/CropImageView;->mFlipHorizontally:Z

    move-object v12, v11

    iget-boolean v11, v1, Lcom/gpc/cropper/CropImageView;->mFlipVertically:Z

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v19, v12

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v15}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;-><init>(Lcom/gpc/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/gpc/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v11, v19

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, v1, Lcom/gpc/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1427
    :goto_3
    iget-object v0, v1, Lcom/gpc/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/cropper/BitmapCroppingWorkerTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v15, 0x0

    new-array v3, v15, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/gpc/cropper/BitmapCroppingWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    return-void
.end method
