.class public interface abstract Lcom/gpc/resourcestorage/OPSResourceUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelOnFinishFinalSelection()V
.end method

.method public abstract setMaxSize(J)V
.end method

.method public abstract setResourceUploadListener(Lcom/gpc/resourcestorage/listener/ResourceUploadListener;)V
.end method

.method public abstract setShouldUploadOnceSelected(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract uploadOnFinishFinalSelection(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/resourcestorage/OPSResourceTask;",
            ">;)V"
        }
    .end annotation
.end method
