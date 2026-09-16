.class public Lcom/gpc/sdk/misc/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/misc/o$c;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "MobileDeviceService"

.field public static final e:Ljava/lang/String; = "com.gpc.sdk.push.PUSH_SERVICE_STATE_ACTION"

.field public static final f:Ljava/lang/String; = "com.gpc.sdk.push.PUSH_SERVICE_STATE"


# instance fields
.field public a:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

.field public b:Landroid/content/Context;

.field public c:Lcom/gpc/sdk/push/service/DeviceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/o;->b:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getDeviceService()Lcom/gpc/sdk/push/service/DeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/o;->c:Lcom/gpc/sdk/push/service/DeviceService;

    .line 4
    new-instance v0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/misc/o;->a:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    return-object p2
.end method

.method public a(I)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDeviceService"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/misc/o;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 11
    const-string p1, "notifyState:context == null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gpc.sdk.push.PUSH_SERVICE_STATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v1, "com.gpc.sdk.push.PUSH_SERVICE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/misc/o;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/misc/o;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/gpc/sdk/misc/o;->c:Lcom/gpc/sdk/push/service/DeviceService;

    new-instance v1, Lcom/gpc/sdk/misc/o$b;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/misc/o$b;-><init>(Lcom/gpc/sdk/misc/o;)V

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/push/service/DeviceService;->unregisterDevice(Ljava/lang/String;Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/misc/o;->a:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    if-nez v0, :cond_0

    .line 19
    const-string p1, "MobileDeviceService"

    const-string p2, "storePushNotificationInfos:pushNotificationProfile == null"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storePushNotificationInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileDeviceService"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/misc/o;->c:Lcom/gpc/sdk/push/service/DeviceService;

    move-object v2, v1

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/gpc/sdk/misc/o;->a:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    .line 5
    invoke-virtual {v5}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->currentRegId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/gpc/sdk/misc/o$a;

    invoke-direct {v8, p0, p4, p2, p5}, Lcom/gpc/sdk/misc/o$a;-><init>(Lcom/gpc/sdk/misc/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p2

    move-object v7, p3

    move-object v6, p4

    move-object v0, v2

    move-object v2, v3

    move-object v3, p1

    .line 6
    invoke-interface/range {v0 .. v8}, Lcom/gpc/sdk/push/service/DeviceService;->registerDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/push/service/DeviceRegistrationListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDeviceService"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    const-string p1, "notificationCenter is null!!!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/gpc/sdk/push/bean/PushType;->FCM:Lcom/gpc/sdk/push/bean/PushType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    const-string v0, "fcm_token_refresh"

    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lcom/gpc/sdk/push/bean/PushType;->ADM:Lcom/gpc/sdk/push/bean/PushType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    const-string v0, "adm_token_refresh"

    goto :goto_0

    .line 12
    :cond_2
    const-string v0, ""

    .line 15
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Lcom/gpc/sdk/notification/GPCNotification;

    invoke-direct {v1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    .line 21
    :cond_3
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
