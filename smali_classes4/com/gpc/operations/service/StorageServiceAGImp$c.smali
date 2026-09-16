.class public Lcom/gpc/operations/service/StorageServiceAGImp$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/StorageServiceAGImp;->uploadOnePart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;ILjava/lang/String;Ljava/io/ByteArrayInputStream;Lcom/gpc/operations/service/StorageServiceAGImp$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

.field public final synthetic b:Lcom/gpc/operations/service/StorageServiceAGImp;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/StorageServiceAGImp;Lcom/gpc/operations/service/StorageServiceAGImp$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->b:Lcom/gpc/operations/service/StorageServiceAGImp;

    iput-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

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
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/service/StorageServiceAGImp$g;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/UploadOnePartResult;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 3

    const-string p1, "response:"

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

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
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

    invoke-interface {p2, p1, v1}, Lcom/gpc/operations/service/StorageServiceAGImp$g;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/UploadOnePartResult;)V

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

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/operations/service/bean/UploadOnePartResult;->create(Ljava/lang/String;)Lcom/gpc/operations/service/bean/UploadOnePartResult;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/operations/service/StorageServiceAGImp$g;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/UploadOnePartResult;)V

    return-void

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

    if-eqz p2, :cond_2

    .line 18
    const-string v0, "8000"

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->createException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/gpc/operations/service/StorageServiceAGImp$g;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/UploadOnePartResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 23
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$c;->a:Lcom/gpc/operations/service/StorageServiceAGImp$g;

    if-eqz p1, :cond_2

    .line 24
    const-string p2, "5001"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/operations/service/StorageServiceAGImp$g;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/UploadOnePartResult;)V

    :cond_2
    return-void
.end method
