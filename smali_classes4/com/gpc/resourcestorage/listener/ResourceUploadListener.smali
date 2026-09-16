.class public interface abstract Lcom/gpc/resourcestorage/listener/ResourceUploadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFailure(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract onProgress(Lcom/gpc/resourcestorage/OPSResourceTask;)V
.end method

.method public abstract onSelected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/gpc/resourcestorage/OPSResourceTask;Lcom/gpc/resourcestorage/OPSResource;)V
.end method
