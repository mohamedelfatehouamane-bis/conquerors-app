.class public interface abstract Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/service/IStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUploadMutipartPartCallback"
.end annotation


# virtual methods
.method public abstract onProgress(F)V
.end method

.method public abstract onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/service/bean/UploadOnePartResult;",
            ">;)V"
        }
    .end annotation
.end method
