.class public interface abstract Lcom/gpc/sdk/storage/GPCCDNUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract perform(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
.end method

.method public abstract prepare(Lcom/gpc/sdk/storage/bean/GPCStorageFile;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
.end method

.method public abstract prepare(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
.end method

.method public abstract prepare(Ljava/lang/String;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract prepare(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract upload(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
.end method

.method public abstract upload(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
.end method

.method public abstract upload(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
