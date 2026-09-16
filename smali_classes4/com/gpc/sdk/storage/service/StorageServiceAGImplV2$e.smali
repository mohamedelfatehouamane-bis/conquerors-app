.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

.field public final synthetic b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "onConnectionError request failed."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 3
    const-string v0, "400502"

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

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

    const-string v1, "StorageServiceAGImplV2"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onProgress(JJ)V

    return-void
.end method

.method public onRemoteServiceFailure(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    const-string p2, "StorageServiceAGImplV2"

    const-string v0, "onRemoteServiceFailure request failed."

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 3
    const-string p2, "400503"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {v0}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onStart()V

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 6

    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "upload file result:"

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

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    const-string v2, "upload file success."

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    const-string p1, "resource_id"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {v5}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->c(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    const-string v5, "payload"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    new-instance v5, Lcom/gpc/sdk/storage/bean/GPCCDNUploaderResultV2;

    invoke-direct {v5, p1, v3, v4, v2}, Lcom/gpc/sdk/storage/bean/GPCCDNUploaderResultV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {p1, v5}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onSuccess(Lcom/gpc/sdk/storage/bean/GPCCDNUploaderResultV2;)V

    return-void

    .line 17
    :cond_1
    const-string v1, "upload file failure."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 20
    const-string v1, "8000"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 21
    const-string v1, "400504"

    const-string v2, "20"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {v1, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    const-string p1, "5001"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 27
    const-string v0, "400505"

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
