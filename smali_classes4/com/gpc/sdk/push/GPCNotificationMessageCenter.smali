.class public Lcom/gpc/sdk/push/GPCNotificationMessageCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;,
        Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;,
        Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;
    }
.end annotation


# static fields
.field public static final ACTION_CODE_RECEIVER:Ljava/lang/String; = "action.GPCNotification_message_rceiver"

.field private static final TAG:Ljava/lang/String; = "GPCNotificationMessageCenter"

.field private static instance:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;


# instance fields
.field private config:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;

.field private context:Landroid/content/Context;

.field private ifReg:Z

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;",
            "Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;",
            ">;"
        }
    .end annotation
.end field

.field receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    .line 157
    new-instance v0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;-><init>(Lcom/gpc/sdk/push/GPCNotificationMessageCenter;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    .line 158
    new-instance v0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;

    invoke-direct {v0}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->config:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/push/GPCNotificationMessageCenter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    return-object p0
.end method

.method private registerSevicer()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    if-nez v0, :cond_1

    .line 2
    const-string v0, "GPCNotificationMessageCenter"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    const-string v1, "action.GPCNotification_message_rceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    :cond_1
    return-void
.end method

.method public static sharedInstance()Lcom/gpc/sdk/push/GPCNotificationMessageCenter;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->instance:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    invoke-direct {v0}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;-><init>()V

    sput-object v0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->instance:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    .line 5
    :cond_0
    sget-object v0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->instance:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    return-object v0
.end method

.method private unregisterServicer()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addPushMessageLister(Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getConfig()Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->config:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;

    return-object v0
.end method

.method public getListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;",
            "Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    return-object v0
.end method

.method public getReceiver()Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    return-object v0
.end method

.method public isIfReg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    return v0
.end method

.method public isReg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    return v0
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->unregisterServicer()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->context:Landroid/content/Context;

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->registerSevicer()V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removePushMessageLister(Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setIfReg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->ifReg:Z

    return-void
.end method

.method public setListeners(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;",
            "Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->listeners:Ljava/util/Map;

    return-void
.end method

.method public setReceiver(Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->receiver:Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;

    return-void
.end method
