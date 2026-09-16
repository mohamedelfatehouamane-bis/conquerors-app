.class public Lcom/gpc/photoselector/util/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImageThumbnail(Landroid/content/Context;Landroid/util/Size;J)Landroid/graphics/Bitmap;
    .locals 3

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2, p1, v2}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    const-string p1, "ThumbnailUtils"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadImageThumbnailAsync(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V
    .locals 6

    .line 136
    new-instance v0, Lcom/gpc/photoselector/util/ThumbnailUtils$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gpc/photoselector/util/ThumbnailUtils$4;-><init>(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V

    invoke-static {v0}, Lcom/gpc/photoselector/util/ExcutorUtils;->executeCache(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadImageThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/gpc/photoselector/util/ThumbnailUtils$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/gpc/photoselector/util/ThumbnailUtils$2;-><init>(Landroid/content/Context;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;Landroid/util/Size;)V

    invoke-static {v0}, Lcom/gpc/photoselector/util/ExcutorUtils;->executeCache(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V
    .locals 2

    .line 33
    invoke-static {p2}, Lcom/gpc/photoselector/util/BitmapManager;->load(Lcom/gpc/photoselector/model/PhotoModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 35
    sget v0, Lcom/photoselectorforts/R$drawable;->ops_a_ic_tsh_loading:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    const-string v0, "video"

    invoke-virtual {p2}, Lcom/gpc/photoselector/model/PhotoModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadVideoThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V

    return-void

    .line 39
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadImageThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V

    return-void

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 43
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public static loadVideoThumbnail(Landroid/content/Context;Landroid/util/Size;J)Landroid/graphics/Bitmap;
    .locals 3

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2, p1, v2}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 152
    const-string p1, "ThumbnailUtils"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadVideoThumbnailAsync(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V
    .locals 6

    .line 126
    new-instance v0, Lcom/gpc/photoselector/util/ThumbnailUtils$3;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gpc/photoselector/util/ThumbnailUtils$3;-><init>(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V

    invoke-static {v0}, Lcom/gpc/photoselector/util/ExcutorUtils;->executeCache(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadVideoThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V
    .locals 3

    .line 49
    invoke-virtual {p2}, Lcom/gpc/photoselector/model/PhotoModel;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/gpc/photoselector/util/ThumbnailUtils$1;

    invoke-direct {v2, p3, p2}, Lcom/gpc/photoselector/util/ThumbnailUtils$1;-><init>(Landroid/widget/ImageView;Lcom/gpc/photoselector/model/PhotoModel;)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadVideoThumbnailAsync(Landroid/content/Context;Landroid/util/Size;JLcom/gpc/photoselector/util/ThumbnailUtils$OnLoadResult;)V

    return-void
.end method
