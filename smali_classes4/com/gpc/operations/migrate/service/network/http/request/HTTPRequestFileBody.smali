.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;
.super Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTPRequestFileBody"


# instance fields
.field private content:Ljava/io/File;

.field private length:I


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->length:I

    .line 100
    iget-object p1, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->content:Ljava/io/File;

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->content:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->length:I

    .line 48
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->content:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public length()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public readBytes(Ljava/io/OutputStream;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "HTTPRequestFileBody"

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    :try_start_1
    invoke-static {v1, v0, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->content:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 7
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;->content:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x400

    .line 8
    :try_start_2
    new-array v5, v5, [B

    const-wide/16 v6, 0x0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x0

    .line 12
    invoke-virtual {p1, v5, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v8, v8

    add-long/2addr v6, v8

    if-eqz p2, :cond_1

    .line 16
    :try_start_3
    invoke-interface {p2, v6, v7, v2, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;->onProgress(JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v8

    .line 18
    :try_start_4
    invoke-static {v1, v0, v8}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 25
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 27
    invoke-static {v1, v0, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    .line 28
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 30
    invoke-static {v1, v0, p2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_3
    :goto_4
    throw p1
.end method
