.class public Lcom/gpc/operations/service/UploadResourceService$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService$d;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;

.field public final synthetic b:Lcom/gpc/operations/service/UploadResourceService$d;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService$d;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->a:Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object v0, v0, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const v1, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v1

    const/high16 v1, 0x42480000    # 50.0f

    add-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    return-void
.end method

.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/service/bean/UploadOnePartResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object v0, p2, Lcom/gpc/operations/service/UploadResourceService$d;->e:Lcom/gpc/operations/service/UploadResourceService;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$d;->b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

    invoke-interface {p2}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUploadToken()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->a:Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;

    invoke-static {v0, p2, v1}, Lcom/gpc/operations/service/UploadResourceService;->access$300(Lcom/gpc/operations/service/UploadResourceService;Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object p2, p2, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object p1, p1, Lcom/gpc/operations/service/UploadResourceService$d;->e:Lcom/gpc/operations/service/UploadResourceService;

    invoke-static {p1}, Lcom/gpc/operations/service/UploadResourceService;->access$400(Lcom/gpc/operations/service/UploadResourceService;)Lcom/gpc/operations/service/IStorageService;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->b:Lcom/gpc/operations/service/UploadResourceService$d;

    iget-object v0, v0, Lcom/gpc/operations/service/UploadResourceService$d;->b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

    invoke-interface {v0}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUploadToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/service/UploadResourceService$d$a;->a:Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;

    new-instance v2, Lcom/gpc/operations/service/UploadResourceService$d$a$a;

    invoke-direct {v2, p0}, Lcom/gpc/operations/service/UploadResourceService$d$a$a;-><init>(Lcom/gpc/operations/service/UploadResourceService$d$a;)V

    invoke-interface {p1, v0, v1, p2, v2}, Lcom/gpc/operations/service/IStorageService;->completeMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Ljava/util/List;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V

    return-void
.end method
