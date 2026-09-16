.class public Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$ModulesCompatProxy;
    }
.end annotation


# static fields
.field public static final APIGATEWAY_CONFIG:Ljava/lang/String; = "apigateway_config"

.field private static final TAG:Ljava/lang/String; = "ServiceFactoryModule"


# instance fields
.field private apiGatewayConfig:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneralService()Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;-><init>()V

    return-object v0
.end method

.method public getGeneralService(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
    .locals 2

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;
    .locals 10

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v1

    sget-object v2, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    .line 3
    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->getServiceURLBuilder(Lcom/gpc/operations/migrate/Configuration;Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    move-result-object v7

    .line 8
    new-instance v8, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$ModulesCompatProxy;

    invoke-direct {v8}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$ModulesCompatProxy;-><init>()V

    .line 9
    new-instance v4, Lcom/gpc/operations/migrate/service/request/api/APIGatewayMultiLinkImpl;

    iget-object v5, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/factory/Factory;->httpFactory()Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    move-result-object v6

    iget-object v9, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct/range {v4 .. v9}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayMultiLinkImpl;-><init>(Landroid/content/Context;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v0, v1, v8}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;-><init>(Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;)V

    invoke-virtual {v4, v0}, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->setHeadersBuilder(Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)V

    return-object v4
.end method

.method public getService()Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public getServiceCall()Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCall;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;-><init>(Lcom/gpc/operations/migrate/service/request/api/HTTPService;)V

    return-object v0
.end method

.method public getSingleLinkSyncHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/factory/Factory;->httpFactory()Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/gpc/operations/migrate/service/request/api/SingleLinkSyncImpl;-><init>(Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;)V

    return-object v0
.end method

.method public getStaticsService(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSyncHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;
    .locals 10

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v1

    sget-object v2, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    .line 3
    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->getServiceURLBuilder(Lcom/gpc/operations/migrate/Configuration;Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    move-result-object v7

    .line 8
    new-instance v8, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$ModulesCompatProxy;

    invoke-direct {v8}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$ModulesCompatProxy;-><init>()V

    .line 9
    new-instance v4, Lcom/gpc/operations/migrate/service/request/api/APIGatewayMultiLinkSyncImpl;

    iget-object v5, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/factory/Factory;->httpFactory()Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/factory/IHTTPFactory;->createHTTPClient()Lcom/gpc/operations/migrate/service/network/http/HTTPClient;

    move-result-object v6

    iget-object v9, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct/range {v4 .. v9}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayMultiLinkSyncImpl;-><init>(Landroid/content/Context;Lcom/gpc/operations/migrate/service/network/http/HTTPClient;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Lcom/gpc/operations/migrate/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;)V

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    invoke-direct {v0, v1, v8}, Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder;-><init>(Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;Lcom/gpc/operations/migrate/service/request/api/APIGatewayDefaultHeadersBuilder$CompatProxy;)V

    invoke-virtual {v4, v0}, Lcom/gpc/operations/migrate/service/request/api/BaseHTTPService;->setHeadersBuilder(Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)V

    return-object v4
.end method

.method public getWebService(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getWebUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onAsyncInit()V
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

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$a;-><init>(Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->apiGatewayConfig:Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->context:Landroid/content/Context;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
