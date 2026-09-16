.class public interface abstract Lcom/gpc/operations/service/IStorageService$OnUploadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/service/IStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUploadCallback"
.end annotation


# virtual methods
.method public abstract onProgress(F)V
.end method

.method public abstract onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
.end method
