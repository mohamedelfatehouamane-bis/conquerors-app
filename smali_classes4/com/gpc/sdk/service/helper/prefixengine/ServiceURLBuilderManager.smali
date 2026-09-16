.class public Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final API_GATEWAY_LINKS_FROM_APPCONFIG_CACHE:Ljava/lang/String; = "api_gateway_links_from_appconfig_cache_"

.field private static final TAG:Ljava/lang/String; = "ServiceURLBuilderManager"


# instance fields
.field private parses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleParse;",
            ">;"
        }
    .end annotation
.end field

.field private serverListModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;",
            ">;"
        }
    .end annotation
.end field

.field private serviceURLBuilderAG:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

.field private storage:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    .line 9
    new-instance v0, Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "api_gateway_links.profile"

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->storage:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method private restoreApiGatewayLinks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->storage:Lcom/gpc/util/LocalStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "api_gateway_links_from_appconfig_cache_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreApiGatewayLinks gameid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ServiceURLBuilderManager"

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "restoreApiGatewayLinks links:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private storeApiGatewayLinks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ";"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storeApiGatewayLinks gameid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceURLBuilderManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "storeApiGatewayLinks links:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->storage:Lcom/gpc/util/LocalStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api_gateway_links_from_appconfig_cache_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getApiGatewayCacheUrlBuilder()Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->restoreApiGatewayLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayCacheURLBuilder;

    new-instance v2, Lcom/gpc/sdk/utils/modules/familyurl/FamilyApisUrlMatcher;

    invoke-direct {v2, v0}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyApisUrlMatcher;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayCacheURLBuilder;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;)V

    return-object v1

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayCacheURLBuilder;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getApisUrls()Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayCacheURLBuilder;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;)V

    return-object v0
.end method

.method public getParses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleParse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    return-object v0
.end method

.method public getServerListModels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceURLBuilder(Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;
    .locals 2

    .line 1
    sget-object p1, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1, p3}, Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;->setPath(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getApisUrls()Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;)V

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;

    if-eqz p2, :cond_1

    .line 22
    invoke-interface {p2}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;->getPickPrefix()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_1
    invoke-interface {p1, v0}, Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;->setPrefixes(Ljava/util/List;)V

    .line 27
    invoke-interface {p1, p3}, Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;->setPath(Ljava/lang/String;)V

    return-object p1
.end method

.method public getServiceURLBuilderAG()Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "primary_app_config_notification"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    const-string v1, "ServiceURLBuilderManager"

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "error type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 15
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    .line 19
    iget-object v3, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/service/helper/prefixengine/RuleParse;

    invoke-interface {v3, v0}, Lcom/gpc/sdk/service/helper/prefixengine/RuleParse;->parse(Lorg/json/JSONObject;)Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceRule-mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;->getSalRuleMode()Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", ServiceRule is null!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_1
    iget-object v4, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    sget-object v0, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->getSal()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->getSal()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    .line 33
    invoke-virtual {v2}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_5
    invoke-direct {p0, v0}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->storeApiGatewayLinks(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    const-string v0, ""

    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    new-instance v1, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayRuleParse;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayRuleParse;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    const-string p2, "primary_app_config_notification"

    invoke-virtual {p1, p2, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

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

.method public setParses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleParse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    return-void
.end method

.method public setPickPrefix(Lcom/gpc/sdk/service/helper/prefixengine/RuleType;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "ServiceURLBuilderManager"

    const-string p2, "setPickPrefix serverListModels is null."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;->setPickPrefix(Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V

    :cond_1
    return-void
.end method

.method public setServerListModels(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    return-void
.end method

.method public setServiceURLBuilderAG(Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    return-void
.end method
