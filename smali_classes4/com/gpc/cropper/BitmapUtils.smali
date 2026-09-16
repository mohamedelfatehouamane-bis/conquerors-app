.class final Lcom/gpc/cropper/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;,
        Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    }
.end annotation


# static fields
.field static final EMPTY_RECT:Landroid/graphics/Rect;

.field static final EMPTY_RECT_F:Landroid/graphics/RectF;

.field static final POINTS:[F

.field static final POINTS2:[F

.field static final RECT:Landroid/graphics/RectF;

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field private static mMaxTextureSize:I

.field static mStateBitmap:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/gpc/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/gpc/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/gpc/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    const/4 v0, 0x6

    .line 61
    new-array v1, v0, [F

    sput-object v1, Lcom/gpc/cropper/BitmapUtils;->POINTS:[F

    .line 66
    new-array v0, v0, [F

    sput-object v0, Lcom/gpc/cropper/BitmapUtils;->POINTS2:[F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSizeByMaxTextureSize(II)I
    .locals 3

    .line 782
    sget v0, Lcom/gpc/cropper/BitmapUtils;->mMaxTextureSize:I

    if-nez v0, :cond_0

    .line 783
    invoke-static {}, Lcom/gpc/cropper/BitmapUtils;->getMaxTextureSize()I

    move-result v0

    sput v0, Lcom/gpc/cropper/BitmapUtils;->mMaxTextureSize:I

    .line 785
    :cond_0
    sget v0, Lcom/gpc/cropper/BitmapUtils;->mMaxTextureSize:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 786
    :goto_0
    div-int v0, p1, v1

    sget v2, Lcom/gpc/cropper/BitmapUtils;->mMaxTextureSize:I

    if-gt v0, v2, :cond_2

    div-int v0, p0, v1

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static calculateInSampleSizeByReqestedSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, p3, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 769
    :cond_1
    :goto_0
    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_2

    div-int/lit8 v1, p0, 0x2

    div-int/2addr v1, v0

    if-le v1, p2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static closeSafe(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 874
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    .locals 15

    const/4 v0, 0x1

    const/4 v14, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 275
    :goto_0
    :try_start_0
    invoke-static/range {v1 .. v14}, Lcom/gpc/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move v1, v14

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    move v14, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object v1, p0

    goto :goto_0

    .line 294
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to handle OOM by sampling ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    .locals 14

    move/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 515
    invoke-static/range {v4 .. v9}, Lcom/gpc/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v6

    if-lez p9, :cond_0

    move/from16 v7, p9

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v7, v0

    :goto_0
    if-lez p10, :cond_1

    move/from16 v8, p10

    goto :goto_1

    .line 518
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    move v8, v0

    :goto_1
    const/4 v0, 0x0

    move-object v4, p0

    move-object v5, p1

    move/from16 v9, p13

    .line 526
    :try_start_0
    invoke-static/range {v4 .. v9}, Lcom/gpc/cropper/BitmapUtils;->decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object v1

    .line 527
    iget-object v0, v1, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    .line 528
    iget v1, v1, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;->sampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v1

    move-object v1, v0

    move v0, v13

    goto :goto_2

    :catch_0
    const/4 v1, 0x1

    move-object v1, v0

    const/4 v0, 0x1

    :goto_2
    if-eqz v1, :cond_4

    move/from16 v11, p11

    move/from16 v12, p12

    .line 535
    :try_start_1
    invoke-static {v1, v3, v11, v12}, Lcom/gpc/cropper/BitmapUtils;->rotateAndFlipBitmapInt(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 538
    rem-int/lit8 p0, v3, 0x5a

    if-eqz p0, :cond_2

    move-object/from16 v2, p2

    move/from16 v5, p6

    move/from16 v7, p8

    move v4, v3

    move-object v3, v6

    move/from16 v6, p7

    .line 543
    invoke-static/range {v1 .. v7}, Lcom/gpc/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    :cond_2
    new-instance p0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {p0, v1, v0}, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_3

    .line 548
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 550
    :cond_3
    throw p0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v11, p11

    move/from16 v12, p12

    move v9, v7

    move v10, v8

    move/from16 v7, p13

    move-object v8, v6

    move/from16 v6, p8

    .line 555
    invoke-static/range {v0 .. v12}, Lcom/gpc/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    move-result-object p0

    return-object p0
.end method

.method private static cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    .locals 14

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 593
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 597
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-static {v4, v5, v6, v7}, Lcom/gpc/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v4

    mul-int v4, v4, p7

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v3}, Lcom/gpc/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 603
    :try_start_1
    array-length p0, v0

    new-array v6, p0, [F

    .line 604
    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v8, p0, :cond_0

    .line 606
    aget v0, v6, v8

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    aput v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v12, p11

    move/from16 v13, p12

    .line 610
    invoke-static/range {v5 .. v13}, Lcom/gpc/cropper/BitmapUtils;->cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v5, :cond_2

    .line 622
    :try_start_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 624
    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    :cond_2
    :goto_1
    new-instance p0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {p0, v2, v4}, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 632
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load sampled bitmap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object p0, v0

    if-eqz v2, :cond_3

    .line 628
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 630
    :cond_3
    throw p0
.end method

.method static cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v1

    div-float v9, v0, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 176
    :try_start_0
    invoke-static/range {v3 .. v11}, Lcom/gpc/cropper/BitmapUtils;->cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    new-instance v2, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v2, v0, v1}, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    throw v0
.end method

.method private static cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .locals 8

    .line 221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 219
    invoke-static/range {v1 .. v6}, Lcom/gpc/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v7

    .line 228
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p2

    .line 229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    if-eqz p7, :cond_0

    neg-float v1, p6

    goto :goto_0

    :cond_0
    move v1, p6

    :goto_0
    if-eqz p8, :cond_1

    neg-float v0, p6

    goto :goto_1

    :cond_1
    move v0, p6

    .line 230
    :goto_1
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 231
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 232
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    move-object v0, v1

    .line 240
    rem-int/lit8 v1, p2, 0x5a

    if-eqz v1, :cond_3

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v2, v7

    .line 245
    invoke-static/range {v0 .. v6}, Lcom/gpc/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 8

    .line 729
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_6

    int-to-double v0, p3

    .line 732
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/16 v2, 0x5a

    if-lt p3, v2, :cond_1

    const/16 v2, 0xb4

    if-le p3, v2, :cond_0

    const/16 v2, 0x10e

    if-ge p3, v2, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iget p3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 735
    :cond_1
    :goto_0
    iget p3, p2, Landroid/graphics/Rect;->left:I

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 737
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 738
    aget v4, p1, v3

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2

    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 739
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    add-int/lit8 v3, v3, 0x1

    aget v2, p1, v3

    sub-float/2addr p3, v2

    float-to-double v6, p3

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 740
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aget p3, p1, v3

    iget v6, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr p3, v6

    float-to-double v6, p3

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int p3, v4

    .line 741
    aget v4, p1, v3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 742
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aget p1, p1, v3

    sub-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v2

    add-int/2addr p1, p3

    .line 747
    invoke-virtual {p2, v2, p3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_4

    .line 749
    invoke-static {p2, p5, p6}, Lcom/gpc/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    .line 753
    :cond_4
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p0, p1, p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_5

    .line 755
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object p1

    :cond_6
    return-object p0
.end method

.method private static decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 666
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 667
    sget-object v1, Lcom/gpc/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 669
    :catch_0
    :try_start_1
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 673
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to decode image: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 671
    :goto_1
    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 672
    throw p0
.end method

.method private static decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 645
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 646
    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 648
    sget-object v0, Lcom/gpc/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 649
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 653
    throw p1
.end method

.method static decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    .locals 3

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 132
    invoke-static {p0, p1}, Lcom/gpc/cropper/BitmapUtils;->decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 134
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "File is not a picture"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 140
    invoke-static {v1, v2, p2, p3}, Lcom/gpc/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result p2

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 142
    invoke-static {p3, v1}, Lcom/gpc/cropper/BitmapUtils;->calculateInSampleSizeByMaxTextureSize(II)I

    move-result p3

    .line 139
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    invoke-static {p0, p1, v0}, Lcom/gpc/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 147
    new-instance p2, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p2, p0, p3}, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 150
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load sampled bitmap: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/gpc/cropper/BitmapUtils$BitmapSampled;
    .locals 4

    const/4 v0, 0x0

    .line 688
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 692
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 691
    invoke-static {v2, v3, p3, p4}, Lcom/gpc/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result p3

    mul-int p5, p5, p3

    iput p5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 694
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p3, 0x0

    .line 695
    :try_start_1
    invoke-static {p0, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    :cond_0
    :try_start_2
    new-instance p4, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p4, p5, v2}, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    if-eqz p3, :cond_1

    .line 709
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_1
    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 700
    :catch_1
    :try_start_3
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p4, p4, 0x2

    iput p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 702
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p5, 0x200

    if-le p4, p5, :cond_0

    .line 707
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    if-eqz p3, :cond_2

    .line 709
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 712
    :cond_2
    new-instance p0, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/gpc/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object p3, v0

    :goto_0
    move-object v0, p0

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p3, v0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p3, v0

    goto :goto_3

    :catch_3
    move-exception p2

    move-object p3, v0

    .line 704
    :goto_2
    :try_start_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to load sampled bitmap: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 707
    :goto_3
    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    if-eqz p3, :cond_3

    .line 709
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 711
    :cond_3
    throw p1
.end method

.method private static fixRectForAspectRatio(Landroid/graphics/Rect;II)V
    .locals 1

    if-ne p1, p2, :cond_1

    .line 392
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 393
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 394
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 396
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private static getMaxTextureSize()I
    .locals 11

    const/16 v0, 0x800

    .line 825
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 826
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/4 v3, 0x2

    .line 829
    new-array v3, v3, [I

    .line 830
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v3, 0x1

    .line 833
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 834
    invoke-interface {v1, v2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 837
    aget v5, v4, v6

    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 838
    invoke-interface {v1, v2, v7, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 840
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 844
    :goto_0
    aget v9, v4, v6

    if-ge v5, v9, :cond_1

    .line 846
    aget-object v9, v7, v5

    const/16 v10, 0x302c

    invoke-interface {v1, v2, v9, v10, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 850
    aget v9, v3, v6

    if-ge v8, v9, :cond_0

    move v8, v9

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 856
    :cond_1
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 859
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method static getRectBottom([F)F
    .locals 2

    const/4 v0, 0x1

    .line 332
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static getRectCenterX([F)F
    .locals 1

    .line 353
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method static getRectCenterY([F)F
    .locals 1

    .line 360
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method static getRectFromPoints([FIIZII)Landroid/graphics/Rect;
    .locals 3

    .line 374
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 375
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p1, p1

    .line 376
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    .line 377
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 379
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_0

    .line 381
    invoke-static {p2, p4, p5}, Lcom/gpc/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    :cond_0
    return-object p2
.end method

.method static getRectHeight([F)F
    .locals 1

    .line 346
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectTop([F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static getRectLeft([F)F
    .locals 2

    const/4 v0, 0x0

    .line 311
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static getRectRight([F)F
    .locals 2

    const/4 v0, 0x0

    .line 325
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static getRectTop([F)F
    .locals 2

    const/4 v0, 0x1

    .line 318
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static getRectWidth([F)F
    .locals 1

    .line 339
    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-static {p0}, Lcom/gpc/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static resizeBitmap(Landroid/graphics/Bitmap;IILcom/gpc/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 3

    if-lez p1, :cond_5

    if-lez p2, :cond_5

    .line 454
    :try_start_0
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-ne p3, v0, :cond_5

    .line 461
    :cond_0
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 462
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 464
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 465
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float p1, p1

    div-float p1, v0, p1

    int-to-float v2, v2

    int-to-float p2, p2

    div-float p2, v2, p2

    .line 466
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-gtz p2, :cond_3

    .line 467
    sget-object p2, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    if-ne p3, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    div-float/2addr v0, p1

    float-to-int p2, v0

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 469
    invoke-static {p0, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, p0, :cond_4

    .line 475
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    .line 481
    const-string p2, "AIC"

    const-string p3, "Failed to resize cropped image, return bitmap before resize"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object p0
.end method

.method private static rotateAndFlipBitmapInt(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 7

    if-gtz p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 801
    :cond_1
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 802
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 803
    :goto_2
    invoke-virtual {v5, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 805
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v0, :cond_4

    .line 807
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p0
.end method

.method static rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;
    .locals 1

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    new-instance p2, Lcom/gpc/exif/GPCExifInterface;

    invoke-direct {p2, p1}, Lcom/gpc/exif/GPCExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 92
    :goto_0
    const-string p2, "BitmapUtils"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 94
    invoke-static {p0, v0}, Lcom/gpc/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Lcom/gpc/exif/GPCExifInterface;)Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;I)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method static rotateBitmapByExif(Landroid/graphics/Bitmap;Lcom/gpc/exif/GPCExifInterface;)Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;
    .locals 2

    .line 104
    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    .line 120
    :goto_0
    new-instance v0, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;

    invoke-direct {v0, p0, p1}, Lcom/gpc/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method static writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 442
    invoke-virtual {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/gpc/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 445
    throw p0
.end method

.method static writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 413
    :try_start_0
    const-string p2, "aic_state_store_temp"

    const-string v1, ".jpg"

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 414
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 416
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 420
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5f

    invoke-static {p0, p1, p2, v0, v1}, Lcom/gpc/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p0

    .line 424
    const-string p1, "AIC"

    const-string p2, "Failed to write bitmap to temp file for image-cropper save instance state"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
