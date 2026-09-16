.class public Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;

.field public final synthetic d:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->d:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->c:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;Ljava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 107
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/error/GPCException;

    .line 109
    const-string v1, "rawresponse"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 116
    :goto_0
    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 122
    :goto_1
    const-string v4, "headers"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 123
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->c:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;

    if-eqz p1, :cond_3

    .line 126
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;->onDownloadRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;Ljava/io/File;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    move-result-object v2

    .line 6
    const-string v3, "headers"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v2, "application/octet-stream"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "4000"

    const/4 v4, 0x0

    const-string v5, "error"

    const-string v6, "rawresponse"

    const-string v7, "file"

    if-nez v2, :cond_1

    .line 9
    const-string v2, "application/gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string p1, "download file failed,ContentType:text/html"

    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {v3}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "LegacyServiceClient"

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "inputStream is null"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "download file path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getContentLength()J

    move-result-wide v8

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "download totalLength:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v10, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->b:Ljava/lang/String;

    iget-object v11, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a:Ljava/lang/String;

    new-instance v12, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;

    invoke-direct {v12, p0, v8, v9}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;J)V

    invoke-static {v10, v11, v1, v12}, Lcom/gpc/operations/migrate/utils/FileHelper;->writeSDFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/gpc/operations/migrate/utils/FileHelper$OnWriteFileListener;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    .line 90
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "download file failed"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "success"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->closeStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "inputStream occured: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v3}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "file"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "rawresponse"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p2, "4000"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;

    invoke-direct {p1, p0, p2}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$a;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V

    const/4 p2, 0x0

    .line 13
    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/utils/AsyncTask;->execute([Ljava/lang/Object;)Lcom/gpc/operations/migrate/utils/AsyncTask;

    return-void
.end method
