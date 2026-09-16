.class public Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

.field public final synthetic b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->b:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "onConnectionError request failed."

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 3
    sget-object v0, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_SYSTEM_NETWORK:Ljava/lang/String;

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-interface {v0, p1}, Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

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

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;->onProgress(JJ)V

    return-void
.end method

.method public onRemoteServiceFailure(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    const-string p2, "StorageServiceAGImplV2"

    const-string v0, "onRemoteServiceFailure request failed."

    invoke-static {p2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 3
    sget-object p2, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String;

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-interface {v0}, Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;->onStart()V

    return-void
.end method

.method public onSuccess(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;->a:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
