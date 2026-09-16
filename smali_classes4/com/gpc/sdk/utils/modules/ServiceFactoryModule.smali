.class public Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;,
        Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$b;
    }
.end annotation


# static fields
.field public static final APIGATEWAY_CONFIG:Ljava/lang/String; = "apigateway_config"

.field private static final TAG:Ljava/lang/String; = "ServiceFactoryModule"


# instance fields
.field private apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

.field private commonApiRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commonWebViewRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->commonApiRequestHeaders:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->commonWebViewRequestHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getApiGatewayCacheClient()Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getApiGatewayCacheUrlService()Lcom/gpc/sdk/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/request/client/SimpleServiceClient;-><init>(Lcom/gpc/sdk/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public getApiGatewayCacheUrlService()Lcom/gpc/sdk/service/request/api/HTTPService;
    .locals 7

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->getApiGatewayCacheUrlBuilder()Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    move-result-object v4

    .line 3
    new-instance v5, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$b;-><init>(Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$a;)V

    .line 4
    new-instance v1, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImpl;

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory()Lcom/gpc/sdk/utils/factory/IHTTPFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/sdk/service/network/http/HTTPClient;

    move-result-object v3

    iget-object v6, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImpl;-><init>(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/HTTPClient;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V

    .line 5
    new-instance v0, Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct {v0, v2, v5}, Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder;-><init>(Lcom/gpc/sdk/service/request/api/APIGatewayConfig;Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;)V

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->setHeadersBuilder(Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;)V

    .line 6
    new-instance v0, Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;

    invoke-direct {v0}, Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;-><init>()V

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 7
    new-instance v0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;

    invoke-direct {v0}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;-><init>()V

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-object v1
.end method

.method public getApiGatewayConfig()Lcom/gpc/sdk/service/request/api/APIGatewayConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    return-object v0
.end method

.method public getCommonApiRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->commonApiRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getCommonWebViewRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->commonWebViewRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHTTPService()Lcom/gpc/sdk/service/request/api/HTTPService;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    sget-object v2, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    .line 3
    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->getServiceURLBuilder(Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    move-result-object v7

    .line 8
    new-instance v8, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;

    invoke-direct {v8}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;-><init>()V

    .line 9
    new-instance v4, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImpl;

    iget-object v5, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory()Lcom/gpc/sdk/utils/factory/IHTTPFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/sdk/service/network/http/HTTPClient;

    move-result-object v6

    iget-object v9, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct/range {v4 .. v9}, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImpl;-><init>(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/HTTPClient;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V

    .line 10
    new-instance v0, Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct {v0, v1, v8}, Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder;-><init>(Lcom/gpc/sdk/service/request/api/APIGatewayConfig;Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;)V

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->setHeadersBuilder(Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;)V

    .line 11
    new-instance v0, Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;

    invoke-direct {v0}, Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;-><init>()V

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 12
    new-instance v0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;

    invoke-direct {v0}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;-><init>()V

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-object v4
.end method

.method public getHTTPServiceRefactor()Lcom/gpc/sdk/service/request/api/HTTPService;
    .locals 10

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    sget-object v2, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    .line 3
    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->getServiceURLBuilder(Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    move-result-object v7

    .line 8
    new-instance v8, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;

    invoke-direct {v8}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;-><init>()V

    .line 9
    new-instance v4, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImplRefactor;

    iget-object v5, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory()Lcom/gpc/sdk/utils/factory/IHTTPFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/sdk/service/network/http/HTTPClient;

    move-result-object v6

    iget-object v9, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct/range {v4 .. v9}, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImplRefactor;-><init>(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/HTTPClient;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V

    .line 10
    new-instance v0, Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct {v0, v1, v8}, Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder;-><init>(Lcom/gpc/sdk/service/request/api/APIGatewayConfig;Lcom/gpc/sdk/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;)V

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->setHeadersBuilder(Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;)V

    .line 11
    new-instance v0, Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;

    invoke-direct {v0}, Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;-><init>()V

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    .line 12
    new-instance v0, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;

    invoke-direct {v0}, Lcom/gpc/sdk/service/interceptors/HttpAccountSignInterceptor;-><init>()V

    invoke-virtual {v4, v0}, Lcom/gpc/sdk/service/request/api/BaseHTTPService;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-object v4
.end method

.method public getService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/sdk/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;-><init>(Lcom/gpc/sdk/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/sdk/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallAGImpl;-><init>(Lcom/gpc/sdk/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public getServiceClient()Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/sdk/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/request/client/SimpleServiceClient;-><init>(Lcom/gpc/sdk/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public getServiceRefactor()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getHTTPServiceRefactor()Lcom/gpc/sdk/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;-><init>(Lcom/gpc/sdk/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;->setGameId(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;->setToken(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;->setSecretKey(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/gpc/sdk/utils/common/GPCPersistence;

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/GPCPersistence;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    invoke-virtual {v1}, Lcom/gpc/sdk/service/request/api/APIGatewayConfig;->toPersistenceData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apigateway_config"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/utils/common/GPCPersistence;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setApiGatewayConfig(Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/sdk/service/request/api/APIGatewayConfig;

    return-void
.end method

.method public setCommonApiRequestHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->commonApiRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setCommonWebViewRequestHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->commonWebViewRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
