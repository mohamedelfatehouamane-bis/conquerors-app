.class public interface abstract Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDownloadProgress(F)V
.end method

.method public abstract onFailure(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onSuccess(Ljava/io/File;)V
.end method
