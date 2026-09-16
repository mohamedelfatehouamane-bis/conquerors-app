.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onProgress(JJ)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/storage/bean/GPCCDNUploaderResultV2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object v0, v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->a:Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;->onSuccess(Lcom/gpc/sdk/storage/bean/GPCCDNUploaderResultV2;)V

    return-void
.end method
