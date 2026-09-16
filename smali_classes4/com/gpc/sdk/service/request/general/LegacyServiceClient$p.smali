.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;

.field public final synthetic d:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->d:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->c:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;Ljava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 66
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/error/GPCException;

    .line 68
    const-string v1, "rawresponse"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 75
    :goto_0
    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/io/File;

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->c:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1, v0, v1, v3}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;->onDownloadRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/io/File;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/service/network/http/response/HTTPResponse;",
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
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "application/octet-stream"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "4000"

    const/4 v4, 0x0

    const-string v5, "error"

    const-string v6, "rawresponse"

    const-string v7, "file"

    if-nez v2, :cond_1

    .line 6
    const-string v2, "application/gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p1, "download file failed,ContentType:text/html"

    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "LegacyServiceClient"

    if-nez v1, :cond_2

    .line 42
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "inputStream is null"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "download file path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v8, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a:Ljava/lang/String;

    invoke-static {v8, v9, v1}, Lcom/gpc/util/FileHelper;->writeSDFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    .line 49
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "download file failed"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "success"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->closeStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "inputStream occured: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "file"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "rawresponse"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p2, "4000"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;

    invoke-direct {p1, p0, p2}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p$a;-><init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient$p;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    const/4 p2, 0x0

    .line 13
    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/gpc/util/AsyncTask;->execute([Ljava/lang/Object;)Lcom/gpc/util/AsyncTask;

    return-void
.end method
