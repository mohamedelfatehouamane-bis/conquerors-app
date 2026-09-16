.class public Lcom/gpc/sdk/misc/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/misc/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/gpc/sdk/storage/service/UploadListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/UploadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "StorageServiceAGImpl"

    const-string v1, "onConnectionError request failed."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/service/UploadListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageServiceAGImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/storage/service/UploadListener;->onProgress(JJ)V

    return-void
.end method

.method public onRemoteServiceFailure(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    const-string p2, "StorageServiceAGImpl"

    const-string v0, "onRemoteServiceFailure request failed."

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/service/UploadListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "StorageServiceAGImpl"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-interface {v0}, Lcom/gpc/sdk/storage/service/UploadListener;->onStart()V

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 3

    const-string v0, "StorageServiceAGImpl"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v1, "upload file success."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/gpc/sdk/storage/service/UploadListener;->onSuceess(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    const-string v1, "upload file failure."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    const-string v2, "8000"

    invoke-static {v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/gpc/sdk/storage/service/UploadListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/misc/t$c;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    const-string v0, "5001"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/storage/service/UploadListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
