.class public abstract Lcom/gpc/sdk/push/GPCADMIntentService;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ADMIntentService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ADMMessageHandleService"

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->sharedInstance()Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->getConfig()Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;->isCustomHandle(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public abstract notificationIcon(Landroid/content/Context;)I
.end method

.method public abstract notificationTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public onMessage(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "ADMIntentService"

    const-string v1, "ADMIntentService:onMessage"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcom/gpc/sdk/push/GPCPushMessage;->create(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/push/GPCPushMessage;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/push/GPCPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v3}, Lcom/gpc/sdk/push/GPCMessageMarker;->getAPPState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3}, Lcom/gpc/sdk/push/GPCPushMessage;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v7

    move-object v2, p0

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/gpc/sdk/push/GPCADMIntentService;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/gpc/sdk/push/GPCADMIntentService;->a()Z

    move-result v0

    invoke-virtual {p0, v3}, Lcom/gpc/sdk/push/GPCADMIntentService;->notificationIcon(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/gpc/sdk/push/GPCADMIntentService;->notificationTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v0, v1, v4}, Lcom/gpc/sdk/push/GPCPushMessage;->notify(Landroid/content/Context;ZILjava/lang/String;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p1, v3}, Lcom/gpc/sdk/push/GPCPushMessage;->sendToMessageCenter(Landroid/content/Context;)V

    return-void
.end method

.method public onRegistered(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADMIntentService:onRegistered:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADMIntentService"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getMobileDeviceService(Landroid/content/Context;)Lcom/gpc/sdk/misc/o;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/gpc/sdk/push/GPCPushType;->ADM:Lcom/gpc/sdk/push/GPCPushType;

    invoke-virtual {v1}, Lcom/gpc/sdk/push/GPCPushType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/misc/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADMIntentService:onRegistrationError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADMIntentService"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnregistered(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADMIntentService:onUnregistered:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADMIntentService"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getMobileDeviceService(Landroid/content/Context;)Lcom/gpc/sdk/misc/o;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;)V

    return-void
.end method
