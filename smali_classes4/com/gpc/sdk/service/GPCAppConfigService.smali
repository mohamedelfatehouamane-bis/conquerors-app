.class public Lcom/gpc/sdk/service/GPCAppConfigService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/GPCAppConfigService$g;,
        Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;,
        Lcom/gpc/sdk/service/GPCAppConfigService$f;,
        Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GPCAppConfigService"


# instance fields
.field private config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

.field private context:Landroid/content/Context;

.field private isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

.field private storage:Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

.field private taskByDynamicAddress:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

.field private taskBySNDAddress:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

.field private taskByStaticAddress:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->context:Landroid/content/Context;

    .line 12
    new-instance v0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

    iget-object v1, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->storage:Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory()Lcom/gpc/sdk/utils/factory/IServiceFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/factory/IServiceFactory;->createService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 14
    new-instance v1, Lcom/gpc/sdk/service/interceptors/UserDefined304Interceptor;

    invoke-direct {v1}, Lcom/gpc/sdk/service/interceptors/UserDefined304Interceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/service/GPCAppConfigService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/GPCAppConfigService;->loadFromDynamicAddress()V

    return-void
.end method

.method public static synthetic access$200(Lcom/gpc/sdk/service/GPCAppConfigService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/GPCAppConfigService;->loadFromSNDAddress()V

    return-void
.end method

.method public static synthetic access$300(Lcom/gpc/sdk/service/GPCAppConfigService;)Lcom/gpc/sdk/service/GPCAppConfigService$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/gpc/sdk/service/GPCAppConfigService;)Lcom/gpc/sdk/utils/common/config/AppConfigStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->storage:Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

    return-object p0
.end method

.method private load(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;ILcom/gpc/sdk/service/GPCAppConfigService$f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string p2, "A load on the unfinished, later again."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConf"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gpc/sdk/service/GPCAppConfigService$g;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;Lcom/gpc/sdk/service/GPCAppConfigService$a;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    .line 8
    iput-object p4, v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->a:Lcom/gpc/sdk/service/GPCAppConfigService$f;

    .line 9
    iput-object p1, v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    .line 10
    iput-object p2, v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->c:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    .line 11
    iput p3, v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->d:I

    .line 13
    invoke-direct {p0}, Lcom/gpc/sdk/service/GPCAppConfigService;->loadFromStaticAddress()V

    return-void
.end method

.method private loadFromDynamicAddress()V
    .locals 5

    .line 1
    const-string v0, "AppConf"

    const-string v1, "load DynamicAddress"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object v3, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->c:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    sget-object v4, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->DYNAMIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gpc/sdk/service/appconf/AppConfMatcher;-><init>(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;Lcom/gpc/sdk/GPCSDKConstant$CDNType;)V

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 4
    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;-><init>(Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->taskByDynamicAddress:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

    .line 5
    new-instance v0, Lcom/gpc/sdk/service/GPCAppConfigService$d;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/service/GPCAppConfigService$d;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;)V

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->start(Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;)V

    return-void
.end method

.method private loadFromSNDAddress()V
    .locals 5

    .line 1
    const-string v0, "AppConf"

    const-string v1, "load SNDAddress"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object v3, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->c:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    sget-object v4, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->SND_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gpc/sdk/service/appconf/AppConfMatcher;-><init>(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;Lcom/gpc/sdk/GPCSDKConstant$CDNType;)V

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 4
    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;-><init>(Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->taskBySNDAddress:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

    .line 5
    new-instance v0, Lcom/gpc/sdk/service/GPCAppConfigService$e;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/service/GPCAppConfigService$e;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;)V

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->start(Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;)V

    return-void
.end method

.method private loadFromStaticAddress()V
    .locals 5

    .line 1
    const-string v0, "AppConf"

    const-string v1, "load StaticAddress"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object v3, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->c:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    sget-object v4, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->STATIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gpc/sdk/service/appconf/AppConfMatcher;-><init>(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;Lcom/gpc/sdk/GPCSDKConstant$CDNType;)V

    .line 3
    new-instance v1, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->service:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 4
    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;-><init>(Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->taskByStaticAddress:Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;

    .line 5
    new-instance v0, Lcom/gpc/sdk/service/GPCAppConfigService$c;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/service/GPCAppConfigService$c;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;)V

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;->start(Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;)V

    return-void
.end method

.method private logAppConfigLoadFail()V
    .locals 2

    .line 1
    const-string v0, "AppConfig"

    const-string v1, "AppConfig Load Fail"

    invoke-static {v0, v1}, Lcom/gpc/util/BusinessFlowLogger;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logAppConfigLoadSuccess()V
    .locals 2

    .line 1
    const-string v0, "AppConfig"

    const-string v1, "AppConfig Load Success"

    invoke-static {v0, v1}, Lcom/gpc/util/BusinessFlowLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postAppConfig(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postAppConfigNotification:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isPrimaryAppConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance p2, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;

    invoke-direct {p2}, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->createAppConfig()Lcom/gpc/sdk/bean/GPCAppConfig;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;->setAppConfig(Lcom/gpc/sdk/bean/GPCAppConfig;)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;->setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    .line 7
    new-instance p1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string p3, "app_config_notification"

    invoke-direct {p1, p3, p2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    invoke-direct {v0}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->createPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->setPrimaryAppConfig(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)V

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    .line 12
    invoke-virtual {v0, p2, p3}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->setRequestTime(J)V

    .line 13
    new-instance p1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string p2, "primary_app_config_notification"

    invoke-direct {p1, p2, v0}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    sget-object p2, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string p3, "Notify appconfig exception."

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public loadConfig(Ljava/lang/String;Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;->DEFAULT:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    new-instance v1, Lcom/gpc/sdk/service/GPCAppConfigService$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/service/GPCAppConfigService$a;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;)V

    const/4 p2, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/gpc/sdk/service/GPCAppConfigService;->load(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;ILcom/gpc/sdk/service/GPCAppConfigService$f;)V

    return-void
.end method

.method public loadPrimaryConfig(Ljava/lang/String;Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;->DEFAULT:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    new-instance v1, Lcom/gpc/sdk/service/GPCAppConfigService$b;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/service/GPCAppConfigService$b;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/gpc/sdk/service/GPCAppConfigService;->load(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;ILcom/gpc/sdk/service/GPCAppConfigService$f;)V

    return-void
.end method

.method public onAppConfigLoadFinished(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object v1, v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->a:Lcom/gpc/sdk/service/GPCAppConfigService$f;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget v0, v0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->d:I

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setConfigType(I)V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isPrimaryAppConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->storage:Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

    iget-object v1, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object v1, v1, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->saveLastPrimaryConfigName(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/gpc/sdk/service/GPCAppConfigService;->logAppConfigLoadSuccess()V

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService;->postAppConfig(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->storage:Lcom/gpc/sdk/utils/common/config/AppConfigStorage;

    iget-object p3, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object p3, p3, Lcom/gpc/sdk/service/GPCAppConfigService$g;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->saveLocalConfig(Ljava/lang/String;Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V

    .line 10
    iget-object p2, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->config:Lcom/gpc/sdk/service/GPCAppConfigService$g;

    iget-object p2, p2, Lcom/gpc/sdk/service/GPCAppConfigService$g;->a:Lcom/gpc/sdk/service/GPCAppConfigService$f;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/GPCAppConfigService$f;->a(Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V

    .line 11
    const-string p1, "AppConf"

    const-string p2, "onAppConfigLoadFinished success"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->logFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onAppConfigLoadFromLocal(Lcom/gpc/sdk/service/GPCAppConfigService$f;Lcom/gpc/sdk/service/appconf/GPCAppConfData;Lcom/gpc/sdk/error/GPCException;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string v1, "onAppConfigLoadFromLocal"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string p2, "listener is null"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/gpc/sdk/service/GPCAppConfigService;->logAppConfigLoadSuccess()V

    const-wide/16 v0, -0x1

    .line 11
    invoke-direct {p0, p2, v0, v1}, Lcom/gpc/sdk/service/GPCAppConfigService;->postAppConfig(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V

    .line 13
    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isPrimaryAppConfig:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isPrimaryAppConfig()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isPrimaryAppConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;-><init>()V

    .line 17
    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->createPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->appConf:Ljava/lang/Object;

    .line 18
    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getLocalTimestamp()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->backupsTimeStamp:J

    .line 19
    invoke-interface {p1, v1, v0, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$f;->a(Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;-><init>()V

    .line 22
    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->createAppConfig()Lcom/gpc/sdk/bean/GPCAppConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->appConf:Ljava/lang/Object;

    .line 23
    invoke-virtual {p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getLocalTimestamp()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;->backupsTimeStamp:J

    .line 24
    invoke-interface {p1, v1, v0, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$f;->a(Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/gpc/sdk/service/GPCAppConfigService;->logAppConfigLoadFail()V

    .line 28
    new-instance p2, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {p2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 31
    new-instance v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    invoke-direct {v0}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;-><init>()V

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->setPrimaryAppConfig(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    const-wide/16 v2, 0x0

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->setRequestTime(J)V

    .line 35
    new-instance v2, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v3, "primary_app_config_load_failed_notification"

    invoke-direct {v2, v3, v0}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    sget-object v2, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string v3, "Notify appconfig exception."

    invoke-static {v2, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    invoke-interface {p1, v1, p2, p3}, Lcom/gpc/sdk/service/GPCAppConfigService$f;->a(Lcom/gpc/sdk/utils/common/config/bean/AppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public postExternalAppConfig(Landroid/content/Context;Lcom/gpc/sdk/bean/GPCExternalAppConfig;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string v1, "postAppConfig"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    sget-object p1, Lcom/gpc/sdk/service/GPCAppConfigService;->TAG:Ljava/lang/String;

    const-string p2, "External AppConfig is null"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->create(Landroid/content/Context;Lcom/gpc/sdk/bean/GPCExternalAppConfig;)Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/gpc/sdk/service/GPCAppConfigService;->postAppConfig(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V

    return-void
.end method
