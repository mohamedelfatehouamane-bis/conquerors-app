.class public interface abstract Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/service/UploadResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUploadResourceListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onFileException(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onFinished(Ljava/lang/String;)V
.end method

.method public abstract onProgress(F)V
.end method
