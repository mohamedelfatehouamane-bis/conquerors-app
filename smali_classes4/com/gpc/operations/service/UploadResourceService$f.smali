.class public Lcom/gpc/operations/service/UploadResourceService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService;->uploadImageResource(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

.field public final synthetic b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

.field public final synthetic c:Lcom/gpc/operations/service/UploadResourceService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$f;->c:Lcom/gpc/operations/service/UploadResourceService;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    iput-object p3, p0, Lcom/gpc/operations/service/UploadResourceService$f;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "UploadResourceService"

    const-string v1, "uploadImageResource"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-interface {v0, v1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getResourceStorageMediaPath()Ljava/lang/String;

    move-result-object v1

    .line 8
    :try_start_0
    sget-object v2, Lcom/gpc/operations/service/net/HTTPRequest;->Companion:Lcom/gpc/operations/service/net/HTTPRequest$Companion;

    iget-object v3, p0, Lcom/gpc/operations/service/UploadResourceService$f;->c:Lcom/gpc/operations/service/UploadResourceService;

    invoke-static {v3}, Lcom/gpc/operations/service/UploadResourceService;->access$500(Lcom/gpc/operations/service/UploadResourceService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/gpc/operations/service/UploadResourceService$f;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v4}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/gpc/operations/service/UploadResourceService$f;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v5}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/gpc/operations/service/UploadResourceService$f;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v6}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getMaxUploadSize()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->compressImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->saveStreamToFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v2, p0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-interface {v2, v3}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 16
    new-instance v2, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-direct {v2}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;-><init>()V

    .line 17
    invoke-virtual {v2, v0}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->setFileName(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getPayloadString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->setPayload(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v1}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->setFilePath(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->setScene(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f;->c:Lcom/gpc/operations/service/UploadResourceService;

    invoke-static {v0}, Lcom/gpc/operations/service/UploadResourceService;->access$600(Lcom/gpc/operations/service/UploadResourceService;)Lcom/gpc/operations/storagev2/IStorageServiceV2;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/service/UploadResourceService$f$a;

    invoke-direct {v1, p0, v2}, Lcom/gpc/operations/service/UploadResourceService$f$a;-><init>(Lcom/gpc/operations/service/UploadResourceService$f;Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;)V

    invoke-interface {v0, v2, v1}, Lcom/gpc/operations/storagev2/IStorageServiceV2;->upload(Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V

    return-void

    .line 22
    :catch_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const-string v1, "8001"

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFileException(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method
