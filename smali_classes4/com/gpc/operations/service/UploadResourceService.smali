.class public Lcom/gpc/operations/service/UploadResourceService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x1400

.field private static final TAG:Ljava/lang/String; = "UploadResourceService"


# instance fields
.field private final context:Landroid/content/Context;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private storageService:Lcom/gpc/operations/service/IStorageService;

.field private storageServiceV2:Lcom/gpc/operations/storagev2/IStorageServiceV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService;->context:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/gpc/operations/service/StorageServiceAGImp;

    invoke-direct {p1}, Lcom/gpc/operations/service/StorageServiceAGImp;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService;->storageService:Lcom/gpc/operations/service/IStorageService;

    .line 4
    new-instance p1, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    invoke-direct {p1}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService;->storageServiceV2:Lcom/gpc/operations/storagev2/IStorageServiceV2;

    return-void
.end method

.method private abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V
    .locals 3

    .line 1
    const-string v0, "abortMutipartPart"

    const-string v1, "UploadResourceService"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->storageService:Lcom/gpc/operations/service/IStorageService;

    new-instance v2, Lcom/gpc/operations/service/UploadResourceService$e;

    invoke-direct {v2, p0}, Lcom/gpc/operations/service/UploadResourceService$e;-><init>(Lcom/gpc/operations/service/UploadResourceService;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/gpc/operations/service/IStorageService;->abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/service/UploadResourceService;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/service/UploadResourceService;->transform(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/operations/service/UploadResourceService;->uploadImage(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/operations/service/UploadResourceService;->uploadOtherFormatsFile(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/gpc/operations/service/UploadResourceService;Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/operations/service/UploadResourceService;->abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/gpc/operations/service/UploadResourceService;)Lcom/gpc/operations/service/IStorageService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/service/UploadResourceService;->storageService:Lcom/gpc/operations/service/IStorageService;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/gpc/operations/service/UploadResourceService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/service/UploadResourceService;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/gpc/operations/service/UploadResourceService;)Lcom/gpc/operations/storagev2/IStorageServiceV2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/service/UploadResourceService;->storageServiceV2:Lcom/gpc/operations/storagev2/IStorageServiceV2;

    return-object p0
.end method

.method private getFileInputStream(Lcom/gpc/operations/service/net/MultipartFormDataFile;)Ljava/io/InputStream;
    .locals 5

    const-string v0, ""

    const-string v1, "UploadResourceService"

    const-string v2, "getFileInputStream path :"

    const-string v3, "getFileInputStream uri :"

    .line 1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/gpc/operations/service/UploadResourceService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v3

    :catch_0
    move-exception v3

    .line 7
    invoke-static {v1, v0, v3}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 11
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v3
.end method

.method private transform(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/service/net/MultipartFormDataFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->isInternalFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    new-instance v4, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;

    invoke-direct {v4, v3}, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;-><init>(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance v4, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;

    invoke-direct {v4, v3}, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;-><init>(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;)V

    .line 14
    :goto_1
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private uploadImage(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 10

    .line 1
    const-string v0, "uploadImage"

    const-string v1, "UploadResourceService"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getMaxUploadSize()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    .line 5
    new-instance v0, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;

    invoke-direct {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;-><init>()V

    .line 6
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->setFileSize(J)V

    .line 7
    sget-object v2, Lcom/gpc/operations/service/net/HTTPRequest;->Companion:Lcom/gpc/operations/service/net/HTTPRequest$Companion;

    iget-object v3, p0, Lcom/gpc/operations/service/UploadResourceService;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->fileInputStreamProvider(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->setStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v3, Lcom/gpc/operations/service/net/HTTPRequest;->Companion:Lcom/gpc/operations/service/net/HTTPRequest$Companion;

    iget-object v4, p0, Lcom/gpc/operations/service/UploadResourceService;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getMaxUploadSize()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->compressImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/high16 v2, 0x42200000    # 40.0f

    .line 17
    invoke-interface {p3, v2}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 19
    invoke-virtual {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->getFileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1400

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 20
    const-string v2, "directUpload"

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/gpc/operations/service/UploadResourceService;->storageService:Lcom/gpc/operations/service/IStorageService;

    invoke-virtual {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->getStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lcom/gpc/operations/service/UploadResourceService$c;

    invoke-direct {v4, p0, p3}, Lcom/gpc/operations/service/UploadResourceService$c;-><init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/gpc/operations/service/IStorageService;->directUpload(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V

    goto :goto_1

    .line 39
    :cond_1
    const-string v2, "MutipartUpload"

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->getFileSize()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->getStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/gpc/operations/service/UploadResourceService;->uploadMutipart(Lcom/gpc/operations/service/net/MultipartFormDataFile;JLjava/io/InputStream;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    .line 43
    :goto_1
    const-string p1, "destroy compress image result"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->destroy()V

    return-void

    :catch_0
    move-object v9, p3

    .line 45
    const-string p1, "37926"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {v9, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method private uploadMutipart(Lcom/gpc/operations/service/net/MultipartFormDataFile;JLjava/io/InputStream;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->storageService:Lcom/gpc/operations/service/IStorageService;

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gpc/operations/service/UploadResourceService$d;

    move-object v4, p0

    move-object v6, p1

    move-wide v7, p2

    move-object v9, p4

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v9}, Lcom/gpc/operations/service/UploadResourceService$d;-><init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;Lcom/gpc/operations/service/net/MultipartFormDataFile;JLjava/io/InputStream;)V

    invoke-interface {v0, v1, v2, p5, v3}, Lcom/gpc/operations/service/IStorageService;->createMutipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;)V

    return-void
.end method

.method private uploadOtherFormatsFile(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 9

    .line 1
    const-string v0, "uploadOtherFormatsFile"

    const-string v1, "UploadResourceService"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getMaxUploadSize()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    .line 3
    const-string p1, "37927"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/gpc/operations/service/UploadResourceService;->getFileInputStream(Lcom/gpc/operations/service/net/MultipartFormDataFile;)Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_1

    .line 10
    const-string p1, "8001"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    :cond_1
    const/high16 v0, 0x42200000    # 40.0f

    .line 13
    invoke-interface {p3, v0}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 14
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    const-wide/16 v7, 0x1400

    cmp-long v0, v2, v7

    if-gez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->storageService:Lcom/gpc/operations/service/IStorageService;

    new-instance v2, Lcom/gpc/operations/service/UploadResourceService$b;

    invoke-direct {v2, p0, p3}, Lcom/gpc/operations/service/UploadResourceService$b;-><init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    invoke-interface {v0, p1, p2, v6, v2}, Lcom/gpc/operations/service/IStorageService;->directUpload(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {p1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getSize()J

    move-result-wide v2

    div-long v4, v2, v4

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/gpc/operations/service/UploadResourceService;->uploadMutipart(Lcom/gpc/operations/service/net/MultipartFormDataFile;JLjava/io/InputStream;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    .line 35
    :goto_0
    const-string p1, "close input stream"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v6}, Lcom/gpc/operations/utils/IO;->close(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "UploadResourceService"

    const-string v1, "cancel upload task"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized taskIsDone()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public uploadFile(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 2

    .line 1
    const-string v0, "UploadResourceService"

    const-string v1, "uploadFile"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/service/network/NetworkExcutor;->instance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/service/UploadResourceService$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/gpc/operations/service/UploadResourceService$a;-><init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public uploadImageResource(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/service/network/NetworkExcutor;->instance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/service/UploadResourceService$f;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/operations/service/UploadResourceService$f;-><init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService;->future:Ljava/util/concurrent/Future;

    return-void
.end method
