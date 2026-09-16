.class public Lcom/gpc/operations/service/StorageServiceAGImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/IStorageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/StorageServiceAGImp$g;
    }
.end annotation


# static fields
.field private static final CHAR_SET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_UPLOAD_SIZE:I = 0x500000

.field public static final MAX_SIZE_PART:I = 0x1400

.field private static final TAG:Ljava/lang/String; = "StorageServiceAGImp"


# instance fields
.field private defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

.field private uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getSingleLinkSyncHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;->setReadTimeOut(I)V

    return-void
.end method

.method private generateHttpRequestMultipartBody(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;-><init>()V

    const-string v1, "\""

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v0, v4, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->appendBody(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 24
    new-instance p3, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;

    invoke-direct {p3, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStreamBody;-><init>(Ljava/io/InputStream;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Disposition: form-data; name=\"file\";filename=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 27
    :cond_1
    const-string p2, "Content-Disposition: form-data; name=\"file\";"

    .line 31
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const-string p2, "Content-Type: application/octet-stream; charset=UTF-8"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v0, p3, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->appendBody(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    .line 36
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->boundary([B)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody$Build;->build()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "multipart/form-data;boundary="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    return-object p1
.end method

.method private readPart(Ljava/io/InputStream;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 p2, 0x500000

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p2, p1, :cond_1

    return-object v0

    .line 8
    :cond_1
    new-array p2, p1, [B

    .line 9
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private uploadOnePart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;ILjava/lang/String;Ljava/io/ByteArrayInputStream;Lcom/gpc/operations/service/StorageServiceAGImp$g;)V
    .locals 9

    .line 1
    const-string v0, "StorageServiceAGImp"

    const-string v1, "uploadOnePart"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "upload_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "part_number"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "----------------------"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p5, p4, v0, p1}, Lcom/gpc/operations/service/StorageServiceAGImp;->generateHttpRequestMultipartBody(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object v5

    .line 9
    invoke-static {}, Lcom/gpc/operations/utils/APIHelperKt;->multipartUploadUploadResource()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v2, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v7, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    new-instance v8, Lcom/gpc/operations/service/StorageServiceAGImp$c;

    invoke-direct {v8, p0, p6}, Lcom/gpc/operations/service/StorageServiceAGImp$c;-><init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/StorageServiceAGImp$g;)V

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method


# virtual methods
.method public abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;)V
    .locals 9

    .line 1
    const-string v0, "abortMutipartPart"

    const-string v1, "StorageServiceAGImp"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/utils/APIHelperKt;->multipartUploadAbortResource()Ljava/lang/String;

    move-result-object v3

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "upload_id"

    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v5, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p1, "application/json"

    invoke-virtual {v5, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v7, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    new-instance v8, Lcom/gpc/operations/service/StorageServiceAGImp$e;

    invoke-direct {v8, p0, p3}, Lcom/gpc/operations/service/StorageServiceAGImp$e;-><init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;)V

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 53
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    .line 55
    const-string p1, "-1"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 56
    invoke-interface {p3, p1}, Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public completeMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Ljava/util/List;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/service/bean/UploadOnePartResult;",
            ">;",
            "Lcom/gpc/operations/service/IStorageService$OnUploadCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "completeMutipartPart"

    const-string v1, "StorageServiceAGImp"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/utils/APIHelperKt;->multipartUploadCompleteResource()Ljava/lang/String;

    move-result-object v3

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "upload_id"

    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 10
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/service/bean/UploadOnePartResult;

    .line 11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v5, "etag"

    invoke-virtual {v2}, Lcom/gpc/operations/service/bean/UploadOnePartResult;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v5, "part_number"

    invoke-virtual {v2}, Lcom/gpc/operations/service/bean/UploadOnePartResult;->getPartNumber()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    const-string p2, "parts"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 19
    new-instance v5, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/lang/String;)V

    .line 20
    const-string p1, "application/json"

    invoke-virtual {v5, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v7, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    new-instance v8, Lcom/gpc/operations/service/StorageServiceAGImp$d;

    invoke-direct {v8, p0, p4}, Lcom/gpc/operations/service/StorageServiceAGImp$d;-><init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 62
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p4, :cond_1

    .line 64
    const-string p1, "-1"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    .line 65
    invoke-interface {p4, p1, p2}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public createMutipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;)V
    .locals 9

    .line 1
    const-string v0, "createMutipartUpload"

    const-string v1, "StorageServiceAGImp"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/utils/APIHelperKt;->multipartUploadCreateResource()Ljava/lang/String;

    move-result-object v3

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p1, "filename"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p1, "payload"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v5, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestStringBody;-><init>(Ljava/lang/String;)V

    .line 11
    const-string p1, "application/json"

    invoke-virtual {v5, p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;->setContentType(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v7, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    new-instance v8, Lcom/gpc/operations/service/StorageServiceAGImp$a;

    invoke-direct {v8, p0, p4}, Lcom/gpc/operations/service/StorageServiceAGImp$a;-><init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;)V

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 59
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p4, :cond_0

    .line 61
    const-string p1, "-1"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    invoke-interface {p4, p1, p2}, Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V

    :cond_0
    return-void
.end method

.method public directUpload(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V
    .locals 8

    .line 1
    const-string v0, "StorageServiceAGImp"

    const-string v1, "upload"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p4, v0}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onProgress(F)V

    .line 5
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filename"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v1, "payload"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------------------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, v0, p2}, Lcom/gpc/operations/service/StorageServiceAGImp;->generateHttpRequestMultipartBody(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestMultipartBody;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/gpc/operations/utils/APIHelperKt;->uploadResource()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_1

    const/high16 p1, 0x42480000    # 50.0f

    .line 15
    invoke-interface {p4, p1}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onProgress(F)V

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadService:Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    iget-object v6, p0, Lcom/gpc/operations/service/StorageServiceAGImp;->defaultHttpRequestConfig:Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;

    new-instance v7, Lcom/gpc/operations/service/StorageServiceAGImp$f;

    invoke-direct {v7, p0, p4}, Lcom/gpc/operations/service/StorageServiceAGImp$f;-><init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public uploadMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;JLcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;)V
    .locals 18

    move-wide/from16 v0, p3

    move-object/from16 v3, p7

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "uploadMutipartPart : filesize:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "StorageServiceAGImp"

    invoke-static {v7, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1400

    .line 3
    div-long v8, v0, v4

    .line 4
    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v8, v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "partSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v4, v1, v8

    if-gez v4, :cond_3

    const/4 v1, 0x1

    .line 11
    new-array v4, v1, [Z

    aput-boolean v10, v4, v10

    add-int/lit8 v14, v0, 0x1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "partNumber:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v1, v14

    long-to-float v2, v8

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v2, v2, v5

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    .line 14
    invoke-interface {v3, v1}, Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;->onProgress(F)V

    const/4 v1, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p6

    .line 17
    :try_start_0
    invoke-direct {v11, v12, v0}, Lcom/gpc/operations/service/StorageServiceAGImp;->readPart(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    const-string v2, ""

    invoke-static {v7, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    .line 22
    const-string v0, "null == bytes"

    invoke-static {v7, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "8001"

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    .line 24
    invoke-interface {v3, v0, v1}, Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void

    .line 28
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    invoke-interface/range {p5 .. p5}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getName()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/gpc/operations/service/StorageServiceAGImp$b;

    move-object v1, v11

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/gpc/operations/service/StorageServiceAGImp$b;-><init>(Lcom/gpc/operations/service/StorageServiceAGImp;Ljava/io/ByteArrayInputStream;Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;[ZILjava/util/List;)V

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v17, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/gpc/operations/service/StorageServiceAGImp;->uploadOnePart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;ILjava/lang/String;Ljava/io/ByteArrayInputStream;Lcom/gpc/operations/service/StorageServiceAGImp$g;)V

    .line 44
    aget-boolean v0, v4, v10

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move v0, v14

    goto :goto_0

    .line 48
    :cond_3
    const-string v0, "uploadMutipartPart success"

    invoke-static {v7, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {v3, v0, v6}, Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method
