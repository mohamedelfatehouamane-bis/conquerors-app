.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->prepareAndUpload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

.field public final synthetic b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

.field public final synthetic c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

.field public final synthetic d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iput-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    iput-object p3, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    iput-object p4, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "StorageServiceAGImplV2"

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "get token error."

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    invoke-virtual {v0}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getRealFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const-string p1, "file not exist."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    const-string p2, "400406"

    const-string v0, "20"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;Ljava/lang/String;Ljava/io/File;)V

    const-string p1, "TAG_STORAGE"

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;)V

    return-void
.end method
