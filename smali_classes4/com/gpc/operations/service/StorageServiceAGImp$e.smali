.class public Lcom/gpc/operations/service/StorageServiceAGImp$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/StorageServiceAGImp;->abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

.field public final synthetic b:Lcom/gpc/operations/service/StorageServiceAGImp;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->b:Lcom/gpc/operations/service/StorageServiceAGImp;

    iput-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

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
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 2

    const-string p1, "response:"

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    if-eqz p1, :cond_2

    .line 3
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

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    .line 11
    const-string v0, "StorageServiceAGImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    if-eqz p2, :cond_2

    .line 15
    const-string v0, "8000"

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->createException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    if-eqz p1, :cond_2

    .line 21
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 24
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$e;->a:Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;

    if-eqz p1, :cond_2

    .line 25
    const-string p2, "5001"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_2
    return-void
.end method
