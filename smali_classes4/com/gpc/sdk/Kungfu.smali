.class public Lcom/gpc/sdk/Kungfu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/Kungfu$GPCAppConfListener;,
        Lcom/gpc/sdk/Kungfu$GPCInitializationListener;,
        Lcom/gpc/sdk/Kungfu$GPCContinueInitFinishedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Kungfu"


# instance fields
.field public a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

.field public b:Lcom/gpc/sdk/kit/stub/d;

.field public c:Lcom/gpc/sdk/GPCConfigurationProvider;

.field public d:Lcom/gpc/sdk/GPCSDKFundamental;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gpc/sdk/Kungfu;->e:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Kungfu:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-direct {v0}, Lcom/gpc/sdk/GPCSDKFundamental;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    .line 11
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCSDKFundamental;->onCreate()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    return-object p1
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/gpc/sdk/GPCSDKFundamental;->setDebugMode(Z)V

    return-void
.end method


# virtual methods
.method public UDID()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Kungfu"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isDelayInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isDelayedInited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Please finish Delay init first."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "return UDID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getDeviceRegisterId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Please init first."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 27
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 30
    const-string v1, "Kungfu"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const-string v0, "[Unknown]"

    return-object v0
.end method

.method public a(Landroid/app/Application;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "create Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mainStub exist, make sure SDK is reset?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->b()V

    .line 7
    :cond_0
    new-instance v0, Lcom/gpc/sdk/kit/stub/d;

    invoke-direct {v0}, Lcom/gpc/sdk/kit/stub/d;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mainStub :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/kit/stub/d;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/gpc/sdk/Kungfu;->e:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "switchGameId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "configurationProvider.getGameId():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gameId changed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/GPCSDKFundamental;->setGameId(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "configurationProvider is null."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/Kungfu;->e:Z

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v2, "primary_app_config_notification"

    invoke-virtual {v0, v2, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->b()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCSDKFundamental;->onDestroy()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onDestroy end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public continueInitialize(Lcom/gpc/sdk/Kungfu$GPCContinueInitFinishedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    new-instance v1, Lcom/gpc/sdk/Kungfu$d;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/Kungfu$d;-><init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/Kungfu$GPCContinueInitFinishedListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCSDKFundamental;->continueInitialize(Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;)V

    return-void
.end method

.method public getBlackListedWord()Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedUserGeneratedContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->a()Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getGameId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getI18N()Lcom/gpc/sdk/utils/modules/I18NModule;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCSDKFundamental;->getI18N()Lcom/gpc/sdk/utils/modules/I18NModule;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsController()Lcom/gpc/sdk/permision/PermissionsController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCSDKFundamental;->getPermissionsController()Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedAccountManagementGuideline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->b()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedAgreementSigning()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedAgreementSigning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getPreparedAgreementSigning:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getInformType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getInformType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/String;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getPreparedAgreementSigning: appConfig is null. ASAP model."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->INFORM_TYPE_ASAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/String;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedAgreementSigningV2()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedAgreementSigning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->c()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedAppRating()Lcom/gpc/sdk/apprating/GPCAppRating;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedAppRating"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getAppRatingStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getAppRating:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getAppRatingStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getAppRatingStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7
    new-instance v2, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    invoke-static {v0}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->getByValue(I)Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;-><init>(Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/kit/stub/b;->a(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)Lcom/gpc/sdk/apprating/GPCAppRating;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getAppRating:appConfig is null. Minimized"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    sget-object v2, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Minimized:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    invoke-direct {v1, v2}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;-><init>(Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/kit/stub/b;->a(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)Lcom/gpc/sdk/apprating/GPCAppRating;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedCompliance()Lcom/gpc/sdk/compliance/GPCCompliance;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedCompliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->d()Lcom/gpc/sdk/compliance/GPCCompliance;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedEventCollection()Lcom/gpc/sdk/eventcollection/GPCEventCollection;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedEventCollection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->e()Lcom/gpc/sdk/eventcollection/GPCEventCollection;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedExperimentalEventCollection()Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GPCExperimentalEventCollection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->f()Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedInAppPurchase()Lcom/gpc/sdk/payment/GPCPayment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->j()Lcom/gpc/sdk/payment/GPCPayment;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedInGameReporting()Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedInGameReporting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->g()Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedIncidentCollector()Lcom/gpc/sdk/incident/GPCIncidentCollector;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedIncidentCollector"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->h()Lcom/gpc/sdk/incident/GPCIncidentCollector;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedRiskManagement()Lcom/gpc/sdk/risk/GPCRiskManagement;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedRiskManagement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->k()Lcom/gpc/sdk/risk/GPCRiskManagement;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedStorage()Lcom/gpc/sdk/storage/GPCStorage;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->l()Lcom/gpc/sdk/storage/GPCStorage;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedTranslator()Lcom/gpc/sdk/translate/GPCTranslator;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedTranslator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->m()Lcom/gpc/sdk/translate/GPCTranslator;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedURLBundle()Lcom/gpc/sdk/GPCURLBundle;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCURLBundle;->sharedInstance()Lcom/gpc/sdk/GPCURLBundle;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedWebViewLayout(Landroid/app/Activity;)Lcom/gpc/sdk/GPCWebViewLayout;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPreparedWebViewLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public initialize(Lcom/gpc/sdk/Kungfu$GPCInitializationListener;)V
    .locals 4

    .line 25
    const-string v0, "==================== Kungfu initialize ============================"

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/Kungfu;->a(Landroid/app/Application;)V

    .line 37
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->createConfiguration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Game ID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GPCSDKFundamental initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Lcom/gpc/sdk/Kungfu$b;

    invoke-direct {v3, p0, p1}, Lcom/gpc/sdk/Kungfu$b;-><init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/Kungfu$GPCInitializationListener;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V

    return-void

    .line 42
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Please check GPCConfigurationProvider is not null or Application is not null!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "900002"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/Kungfu$GPCInitializationListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public initialize(Ljava/lang/String;Lcom/gpc/sdk/Kungfu$GPCAppConfListener;)V
    .locals 4

    .line 1
    const-string v0, "==================== Kungfu initialize ============================"

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Kungfu initialize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/Kungfu;->a(Landroid/app/Application;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->createConfiguration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Game ID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfigurationProvider;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GPCSDKFundamental initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    iget-object v2, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Lcom/gpc/sdk/Kungfu$a;

    invoke-direct {v3, p0, p2}, Lcom/gpc/sdk/Kungfu$a;-><init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/Kungfu$GPCAppConfListener;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V

    return-void

    .line 21
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Please check GPCConfigurationProvider is not null or Application is not null!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {p1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    const/4 v0, 0x0

    .line 24
    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/Kungfu$GPCAppConfListener;->onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public loadAppConf(Ljava/lang/String;Lcom/gpc/sdk/Kungfu$GPCAppConfListener;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Kungfu loadAppConf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    new-instance v1, Lcom/gpc/sdk/Kungfu$c;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/Kungfu$c;-><init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/Kungfu$GPCAppConfListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/GPCSDKFundamental;->getAppConfig(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V

    return-void

    .line 12
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Please check GPCConfigurationProvider is not null or Application is not null!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p1, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {p1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    const/4 v0, 0x0

    .line 15
    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/Kungfu$GPCAppConfListener;->onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    if-nez v0, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Kungfu not init yet!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->getPreparedInAppPurchase()Lcom/gpc/sdk/payment/GPCPayment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->getPreparedInAppPurchase()Lcom/gpc/sdk/payment/GPCPayment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/GPCPayment;->onActivityResult(IILandroid/content/Intent;)Z

    .line 15
    :cond_2
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountBindScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->getPassportBindingScene()Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->onActivityResult(IILandroid/content/Intent;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->getPassportLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->onActivityResult(IILandroid/content/Intent;)V

    .line 21
    :cond_3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    new-instance v0, Lcom/gpc/sdk/notification/GPCNotification;

    new-instance v1, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;

    invoke-direct {v1, p1, p2, p3}, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;-><init>(IILandroid/content/Intent;)V

    const-string p1, "activity_result_received"

    invoke-direct {v0, p1, v1}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    :cond_4
    return-void
.end method

.method public onGameSessionCreated(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " createGameSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "primary_app_config_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rec Primary AppConfig notify."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/Kungfu;->a:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    :cond_0
    return-void
.end method

.method public prepareAccountManagementGuideline(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareAgreementSigning(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareAppRating(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareCompliance(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareEventCollection(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareExperimentalEventCollection(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareInAppPurchase(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/kit/stub/b;->a(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V

    return-void
.end method

.method public prepareInGameReporting(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareIncidentCollector(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareRiskManagement(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareStorage(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareTranslator(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public prepareURLBundle(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;->onPrepared(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public quickLogin(Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "quickLogin,listener is null?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->i()Lcom/gpc/sdk/account/GPCLogin;

    move-result-object v0

    .line 4
    :try_start_0
    new-instance v2, Lcom/gpc/sdk/Kungfu$e;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/Kungfu$e;-><init>(Lcom/gpc/sdk/Kungfu;Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;)V

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/account/GPCLogin;->start(Lcom/gpc/sdk/account/GPCLoginListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v0

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
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/GPCSDKFundamental;->setCommonApiRequestHeaders(Ljava/util/Map;)V

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
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/GPCSDKFundamental;->setCommonWebViewRequestHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public setConfFileName(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfFileName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public setConfigurationProvider(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setConfigurationProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationProvider;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    return-void
.end method

.method public setCryptoConfig([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->d:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/GPCSDKFundamental;->setCryptoConfig([B)V

    return-void
.end method

.method public setLoginDelegate(Lcom/gpc/sdk/account/GPCLoginDelegate;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setLoginDelegate, is null?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/gpc/sdk/Kungfu;->e:Z

    if-nez v0, :cond_1

    .line 3
    const-string p1, "Kungfu is not inited."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/d;->a()Lcom/gpc/sdk/kit/stub/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/kit/stub/b;->i()Lcom/gpc/sdk/account/GPCLogin;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/GPCLogin;->setLoginDelegate(Lcom/gpc/sdk/account/GPCLoginDelegate;)V

    return-void
.end method

.method public startup()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "startup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kungfu"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/Kungfu;->c:Lcom/gpc/sdk/GPCConfigurationProvider;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "configurationProvider is null, please check it!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/Kungfu;->b:Lcom/gpc/sdk/kit/stub/d;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/kit/stub/d;->a(Lcom/gpc/sdk/GPCConfigurationProvider;)V

    return-void
.end method
