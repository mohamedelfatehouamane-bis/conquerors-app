.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p3

    const-string v0, "StorageServiceAGImplV2"

    if-eqz p3, :cond_0

    .line 2
    const-string p2, "request is error."

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_V2_EXPECT:Lcom/gpc/sdk/error/GPCExceptionMapping;

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCExceptionMapping;->generate(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    const-string p1, "key"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    const-string p3, "payload"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object v1, v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object v1, v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {v1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->c(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 20
    iget-object v1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object v1, v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object v1, v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    new-instance v2, Lcom/gpc/sdk/storage/bean/GPCCNDPrepareResultV2;

    invoke-direct {v2, p1, p2, p3}, Lcom/gpc/sdk/storage/bean/GPCCNDPrepareResultV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onStart(Lcom/gpc/sdk/storage/bean/GPCCNDPrepareResultV2;)V

    .line 21
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object p2, p1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object p3, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iget-object p1, p1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    new-instance v2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;)V

    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V

    return-void

    .line 44
    :cond_2
    const-string p2, "8000"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 45
    const-string p2, "400404"

    const-string p3, "20"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const-string p1, "5001"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 51
    const-string p2, "400405"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
