.class public Lcom/gpc/sdk/push/GPCADMPushNotification;
.super Lcom/gpc/sdk/push/BasePushNotification;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "ADMPush"


# instance fields
.field public k:Lcom/amazon/device/messaging/ADM;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/push/BasePushNotification;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    const-string v0, "adm_token_refresh"

    invoke-virtual {p1, v0, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lcom/gpc/sdk/push/GPCPushType;->ADM:Lcom/gpc/sdk/push/GPCPushType;

    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCPushType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/gpc/sdk/push/IGetPushTokenCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCADMPushNotification;->k:Lcom/amazon/device/messaging/ADM;

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCADMPushNotification;->k:Lcom/amazon/device/messaging/ADM;

    invoke-virtual {v1}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Lcom/gpc/sdk/push/IGetPushTokenCallback;->onGot(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/push/BasePushNotification;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public isSupported()Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    iget-object v1, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCADMPushNotification;->k:Lcom/amazon/device/messaging/ADM;

    .line 9
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 10
    const-string v1, "ADMPush"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onUninitialized()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCADMPushNotification;->k:Lcom/amazon/device/messaging/ADM;

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCADMPushNotification;->k:Lcom/amazon/device/messaging/ADM;

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startUnregister()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "adm_token_refresh"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method
