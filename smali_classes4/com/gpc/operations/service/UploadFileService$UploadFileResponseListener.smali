.class public interface abstract Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/service/UploadFileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadFileResponseListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onFileException(Ljava/lang/String;)V
.end method

.method public abstract onFinished(Ljava/lang/String;)V
.end method

.method public abstract onProgress(F)V
.end method
