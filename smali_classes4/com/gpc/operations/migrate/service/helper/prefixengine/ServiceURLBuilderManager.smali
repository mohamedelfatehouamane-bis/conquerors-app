.class public Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "URLBuilderManager"


# instance fields
.field private parses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleParse;",
            ">;"
        }
    .end annotation
.end field

.field private serverListModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;",
            ">;"
        }
    .end annotation
.end field

.field private serviceURLBuilderAG:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

.field private serviceURLBuilderPMS:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

.field private serviceURLBuilderUMS:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getParses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleParse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    return-object v0
.end method

.method public getServerListModels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceURLBuilder(Lcom/gpc/operations/migrate/Configuration;Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p3}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->setPath(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/gpc/operations/migrate/service/helper/prefixengine/ag/APIGatewayURLBuilder;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getApisUrls()Lcom/gpc/operations/migrate/utils/modules/matcher/IURLsMatcher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ag/APIGatewayURLBuilder;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/IURLsMatcher;)V

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;

    if-eqz p2, :cond_1

    .line 14
    invoke-interface {p2}, Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;->getPickPrefix()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_1
    invoke-interface {p1, v0}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->setPrefixes(Ljava/util/List;)V

    .line 19
    invoke-interface {p1, p3}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->setPath(Ljava/lang/String;)V

    return-object p1
.end method

.method public getServiceURLBuilderAG()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-object v0
.end method

.method public getServiceURLBuilderPMS()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderPMS:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-object v0
.end method

.method public getServiceURLBuilderUMS()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderUMS:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    const-string v1, "primary_app_config_notification"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    const-string v1, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

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
    .locals 0

    return-void
.end method

.method public onNotification(Lcom/gpc/operations/migrate/notification/Notification;)V
    .locals 4

    .line 1
    const-string v0, "onNotification"

    const-string v1, "URLBuilderManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "primary_app_config_notification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "error type:"

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 12
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->processMeteData(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/operations/helper/GPCSyncConfigration;

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/helper/GPCSyncConfigration;

    .line 22
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->getMetaConfig()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->processMeteData(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    new-instance v1, Lcom/gpc/operations/migrate/service/helper/prefixengine/ag/APIGatewayRuleParse;

    invoke-direct {v1, p1}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ag/APIGatewayRuleParse;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object p1

    const-string p2, "primary_app_config_notification"

    invoke-virtual {p1, p2, p0}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    .line 5
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object p1

    const-string p2, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-virtual {p1, p2, p0}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public processMeteData(Ljava/lang/String;)V
    .locals 6

    const-string v0, "URLBuilderManager"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    .line 11
    iget-object v3, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleParse;

    invoke-interface {v3, v1}, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleParse;->parse(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceRule-mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;->getSalRuleMode()Lcom/gpc/operations/migrate/service/helper/prefixengine/SALRuleMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", ServiceRule is null!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_1
    iget-object v4, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setParses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleParse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->parses:Ljava/util/Map;

    return-void
.end method

.method public setPickPrefix(Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "URLBuilderManager"

    const-string p2, "setPickPrefix serverListModels is null."

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, p2}, Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;->setPickPrefix(Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;)V

    :cond_1
    return-void
.end method

.method public setServerListModels(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/IServerListModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serverListModels:Ljava/util/Map;

    return-void
.end method

.method public setServiceURLBuilderAG(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderAG:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-void
.end method

.method public setServiceURLBuilderPMS(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderPMS:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-void
.end method

.method public setServiceURLBuilderUMS(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->serviceURLBuilderUMS:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-void
.end method
