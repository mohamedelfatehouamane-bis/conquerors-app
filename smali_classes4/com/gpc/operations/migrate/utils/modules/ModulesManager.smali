.class public Lcom/gpc/operations/migrate/utils/modules/ModulesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "OPS"

.field private static final TAG:Ljava/lang/String; = "ModulesManager"

.field private static classModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/gpc/operations/migrate/utils/modules/Module;",
            ">;"
        }
    .end annotation
.end field

.field private static modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/utils/modules/Module;",
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

.field private static sInstance:Lcom/gpc/operations/migrate/utils/modules/ModulesManager;

.field private static sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sIgnoreModule:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    .line 12
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->UNKNOWN:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sIgnoreModule:Ljava/util/Set;

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
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static cacheModule()Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static contextModule()Lcom/gpc/operations/migrate/utils/modules/ContextModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/ContextModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/ContextModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ContextModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ContextModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getConfiguration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/gpc/operations/migrate/utils/modules/Module;->onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V

    .line 2
    invoke-interface {p0}, Lcom/gpc/operations/migrate/utils/modules/Module;->onAsyncInit()V

    return-void
.end method

.method public static getConfiguration()Lcom/gpc/operations/migrate/Configuration;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getDataBaseModule()Lcom/gpc/operations/database/DataBaseModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/database/DataBaseModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/database/DataBaseModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/database/DataBaseModule;

    invoke-direct {v0}, Lcom/gpc/operations/database/DataBaseModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getI18N()Lcom/gpc/operations/migrate/utils/modules/OPSI18N;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getPreDebugConfigManager()Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static getResourceStorageModule()Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

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
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sIgnoreModule:Ljava/util/Set;

    return-object v0
.end method

.method public static isCreated()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->CREATED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

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
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->INITED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

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
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

    move-result v0

    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->PREINITED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static logModule()Lcom/gpc/operations/migrate/utils/modules/log/LogModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/gpc/operations/migrate/utils/modules/Module;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/migrate/utils/modules/Module;

    return-object p0
.end method

.method public static notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/notification/NotificationCenter;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/notification/NotificationCenter;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/notification/NotificationCenter;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/notification/NotificationCenter;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static onAsyncInit()V
    .locals 5

    .line 1
    const-string v0, "ModulesManager"

    :try_start_0
    const-string v1, "ModulesManager.onAsyncInit  start."

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
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

    invoke-static {v0, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/operations/migrate/utils/modules/Module;->onAsyncInit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    const-string v3, "fatal error!!!"

    invoke-static {v0, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->ASYNCINITED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    sput-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    .line 13
    const-string v1, "ModulesManager.onAsyncInit finish."

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 15
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static onCreate()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->isCreated()Z

    move-result v0

    const-string v1, "ModulesManager"

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "already created."

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "onCreate"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ContextModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ContextModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 11
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/PathModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/PathModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 12
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/log/LogModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 13
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 14
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 15
    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 16
    new-instance v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 17
    new-instance v0, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 18
    new-instance v0, Lcom/gpc/operations/migrate/notification/NotificationCenter;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/notification/NotificationCenter;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 19
    new-instance v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 20
    invoke-static {}, Lcom/gpc/operations/migrate/account/SessionManager;->sharedInstance()Lcom/gpc/operations/migrate/account/SessionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 21
    invoke-static {}, Lcom/gpc/operations/migrate/IdsManager;->sharedInstance()Lcom/gpc/operations/migrate/IdsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 22
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/DeviceIdModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/DeviceIdModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 23
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 24
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 25
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/LegacyTaskModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 26
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ResourceStorageModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 27
    new-instance v0, Lcom/gpc/operations/database/DataBaseModule;

    invoke-direct {v0}, Lcom/gpc/operations/database/DataBaseModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 28
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/cache/CacheModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 29
    new-instance v0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 30
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 31
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->addModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    .line 32
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->CREATED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    return-void
.end method

.method public static onDestroy()V
    .locals 6

    .line 1
    const-string v0, "onDestroy"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

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

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;

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

    invoke-static {v1, v4}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/operations/migrate/utils/modules/Module;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-static {v1, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ModulesManager;

    .line 17
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->UNKNOWN:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    invoke-static {v1, v3, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_1
    const-string v0, "onDestroy end"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "onGameIdChange"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

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

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;

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

    invoke-static {v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, p1}, Lcom/gpc/operations/migrate/utils/modules/Module;->onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "onGameIdChange end"

    invoke-static {v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "onIGXIdChange"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

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

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;

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

    invoke-static {v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, p1}, Lcom/gpc/operations/migrate/utils/modules/Module;->onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "onIGXIdChange end"

    invoke-static {v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onInitSDKFinish()V
    .locals 5

    .line 1
    const-string v0, "onInitSDKFinish"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

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

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;

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

    invoke-static {v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Lcom/gpc/operations/migrate/utils/modules/Module;->onInitFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->INITED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    sput-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onInitSDKFinish end sStatus:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 5

    .line 1
    const-string v0, "onPreInit"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

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

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;

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

    invoke-static {v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2, p0, p1}, Lcom/gpc/operations/migrate/utils/modules/Module;->onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    :try_end_0
    .catch Lcom/gpc/operations/migrate/utils/common/ThrowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 13
    throw p0

    .line 18
    :cond_0
    sget-object p0, Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;->PREINITED:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    sput-object p0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sStatus:Lcom/gpc/operations/migrate/utils/modules/ModuleStatus;

    .line 19
    const-string p0, "onPreInit end"

    invoke-static {v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "onSessionIdChange"

    const-string v1, "ModulesManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

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

    check-cast v2, Lcom/gpc/operations/migrate/utils/modules/Module;

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

    invoke-static {v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, p0, p1}, Lcom/gpc/operations/migrate/utils/modules/Module;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    const-string v3, "fatal error!!!"

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "onGameIdChange end"

    invoke-static {v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/PathModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/PathModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/PathModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/PathModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static removeModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static replaceModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->classModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/migrate/utils/modules/Module;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->modules:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static serviceURLBuilderManager()Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static shareModule()Lcom/gpc/operations/migrate/utils/share/InternalShareModule;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/operations/migrate/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->firstAidModule(Lcom/gpc/operations/migrate/utils/modules/Module;)V

    :cond_0
    return-object v0
.end method

.method private static declared-synchronized sharedInstance()Lcom/gpc/operations/migrate/utils/modules/ModulesManager;
    .locals 2

    const-class v0, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ModulesManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;-><init>()V

    sput-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ModulesManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->sInstance:Lcom/gpc/operations/migrate/utils/modules/ModulesManager;
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
