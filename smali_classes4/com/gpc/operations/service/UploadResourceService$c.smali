.class public Lcom/gpc/operations/service/UploadResourceService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/IStorageService$OnUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService;->uploadImage(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

.field public final synthetic b:Lcom/gpc/operations/service/UploadResourceService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$c;->b:Lcom/gpc/operations/service/UploadResourceService;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$c;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$c;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const v1, 0x3f19999a    # 0.6f

    mul-float p1, p1, v1

    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    return-void
.end method

.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$c;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$c;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p1, p2}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFinished(Ljava/lang/String;)V

    return-void
.end method
