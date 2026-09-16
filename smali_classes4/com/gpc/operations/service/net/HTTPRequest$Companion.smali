.class public final Lcom/gpc/operations/service/net/HTTPRequest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/service/net/HTTPRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;-><init>()V

    return-void
.end method

.method private final computeInSampleSize(II)I
    .locals 6

    .line 1
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    rem-int/lit8 v0, p2, 0x2

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 4
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x3fe2000000000000L    # 0.5625

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_6

    float-to-double v4, p1

    cmpl-double p2, v4, v2

    if-lez p2, :cond_6

    const/16 p1, 0x680

    if-ge v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x137e

    if-ge v0, p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    const/16 p1, 0x137f

    if-gt p1, v0, :cond_4

    const/16 p1, 0x2800

    if-ge v0, p1, :cond_4

    const/4 p1, 0x4

    return p1

    .line 18
    :cond_4
    div-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    float-to-double p1, p1

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_8

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, p1, v2

    if-lez v4, :cond_8

    .line 22
    div-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_7

    :goto_0
    return v1

    :cond_7
    return v0

    :cond_8
    int-to-double v0, v0

    const-wide/high16 v2, 0x4094000000000000L    # 1280.0

    div-double/2addr v2, p1

    div-double/2addr v0, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private final rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p2, :cond_1

    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 1
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 2
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final compressImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;

    invoke-direct {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compressImage start..."

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "compressImage file path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "compressImage file uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->fileInputStreamProvider(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    .line 9
    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 10
    invoke-static {v3}, Lcom/gpc/operations/utils/IO;->close(Ljava/io/Closeable;)V

    .line 12
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "compressImage srcWidth:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "compressImage srcHeight:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v3, v1}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->computeInSampleSize(II)I

    move-result v1

    .line 15
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "compressImage computeInSampleSize:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 17
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->fileInputStreamProvider(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 20
    invoke-static {p2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 21
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "compressImage decode width:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "compressImage decode height:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p1, p3}, Lcom/gpc/photoselector/util/PhotoSelectorHelper;->getExifDegree(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    .line 24
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "compressImage rotate degree:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2, p1}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 27
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    .line 31
    :cond_0
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 32
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "compressImage quality:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1, v1, v3, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 35
    :cond_1
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 36
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "compressImage bitmap size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v6, v4, p4

    if-gtz v6, :cond_2

    .line 38
    invoke-virtual {v0, v4, v5}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->setFileSize(J)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x5

    if-nez v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_0

    :goto_0
    if-eqz v2, :cond_6

    .line 54
    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 55
    invoke-virtual {v0, p4}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->setStream(Ljava/io/InputStream;)V

    .line 56
    invoke-static {p3}, Lcom/gpc/operations/utils/IO;->close(Ljava/io/Closeable;)V

    if-eqz p2, :cond_4

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz p1, :cond_5

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    :cond_5
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "compressImage end..."

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 60
    :cond_6
    invoke-static {}, Lcom/gpc/operations/service/net/HTTPRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bitmap is too large"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "37926"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fileInputStreamProvider(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "content"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 5
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p1
.end method
