.class public Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;
.super Lcom/gpc/sdk/push/BasePushNotification;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "GeTuiPush"


# instance fields
.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/push/BasePushNotification;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;->k:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/gpc/sdk/push/GPCPushType;->GETUI:Lcom/gpc/sdk/push/GPCPushType;

    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCPushType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/gpc/sdk/push/IGetPushTokenCallback;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/gpc/sdk/push/IGetPushTokenCallback;->onGot(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "GeTuiPush"

    const-string v1, "initGeTuiService."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->currentUserId()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->setUserId(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->setGameId(Ljava/lang/String;)V

    .line 12
    iget-boolean p1, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;->k:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;->k:Z

    .line 14
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->setRegId(Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object p1

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;->k:Z

    .line 2
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packagename:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/gpc/util/DeviceUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeTuiPush"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Lcom/gpc/sdk/push/BasePushNotification;->initialize(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUninitialized()V
    .locals 0

    return-void
.end method
