.class public final Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadFileService;->uploadImageResource(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $file:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

.field final synthetic $uploadResponseListener:Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;

.field final synthetic this$0:Lcom/gpc/operations/service/UploadFileService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadFileService;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->this$0:Lcom/gpc/operations/service/UploadFileService;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$file:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    iput-object p3, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$uploadResponseListener:Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->this$0:Lcom/gpc/operations/service/UploadFileService;

    invoke-static {v0}, Lcom/gpc/operations/service/UploadFileService;->access$isCancel$p(Lcom/gpc/operations/service/UploadFileService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/operations/service/UploadFileService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload cancelled for file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$file:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$uploadResponseListener:Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public onFileException(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->this$0:Lcom/gpc/operations/service/UploadFileService;

    invoke-static {v0}, Lcom/gpc/operations/service/UploadFileService;->access$isCancel$p(Lcom/gpc/operations/service/UploadFileService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/operations/service/UploadFileService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload cancelled for file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$file:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$uploadResponseListener:Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;->onFileException(Ljava/lang/String;)V

    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->this$0:Lcom/gpc/operations/service/UploadFileService;

    invoke-static {v0}, Lcom/gpc/operations/service/UploadFileService;->access$isCancel$p(Lcom/gpc/operations/service/UploadFileService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/operations/service/UploadFileService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload cancelled for file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$file:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$uploadResponseListener:Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;->onFinished(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->this$0:Lcom/gpc/operations/service/UploadFileService;

    invoke-static {v0}, Lcom/gpc/operations/service/UploadFileService;->access$isCancel$p(Lcom/gpc/operations/service/UploadFileService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/operations/service/UploadFileService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload cancelled for file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$file:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;->$uploadResponseListener:Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;

    invoke-interface {v0, p1}, Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;->onProgress(F)V

    return-void
.end method
