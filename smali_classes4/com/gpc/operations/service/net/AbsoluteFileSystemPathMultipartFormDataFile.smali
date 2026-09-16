.class public final Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/net/MultipartFormDataFile;


# instance fields
.field private final uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;)V
    .locals 1

    const-string v0, "uploadFileInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.absoluteFileSystemPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMaxUploadSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getMaxUploadSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    return-object v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.uploadToken"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gpc/operations/service/net/AbsoluteFileSystemPathMultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fromFile(File(getAbsolutePath()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
