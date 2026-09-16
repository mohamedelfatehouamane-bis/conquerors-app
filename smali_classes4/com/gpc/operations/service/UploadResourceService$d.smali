.class public Lcom/gpc/operations/service/UploadResourceService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService;->uploadMutipart(Lcom/gpc/operations/service/net/MultipartFormDataFile;JLjava/io/InputStream;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

.field public final synthetic b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

.field public final synthetic c:J

.field public final synthetic d:Ljava/io/InputStream;

.field public final synthetic e:Lcom/gpc/operations/service/UploadResourceService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;Lcom/gpc/operations/service/net/MultipartFormDataFile;JLjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d;->e:Lcom/gpc/operations/service/UploadResourceService;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    iput-object p3, p0, Lcom/gpc/operations/service/UploadResourceService$d;->b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

    iput-wide p4, p0, Lcom/gpc/operations/service/UploadResourceService$d;->c:J

    iput-object p6, p0, Lcom/gpc/operations/service/UploadResourceService$d;->d:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-interface {p1, v0}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 8
    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d;->e:Lcom/gpc/operations/service/UploadResourceService;

    invoke-static {p1}, Lcom/gpc/operations/service/UploadResourceService;->access$400(Lcom/gpc/operations/service/UploadResourceService;)Lcom/gpc/operations/service/IStorageService;

    move-result-object v0

    iget-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$d;->b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lcom/gpc/operations/service/UploadResourceService$d;->c:J

    iget-object v5, p0, Lcom/gpc/operations/service/UploadResourceService$d;->b:Lcom/gpc/operations/service/net/MultipartFormDataFile;

    iget-object v6, p0, Lcom/gpc/operations/service/UploadResourceService$d;->d:Ljava/io/InputStream;

    new-instance v7, Lcom/gpc/operations/service/UploadResourceService$d$a;

    invoke-direct {v7, p0, p2}, Lcom/gpc/operations/service/UploadResourceService$d$a;-><init>(Lcom/gpc/operations/service/UploadResourceService$d;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V

    move-object v2, p2

    invoke-interface/range {v0 .. v7}, Lcom/gpc/operations/service/IStorageService;->uploadMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;JLcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;)V

    return-void
.end method
