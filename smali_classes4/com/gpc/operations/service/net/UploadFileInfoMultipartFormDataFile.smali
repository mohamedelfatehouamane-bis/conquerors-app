.class public final Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;
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

    iput-object p1, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMaxUploadSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getMaxUploadSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "randomUUID().toString()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "-"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    return-object v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFileInfo.uploadToken"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/UploadFileInfoMultipartFormDataFile;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(uploadFileInfo.uri)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
