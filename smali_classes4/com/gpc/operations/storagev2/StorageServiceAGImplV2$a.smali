.class public Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->getToken(Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

.field public final synthetic b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iput-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    const-string p1, "4000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
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
    sget-object p2, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_GET_TOKEN_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String;

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

    invoke-static {p1, p2, v0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->access$000(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 5

    const-string p1, "response:"

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result v0

    const-string v1, ""

    const-string v2, "StorageServiceAGImplV2"

    if-nez v0, :cond_0

    .line 2
    const-string p1, "request is error."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_GET_TOKEN_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String;

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 6
    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

    invoke-static {p2, p1, v0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->access$000(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V

    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p2}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    const-string p1, "token"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v0, "expires_at"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 19
    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    invoke-static {p2, p1, v3, v4}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->access$100(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Ljava/lang/String;J)V

    .line 21
    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;->onCompleted(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_1
    const-string p2, "8000"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GeneralResponse;->createException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 25
    sget-object p2, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_GET_TOKEN_ERROR_FOR_BUSINESS:Ljava/lang/String;

    const-string v0, "20"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

    invoke-static {p2, p1, v0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->access$000(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-static {v2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const-string p1, "5001"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 31
    sget-object p2, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_GET_TOKEN_ERROR_FOR_REMOTE_DATA:Ljava/lang/String;

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;->a:Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;

    invoke-static {p2, p1, v0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->access$000(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V

    return-void
.end method
