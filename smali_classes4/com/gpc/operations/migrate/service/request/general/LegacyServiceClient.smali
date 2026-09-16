.class public Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;,
        Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$Callback;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "-----OPS---sdk"

.field private static final CHAR_SET:Ljava/lang/String; = "UTF-8"

.field private static final HEADERS:Ljava/lang/String; = "headers"

.field private static final RAW_RESPONSE:Ljava/lang/String; = "rawresponse"

.field private static final STATUS_CODE:Ljava/lang/String; = "statuscode"

.field private static final TAG:Ljava/lang/String; = "LegacyServiceClient"

.field private static final _ERROR:Ljava/lang/String; = "error"


# instance fields
.field private apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0}, Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;->create(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/api/HTTPService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;->create(Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)Lcom/gpc/operations/migrate/service/request/api/GenericSingleLinkImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    return-void
.end method

.method private generateHttpRequestMultipartBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;"
        }
    .end annotation

    .line 1
    new-instance p6, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    invoke-direct {p6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;-><init>()V

    const-string v0, "\""

    const-string v1, "Content-Disposition: form-data; name=\""

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    .line 6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    new-instance v4, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;-><init>([B)V

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v2, "Content-Type: text/plain; charset=UTF-8"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v2, "Content-Transfer-Encoding: 8bit"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p6, v4, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->appendBody(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "upload file path:"

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "LegacyServiceClient"

    invoke-static {v2, p4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 24
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    new-instance p1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;

    invoke-direct {p1, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;-><init>(Ljava/io/File;)V

    .line 27
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"; filename=\""

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const-string p2, "Content-Type: application/octet-stream; charset=UTF-8"

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p6, p1, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->appendBody(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    .line 36
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->boundary([B)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "multipart/form-data;boundary="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    return-object p1
.end method

.method private generateMultiRequestBody(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;",
            ")V"
        }
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "\""

    const-string v2, "Content-Disposition: form-data; name=\""

    const-string v3, "LegacyServiceClient"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    .line 7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 9
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 10
    new-instance v7, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBytesBody;-><init>([B)V

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p3, v7, v6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->appendBody(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 16
    const-string v6, ""

    invoke-static {v3, v6, v5}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 22
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "upload file path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v4, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-direct {v4, v5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;-><init>(Ljava/io/File;)V

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, "Content-Type: multipart/form-data"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p3, v4, v5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->appendBody(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRequest(Ljava/lang/String;Ljava/util/HashMap;IZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    if-lez p3, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRequest timeOut:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacyServiceClient"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    .line 30
    :cond_0
    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    .line 31
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 33
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$i;

    invoke-direct {v6, p0, p6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$i;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    invoke-interface {v0, p1}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method public downloadFileRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const v1, 0xea60

    .line 6
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 12
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;

    invoke-direct {v6, p0, p3, p4, p6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    move v0, p4

    .line 13
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 14
    new-instance v1, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    .line 16
    invoke-virtual {v1, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p5

    .line 17
    invoke-virtual {p5, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 18
    invoke-virtual {p3, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 19
    invoke-virtual {p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object p3

    move-object p5, p6

    move-object p6, p3

    move-object p3, p2

    move-object p2, p1

    .line 21
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-object v0, p7

    new-instance p7, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$h;

    invoke-direct {p7, p0, v0}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$h;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)V

    invoke-interface/range {p1 .. p7}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/16 v3, 0x3a98

    const/16 v4, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/16 v3, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string p3, ""

    :goto_0
    const-string v0, "If-None-Match"

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p3, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const/16 v0, 0x3a98

    .line 8
    invoke-virtual {p3, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 9
    invoke-virtual {p3, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$g;

    invoke-direct {v6, p0, p5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$g;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public getRequestWithourRetry(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public headRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v2, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;

    invoke-direct {v2, p0, p3}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)V

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->head(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v0, "flag_ignore_apigateway_digest"

    invoke-interface {v8, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const v1, 0xea60

    .line 8
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v13

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v6, p8

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->generateHttpRequestMultipartBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object v10

    .line 17
    new-instance v12, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$b;

    invoke-direct {v12, p0, v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$b;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)V

    .line 29
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v14, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$c;

    invoke-direct {v14, p0, v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$c;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)V

    move-object/from16 v7, p1

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    move-object v6, v1

    invoke-interface/range {v6 .. v14}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object v1

    return-object v1
.end method

.method public postFileRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p3

    .line 2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const v1, 0xea60

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->generateHttpRequestMultipartBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object p4

    move-object p2, p1

    .line 15
    iget-object p1, v1, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-object p5, p7

    new-instance p7, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$a;

    invoke-direct {p7, p0, p5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$a;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)V

    move-object p5, p6

    move-object p6, v0

    invoke-interface/range {p1 .. p7}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postJSONRequest(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const/16 v1, 0x3a98

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    const/4 p3, 0x1

    .line 6
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p3, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 11
    new-instance v3, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {v3, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/lang/String;)V

    .line 12
    const-string p2, "application/json"

    invoke-virtual {v3, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$n;

    invoke-direct {v6, p0, p4}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$n;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)V

    const/4 v4, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postJSONRequest(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 1

    const/16 v0, 0x3a98

    .line 15
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->postJSONRequest(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 40
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    if-lez p3, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getRequest timeOut:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LegacyServiceClient"

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    :cond_0
    const/4 p3, 0x1

    .line 19
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 21
    invoke-virtual {p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 23
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$k;

    invoke-direct {v6, p0, p5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$k;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$PostRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$PostRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    if-lez p3, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getRequest timeOut:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LegacyServiceClient"

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    :cond_0
    const/4 p3, 0x1

    .line 8
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$j;

    invoke-direct {v6, p0, p5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$j;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$PostRequestListener;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/16 v3, 0x3a98

    const/16 v4, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 41
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    const/16 v3, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    if-lez p5, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getRequest timeOut:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LegacyServiceClient"

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    .line 32
    :cond_0
    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->connectTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p4

    const/4 p5, 0x1

    .line 33
    invoke-virtual {p4, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p4

    .line 34
    invoke-virtual {p4, p5}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p4

    .line 35
    invoke-virtual {p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v6

    .line 37
    new-instance v4, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-direct {v4, p3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/util/Map;)V

    .line 39
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v7, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$l;

    invoke-direct {v7, p0, p7}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$l;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)V

    move-object v1, p1

    move-object v3, p2

    move-object v5, p6

    invoke-interface/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "flag_ignore_apigateway_digest"

    invoke-interface {v2, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    if-lez p4, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getRequest timeOut:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LegacyServiceClient"

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    :cond_0
    const/4 p4, 0x1

    .line 53
    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p4

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p4, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object p4

    .line 56
    invoke-virtual {p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v5

    .line 58
    new-instance p4, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    invoke-direct {p4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;-><init>()V

    .line 59
    invoke-direct {p0, p2, p3, p4}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->generateMultiRequestBody(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;)V

    .line 60
    const-string p2, "-----OPS---sdk"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->boundary([B)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object v3

    .line 61
    const-string p2, "multipart/form-data;boundary=-----OPS---sdk"

    invoke-virtual {v3, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$m;

    invoke-direct {v6, p0, p6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$m;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)V

    move-object v1, p1

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method

.method public putFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;-><init>()V

    const v1, 0xea60

    .line 6
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->readTimeOut(I)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->shouldRetry(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doOutput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->doInput(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->useCaches(Z)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig$Builder;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    move-result-object v7

    .line 13
    new-instance v4, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestFileBody;-><init>(Ljava/io/File;)V

    .line 14
    const-string p2, "application/octet-stream"

    invoke-virtual {v4, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    .line 16
    new-instance v6, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$d;

    invoke-direct {v6, p0, p5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$d;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)V

    .line 28
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->apiGateway:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    new-instance v8, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$e;

    invoke-direct {v8, p0, p5}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$e;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)V

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v8}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    move-result-object p1

    return-object p1
.end method
