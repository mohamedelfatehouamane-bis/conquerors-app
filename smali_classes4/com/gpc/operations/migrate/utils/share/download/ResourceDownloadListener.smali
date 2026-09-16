.class public interface abstract Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDownloadProgress(F)V
.end method

.method public abstract onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onSuccess(Ljava/io/File;)V
.end method
