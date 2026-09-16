.class public Lcom/gpc/operations/service/StorageServiceAGImp$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/StorageServiceAGImp;->directUpload(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

.field public final synthetic b:Lcom/gpc/operations/service/StorageServiceAGImp;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->b:Lcom/gpc/operations/service/StorageServiceAGImp;

    iput-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "4000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getError()Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 4

    const-string p1, "response:"

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 2
    invoke-interface {v0, v1}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onProgress(F)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    if-eqz p1, :cond_3

    .line 6
    const-string p1, "6000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    invoke-interface {p2, p1, v1}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "StorageServiceAGImp"

    if-eqz v0, :cond_2

    .line 15
    :try_start_1
    const-string p1, "response data is empty"

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    if-eqz p1, :cond_3

    .line 17
    const-string p2, "5000"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    nop

    .line 25
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$f;->a:Lcom/gpc/operations/service/IStorageService$OnUploadCallback;

    if-eqz p1, :cond_3

    .line 26
    const-string p2, "5001"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/operations/service/IStorageService$OnUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
