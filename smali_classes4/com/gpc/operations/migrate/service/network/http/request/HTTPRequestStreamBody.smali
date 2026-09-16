.class public Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;
.super Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTPRequestStreamBody"


# instance fields
.field private content:Ljava/io/InputStream;

.field private length:I


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->length:I

    .line 106
    iget-object p1, p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->content:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->content:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->length:I

    .line 51
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->content:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public length()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->length:I

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

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->content:Ljava/io/InputStream;

    const-string v1, ""

    const-string v2, "HTTPRequestStreamBody"

    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    :try_start_1
    invoke-static {v2, v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_0
    :goto_0
    iget v3, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->length:I

    int-to-long v3, v3

    const/16 v5, 0x400

    .line 11
    new-array v5, v5, [B

    const-wide/16 v6, 0x0

    .line 14
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x0

    .line 15
    invoke-virtual {p1, v5, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v8, v8

    add-long/2addr v6, v8

    if-eqz p2, :cond_1

    .line 19
    :try_start_2
    invoke-interface {p2, v6, v7, v3, v4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;->onProgress(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v8

    .line 21
    :try_start_3
    invoke-static {v2, v1, v8}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 28
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 30
    invoke-static {v2, v1, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 31
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 33
    invoke-static {v2, v1, p2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_3
    :goto_3
    throw p1
.end method

.method public setLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;->length:I

    return-void
.end method
