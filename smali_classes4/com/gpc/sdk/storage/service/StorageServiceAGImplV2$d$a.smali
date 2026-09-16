.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iput-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 2

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
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->a:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v0, "sso_token"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "game_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object v0, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->d:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->c:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    invoke-static {v0, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "usage"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    invoke-virtual {p2}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getUniqueFileName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "filename"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->c:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    iget-object p2, p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;->b:Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;

    invoke-virtual {p2}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getPayload()Ljava/lang/String;

    move-result-object p2

    const-string v0, "payload"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;->b:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "expected_filesize"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p2, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v0, "/storage/game/c/object/v2/expect"

    invoke-direct {p2, v0}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, v0}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 17
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;

    invoke-direct {p2, p0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a$a;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d$a;)V

    .line 18
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 78
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method
