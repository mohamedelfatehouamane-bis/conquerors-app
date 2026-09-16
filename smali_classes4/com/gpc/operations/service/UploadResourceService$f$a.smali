.class public Lcom/gpc/operations/service/UploadResourceService$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

.field public final synthetic b:Lcom/gpc/operations/service/UploadResourceService$f;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService$f;Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->b:Lcom/gpc/operations/service/UploadResourceService$f;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-virtual {v0}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->deleteFile(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->b:Lcom/gpc/operations/service/UploadResourceService$f;

    iget-object v0, v0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 0

    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    const/high16 p2, 0x41f00000    # 30.0f

    add-float/2addr p1, p2

    .line 1
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->b:Lcom/gpc/operations/service/UploadResourceService$f;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "UploadResourceService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->b:Lcom/gpc/operations/service/UploadResourceService$f;

    iget-object v0, v0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-interface {v0, v1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-virtual {v0}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->deleteFile(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$f$a;->b:Lcom/gpc/operations/service/UploadResourceService$f;

    iget-object v0, v0, Lcom/gpc/operations/service/UploadResourceService$f;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFinished(Ljava/lang/String;)V

    return-void
.end method
