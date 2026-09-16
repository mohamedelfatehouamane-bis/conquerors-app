.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

.field public final synthetic c:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

.field public final synthetic d:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

.field public final synthetic e:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->e:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iput-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->b:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    iput-object p4, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->c:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    iput-object p5, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->d:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "request web sso token error.errorcode."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 5
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->a:Ljava/lang/String;

    const-string v0, "token"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p1, "sso_token"

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "game_id"

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->e:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->b:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    invoke-static {p1, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "usage"

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->c:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getUniqueFileName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "filename"

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->c:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getPayload()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payload"

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-direct {v2}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;-><init>()V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->e:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->b(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/api/c/object/v2/upload"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->c:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getRealFilePath()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v7, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;

    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->e:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;->d:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;

    invoke-direct {v7, p1, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V

    invoke-virtual/range {v2 .. v7}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method
