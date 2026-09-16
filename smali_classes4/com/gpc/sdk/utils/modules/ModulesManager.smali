.class public Lcom/gpc/sdk/utils/modules/ModulesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModulesManager"

.field private static classModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/gpc/sdk/utils/modules/Module;",
            ">;"
        }
    .end annotation
.end field

.field private static modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/modules/Module;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field protected static sIgnoreModule:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/gpc/sdk/utils/modules/ModulesManager;

.field private static sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sIgnoreModule:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    .line 12
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->UNKNOWN:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I18NModule()Lcom/gpc/sdk/utils/modules/I18NModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/I18NModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/I18NModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/I18NModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/I18NModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static addModule(Lcom/gpc/sdk/utils/modules/Module;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sIgnoreModule:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static cacheModule()Lcom/gpc/sdk/utils/modules/cache/CacheModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/cache/CacheModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static contextModule()Lcom/gpc/sdk/utils/modules/ContextModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/ContextModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/ContextModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/ContextModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/ContextModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/DataCenterModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/DataCenterModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/DataCenterModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static deviceIdModule()Lcom/gpc/sdk/utils/modules/DeviceIdModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static eventHub()Lcom/gpc/sdk/eventcollection/internal/client/EventHub;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getConfiguration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/gpc/sdk/utils/modules/Module;->onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V

    .line 2
    invoke-interface {p0}, Lcom/gpc/sdk/utils/modules/Module;->onAsyncInit()V

    return-void
.end method

.method public static getConfiguration()Lcom/gpc/sdk/GPCConfiguration;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->getBaseApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getEventBridge()Lcom/gpc/sdk/utils/modules/EventBridgeModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/EventBridgeModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/EventBridgeModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/EventBridgeModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/EventBridgeModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getPreConfigManager()Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getShadowIgnoreModule()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sIgnoreModule:Ljava/util/Set;

    return-object v0
.end method

.method public static getURLGeneratorModule()Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static isCreated()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->CREATED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDelayedInited()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->DELAYED_INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInited()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPreInited()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->PREINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static logModule()Lcom/gpc/sdk/utils/modules/log/LogModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/log/LogModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/log/LogModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/log/LogModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/gpc/sdk/utils/modules/Module;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/utils/modules/Module;

    return-object p0
.end method

.method public static notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/notification/GPCNotificationCenter;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/notification/GPCNotificationCenter;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/notification/GPCNotificationCenter;

    invoke-direct {v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static onAsyncInit()V
    .locals 5

    .line 1
    const-string v0, "onAsyncInit"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAsyncInit :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/sdk/utils/modules/Module;->onAsyncInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->ASYNCINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 13
    const-string v0, "onAsyncInit end"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onCreate()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isCreated()Z

    move-result v0

    const-string v1, "ModulesManager"

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "already created."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "onCreate"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/gpc/sdk/utils/modules/ContextModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/ContextModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 11
    new-instance v0, Lcom/gpc/sdk/utils/modules/PathModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/PathModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 12
    new-instance v0, Lcom/gpc/sdk/utils/modules/log/LogModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/log/LogModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 13
    new-instance v0, Lcom/gpc/sdk/utils/modules/DataCenterModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 14
    new-instance v0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 15
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 16
    new-instance v0, Lcom/gpc/sdk/utils/modules/I18NModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/I18NModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 17
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 18
    new-instance v0, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 19
    new-instance v0, Lcom/gpc/sdk/notification/GPCNotificationCenter;

    invoke-direct {v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 20
    new-instance v0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    invoke-direct {v0}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 21
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 22
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 23
    new-instance v0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 24
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 25
    new-instance v0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 26
    new-instance v0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 27
    new-instance v0, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/ConfigurationSyncModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 28
    new-instance v0, Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/cache/CacheModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 29
    new-instance v0, Lcom/gpc/sdk/utils/modules/share/InternalShareModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/share/InternalShareModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 30
    new-instance v0, Lcom/gpc/sdk/utils/modules/EventBridgeModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/EventBridgeModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 32
    invoke-static {}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->sharedInstance()Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 33
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 34
    new-instance v0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 35
    new-instance v0, Lcom/gpc/sdk/utils/modules/InitializationStatusModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/InitializationStatusModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 36
    invoke-static {}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance()Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 38
    new-instance v0, Lcom/gpc/sdk/utils/modules/DynamicModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/DynamicModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->addModule(Lcom/gpc/sdk/utils/modules/Module;)V

    .line 39
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->CREATED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    return-void
.end method

.method public static onDelayedInit()V
    .locals 5

    .line 1
    const-string v0, "onDelayedInit"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDelayedInit :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/sdk/utils/modules/Module;->onDelayedInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->DELAYED_INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 13
    const-string v0, "onDelayedInit end"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onDestroy()V
    .locals 6

    .line 1
    const-string v0, "onDestroy"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "fatal error!!!"

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/sdk/utils/modules/Module;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sInstance:Lcom/gpc/sdk/utils/modules/ModulesManager;

    .line 17
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->UNKNOWN:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    invoke-static {v1, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_1
    const-string v0, "onDestroy end"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "onGameIdChange"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGameIdChange :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, p1}, Lcom/gpc/sdk/utils/modules/Module;->onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "onGameIdChange end"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "onIGXIdChange"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIGXIdChange :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, p1}, Lcom/gpc/sdk/utils/modules/Module;->onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "onIGXIdChange end"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onInitSDKFinish()V
    .locals 5

    .line 1
    const-string v0, "onInitSDKFinish"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitFinish :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/sdk/utils/modules/Module;->onInitFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 13
    const-string v0, "onInitSDKFinish end"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 5

    .line 1
    const-string v0, "onPreInit"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreInit :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2, p0, p1}, Lcom/gpc/sdk/utils/modules/Module;->onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    :try_end_0
    .catch Lcom/gpc/sdk/utils/common/GPCThrowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 13
    throw p0

    .line 18
    :cond_0
    sget-object p0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->PREINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sput-object p0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sStatus:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 19
    const-string p0, "onPreInit end"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "onSessionIdChange"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionIdChange :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, p1}, Lcom/gpc/sdk/utils/modules/Module;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "onGameIdChange end"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static pathModule()Lcom/gpc/sdk/utils/modules/PathModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/PathModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/PathModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/PathModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/PathModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static removeModule(Lcom/gpc/sdk/utils/modules/Module;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static replaceModule(Lcom/gpc/sdk/utils/modules/Module;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    sget-object v1, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/Module;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/gpc/sdk/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    invoke-direct {v0}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/sdk/utils/modules/ModulesManager;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static shareModule()Lcom/gpc/sdk/utils/modules/share/InternalShareModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/share/InternalShareModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/share/InternalShareModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/share/InternalShareModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/share/InternalShareModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method private static declared-synchronized sharedInstance()Lcom/gpc/sdk/utils/modules/ModulesManager;
    .locals 2

    const-class v0, Lcom/gpc/sdk/utils/modules/ModulesManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/utils/modules/ModulesManager;->sInstance:Lcom/gpc/sdk/utils/modules/ModulesManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/utils/modules/ModulesManager;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/modules/ModulesManager;-><init>()V

    sput-object v1, Lcom/gpc/sdk/utils/modules/ModulesManager;->sInstance:Lcom/gpc/sdk/utils/modules/ModulesManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/utils/modules/ModulesManager;->sInstance:Lcom/gpc/sdk/utils/modules/ModulesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static timeConsumingCollectorModule()Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/sdk/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method
