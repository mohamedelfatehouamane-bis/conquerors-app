.class public Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/push/helper/ImageDownloadHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->c:Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " "

    const-string v1, "Error closing output stream"

    const-string v2, "Error closing input stream"

    const-string v3, "Server returned HTTP "

    .line 1
    iget-object v4, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadPath: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImageDownloadHelper"

    invoke-static {v6, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image already downloaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->c:Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;

    invoke-interface {v0, v4}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;->onComplete(Ljava/lang/String;)V

    return-object v8

    .line 15
    :cond_0
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->b:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :try_start_1
    const-string v9, "GET"

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v9, 0x3a98

    .line 18
    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 19
    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 20
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 22
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_2

    .line 23
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v5, 0x800

    .line 26
    :try_start_3
    new-array v5, v5, [B

    .line 28
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    const/4 v10, 0x0

    .line 29
    invoke-virtual {v3, v5, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 31
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Image downloaded: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v5, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->c:Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;

    invoke-interface {v5, v4}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;->onComplete(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    goto/16 :goto_a

    :catch_0
    move-exception v4

    goto/16 :goto_4

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_8

    :catch_1
    move-exception v3

    move-object v4, v3

    goto/16 :goto_3

    .line 34
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->c:Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;->onError(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v8

    move-object v3, v0

    :goto_1
    if-eqz v0, :cond_3

    .line 43
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 45
    invoke-static {v6, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    .line 50
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 52
    invoke-static {v6, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v0, v8

    move-object v3, v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, v8

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    move-object v0, v8

    move-object v3, v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v8

    move-object v7, v0

    :goto_3
    move-object v3, v8

    .line 57
    :goto_4
    :try_start_7
    const-string v5, "Error downloading image"

    invoke-static {v6, v5, v4}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iget-object v5, p0, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$a;->c:Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;->onError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v0, :cond_4

    .line 62
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 64
    invoke-static {v6, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 69
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 71
    invoke-static {v6, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    if-eqz v7, :cond_7

    .line 56
    :cond_6
    :goto_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v8

    :catchall_4
    move-exception v4

    :goto_8
    move-object v8, v7

    :goto_9
    move-object v7, v8

    :goto_a
    if-eqz v0, :cond_8

    .line 72
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    .line 74
    invoke-static {v6, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_b
    if-eqz v3, :cond_9

    .line 79
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    .line 81
    invoke-static {v6, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_c
    if-eqz v7, :cond_a

    .line 85
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    :cond_a
    throw v4
.end method
