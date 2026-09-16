.class public final Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/upload/UploadVideoTask;->excute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/upload/UploadVideoTask;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/gpc/operations/service/upload/UploadVideoTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload onFailure"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setCompleted(Z)V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setFailure(Z)V

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadTaskStateListener()Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-interface {v0, v1, p1}, Lcom/gpc/operations/service/upload/UploadStateTaskListener;->onFailure(Lcom/gpc/operations/service/upload/UploadTask;Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public onFileException(Ljava/lang/String;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/gpc/operations/service/upload/UploadVideoTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload onFileException"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setCompleted(Z)V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setFailure(Z)V

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadTaskStateListener()Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-interface {v0, v1, p1}, Lcom/gpc/operations/service/upload/UploadStateTaskListener;->onFileException(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V

    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/gpc/operations/service/upload/UploadVideoTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload onFinished("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setResult(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setCompleted(Z)V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setFailure(Z)V

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadTaskStateListener()Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-interface {v0, v1, p1}, Lcom/gpc/operations/service/upload/UploadStateTaskListener;->onFinished(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/operations/service/upload/UploadVideoTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setProgress(F)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadTaskStateListener()Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;->this$0:Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-interface {v0, v1, p1}, Lcom/gpc/operations/service/upload/UploadStateTaskListener;->onProgress(Lcom/gpc/operations/service/upload/UploadTask;F)V

    return-void
.end method
