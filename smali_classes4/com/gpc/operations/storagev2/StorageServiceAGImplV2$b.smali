.class public Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->uploadInner(Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

.field public final synthetic b:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

.field public final synthetic c:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->c:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iput-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    iput-object p3, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->b:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "StorageServiceAGImplV2"

    const-string v0, "webSSOToken is empty."

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string p1, "sso_token"

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "game_id"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-virtual {p1}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getScene()Ljava/lang/String;

    move-result-object p1

    const-string p2, "usage"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-virtual {p1}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "filename"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-virtual {p1}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getPayload()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payload"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;-><init>()V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->c:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    invoke-static {p2}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->access$200(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/api/c/image/v2/upload"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->a:Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;

    invoke-virtual {p1}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getFilePath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/gpc/operations/migrate/service/request/general/DefaultRequestHeaders;

    invoke-direct {v5}, Lcom/gpc/operations/migrate/service/request/general/DefaultRequestHeaders;-><init>()V

    new-instance v6, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;

    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->c:Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;

    iget-object p2, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;->b:Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;

    invoke-direct {v6, p1, p2}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;-><init>(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V

    invoke-virtual/range {v1 .. v6}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method
