.class public Lcom/gpc/sdk/GPCSDKFundamental;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;,
        Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;,
        Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCSDKFundamental"

.field private static sIsDebugMode:Z = false


# instance fields
.field private appConfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

.field private application:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCSDK Version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->getVersion()Lcom/gpc/sdk/GPCVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCVersion;->getGeneralName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GPCSDK CodeBase Version:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->getVersion()Lcom/gpc/sdk/GPCVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCVersion;->getCodebaseVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/GPCSDKFundamental;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->processModuelsWork()V

    return-void
.end method

.method public static synthetic access$102(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental;->appConfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    return-object p1
.end method

.method public static isDebugMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/sdk/GPCSDKFundamental;->sIsDebugMode:Z

    return v0
.end method

.method public static notifycationUpdateMainActivity(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v1, "main_activity_setted"

    invoke-direct {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void
.end method

.method private processModuelsWork()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/util/LocalStorage;

    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental;->application:Landroid/app/Application;

    const-string v2, "getui_push_message"

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onAsyncInit()V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDebugMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p0, Lcom/gpc/sdk/GPCSDKFundamental;->sIsDebugMode:Z

    .line 3
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->setDebugMode(Z)V

    return-void
.end method

.method public static updateMainActivity(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "GPCSDKFundamental"

    if-nez p0, :cond_0

    .line 1
    const-string v1, "updateMainActivity:null"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateMainActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/GPCConfiguration;->setMainActivity(Landroid/app/Activity;)V

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->notifycationUpdateMainActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public continueInitialize(Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;)V
    .locals 4

    .line 1
    const-string v0, "continueInitialize"

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 4
    new-instance v2, Lcom/gpc/sdk/GPCSDKFundamental$c;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/GPCSDKFundamental$c;-><init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;)V

    new-instance v3, Lcom/gpc/sdk/GPCSDKFundamental$d;

    invoke-direct {v3, p0, p1}, Lcom/gpc/sdk/GPCSDKFundamental$d;-><init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;)V

    invoke-virtual {v0, v2, v3}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 27
    instance-of v2, v0, Lcom/gpc/sdk/utils/common/GPCThrowException;

    if-nez v2, :cond_0

    .line 30
    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    invoke-interface {p1}, Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;->onFailed()V

    return-void

    .line 32
    :cond_0
    throw v0
.end method

.method public getAppConfig(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
    .locals 2

    .line 1
    const-string v0, "GPCSDKFundamental"

    const-string v1, "getAppConfig"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-direct {v0}, Lcom/gpc/sdk/service/GPCAppConfigService;-><init>()V

    new-instance v1, Lcom/gpc/sdk/GPCSDKFundamental$f;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/GPCSDKFundamental$f;-><init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/service/GPCAppConfigService;->loadPrimaryConfig(Ljava/lang/String;Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;)V

    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getI18N()Lcom/gpc/sdk/utils/modules/I18NModule;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->I18NModule()Lcom/gpc/sdk/utils/modules/I18NModule;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsController()Lcom/gpc/sdk/permision/PermissionsController;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/permision/PermissionsController;

    invoke-direct {v0}, Lcom/gpc/sdk/permision/PermissionsController;-><init>()V

    return-object v0
.end method

.method public getVersion()Lcom/gpc/sdk/GPCVersion;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/VersionUtil;->version:Lcom/gpc/sdk/GPCVersion;

    return-object v0
.end method

.method public initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V
    .locals 2

    .line 1
    const-string v0, "initialize"

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental;->application:Landroid/app/Application;

    .line 4
    const-string v0, " ModulesManager.onPreInit before"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/GPCConfiguration;->copyFrom(Lcom/gpc/sdk/GPCConfiguration;)V

    .line 8
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getMainActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    .line 9
    const-string p2, "Main Activity is null! Some functions do not work properly, Please config Main Activity!"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V

    .line 12
    const-string p1, "initialize sync part end."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getMainActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/GPCSDKFundamental;->notifycationUpdateMainActivity(Landroid/app/Activity;)V

    .line 17
    new-instance p1, Lcom/gpc/util/SDKTask;

    invoke-direct {p1}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 18
    new-instance p2, Lcom/gpc/sdk/GPCSDKFundamental$a;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/GPCSDKFundamental$a;-><init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V

    new-instance v0, Lcom/gpc/sdk/GPCSDKFundamental$b;

    invoke-direct {v0, p0, p3}, Lcom/gpc/sdk/GPCSDKFundamental$b;-><init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    instance-of p2, p1, Lcom/gpc/sdk/utils/common/GPCThrowException;

    if-nez p2, :cond_1

    .line 48
    const-string p2, ""

    invoke-static {v1, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-interface {p3}, Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;->onFailed()V

    return-void

    .line 50
    :cond_1
    throw p1
.end method

.method public initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/gpc/sdk/GPCSDKFundamental$e;

    invoke-direct {v0, p0, p3, p4}, Lcom/gpc/sdk/GPCSDKFundamental$e;-><init>(Lcom/gpc/sdk/GPCSDKFundamental;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V

    return-void
.end method

.method public initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfigurationBuilder;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    new-instance v0, Lcom/gpc/sdk/GPCConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/GPCConfiguration;-><init>()V

    .line 52
    invoke-virtual {p2, v0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->build(Lcom/gpc/sdk/GPCConfiguration;)V

    .line 53
    invoke-virtual {p0, p1, v0, p3}, Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V

    return-void
.end method

.method public initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfigurationBuilder;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    new-instance v0, Lcom/gpc/sdk/GPCConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/GPCConfiguration;-><init>()V

    .line 55
    invoke-virtual {p2, v0}, Lcom/gpc/sdk/GPCConfigurationBuilder;->build(Lcom/gpc/sdk/GPCConfiguration;)V

    .line 56
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    const-string v0, "GPCSDKFundamental"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const-string v0, "GPCSDKFundamental"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onDestroy()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental;->appConfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    return-void
.end method

.method public onInitSDKFinish()V
    .locals 4

    .line 1
    const-string v0, "onInitSDKFinish"

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onInitSDKFinish()V

    .line 5
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDKFundamental;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "============== Please turn off Debug mode in the release package! =============="

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    sget-object v2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    const-string v3, "debug.mode.opened"

    invoke-virtual {v2, v3, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public postExternalConfig(Lcom/gpc/sdk/bean/GPCExternalAppConfig;)V
    .locals 4

    .line 1
    const-string v0, "postExternalConfig"

    const-string v1, "GPCSDKFundamental"

    :try_start_0
    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-direct {v2}, Lcom/gpc/sdk/service/GPCAppConfigService;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/gpc/sdk/service/GPCAppConfigService;->postExternalAppConfig(Landroid/content/Context;Lcom/gpc/sdk/bean/GPCExternalAppConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->setCommonApiRequestHeaders(Ljava/util/Map;)V

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
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->setCommonWebViewRequestHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public setCryptoConfig([B)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance()Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->setCryptoConfig([B)V

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setGameId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setGameId : original gameid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "current gameid is the same as original gameid "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/GPCConfiguration;->setGameId(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental;->application:Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 11
    invoke-static {v0, p1}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance v1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v2, "game_id_changed"

    invoke-direct {v1, v2, v0, p1}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void
.end method
