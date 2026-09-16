.class public interface abstract Lcom/gpc/operations/service/IStorageService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;,
        Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;,
        Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;,
        Lcom/gpc/operations/service/IStorageService$OnUploadCallback;
    }
.end annotation


# virtual methods
.method public abstract abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;)V
.end method

.method public abstract completeMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;Ljava/util/List;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/service/bean/UploadOnePartResult;",
            ">;",
            "Lcom/gpc/operations/service/IStorageService$OnUploadCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createMutipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/IStorageService$OnCreateMutipartUploadCallback;)V
.end method

.method public abstract directUpload(Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadCallback;)V
.end method

.method public abstract uploadMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;JLcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/io/InputStream;Lcom/gpc/operations/service/IStorageService$OnUploadMutipartPartCallback;)V
.end method
