.class public interface abstract Lcom/gpc/resourcestorage/listener/ResourceDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V
.end method

.method public abstract onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
.end method
