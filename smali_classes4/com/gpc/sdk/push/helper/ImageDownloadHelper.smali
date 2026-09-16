.class public Lcom/gpc/sdk/push/helper/ImageDownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ImageDownloadHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 3
    new-instance v1, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;)V

    new-instance p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$b;

    invoke-direct {p0}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$b;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
