.class public Lcom/gpc/sdk/misc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/GPCCDNUploaderV2;


# instance fields
.field public a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-direct {v0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/misc/i;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    return-void
.end method


# virtual methods
.method public prepareAndUpload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/i;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->prepareAndUpload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;)V

    return-void
.end method

.method public prepareAndUpload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/i;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->prepareAndUpload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;)V

    return-void
.end method

.method public upload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/i;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->upload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V

    return-void
.end method

.method public upload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/i;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->upload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V

    return-void
.end method
