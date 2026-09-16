.class public Lcom/gpc/operations/service/StorageServiceAGImp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/StorageServiceAGImp$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/StorageServiceAGImp;->uploadMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;JLcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/ByteArrayInputStream;

.field public final synthetic b:Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;

.field public final synthetic c:[Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/gpc/operations/service/StorageServiceAGImp;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/StorageServiceAGImp;Ljava/io/ByteArrayInputStream;Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;[ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->f:Lcom/gpc/operations/service/StorageServiceAGImp;

    iput-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->a:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->b:Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;

    iput-object p4, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->c:[Z

    iput p5, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->d:I

    iput-object p6, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/UploadOnePartResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->a:Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Lcom/gpc/operations/utils/IO;->close(Ljava/io/Closeable;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p2, "uploadMutipartPart failed"

    const-string v0, "StorageServiceAGImp"

    invoke-static {v0, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "upload error:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->b:Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->c:[Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    return-void

    .line 9
    :cond_0
    iget p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->d:I

    invoke-virtual {p2, p1}, Lcom/gpc/operations/service/bean/UploadOnePartResult;->setPartNumber(I)V

    .line 10
    iget-object p1, p0, Lcom/gpc/operations/service/StorageServiceAGImp$b;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
