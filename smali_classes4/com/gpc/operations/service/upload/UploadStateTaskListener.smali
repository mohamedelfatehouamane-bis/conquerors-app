.class public interface abstract Lcom/gpc/operations/service/upload/UploadStateTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/gpc/operations/service/upload/UploadTask;Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onFileException(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V
.end method

.method public abstract onFinished(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V
.end method

.method public abstract onProgress(Lcom/gpc/operations/service/upload/UploadTask;F)V
.end method

.method public abstract onStart(Lcom/gpc/operations/service/upload/UploadTask;F)V
.end method
