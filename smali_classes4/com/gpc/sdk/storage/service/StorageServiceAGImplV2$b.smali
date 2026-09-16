.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->upload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

.field public final synthetic b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

.field public final synthetic c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

.field public final synthetic d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iput-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    iput-object p3, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    iput-object p4, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "StorageServiceAGImplV2"

    const-string v0, "get token error."

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    iget-object v1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    iget-object v2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V

    return-void
.end method
