.class public Lcom/gpc/operations/service/UploadResourceService$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/IStorageService$OnUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService$d$a;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/UploadResourceService$d$a;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService$d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a$a;->a:Lcom/gpc/operations/service/UploadResourceService$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 0

    return-void
.end method

.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d$a$a;->a:Lcom/gpc/operations/service/UploadResourceService$d$a;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object v0, p2, Lcom/gpc/operations/service/UploadResourceService$d;->e:Lcom/gpc/operations/service/UploadResourceService;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$d;->b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

    invoke-interface {p2}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUploadToken()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a$a;->a:Lcom/gpc/operations/service/UploadResourceService$d$a;

    iget-object v1, v1, Lcom/gpc/operations/service/UploadResourceService$d$a;->a:Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;

    invoke-static {v0, p2, v1}, Lcom/gpc/operations/service/UploadResourceService;->access$300(Lcom/gpc/operations/service/UploadResourceService;Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d$a$a;->a:Lcom/gpc/operations/service/UploadResourceService$d$a;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a$a;->a:Lcom/gpc/operations/service/UploadResourceService$d$a;

    iget-object p1, p1, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object p1, p1, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-interface {p1, v0}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 8
    const-string p1, "UploadResourceService"

    const-string v0, "completeMutipartPart finish"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a$a;->a:Lcom/gpc/operations/service/UploadResourceService$d$a;

    iget-object p1, p1, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object p1, p1, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p1, p2}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFinished(Ljava/lang/String;)V

    return-void
.end method
