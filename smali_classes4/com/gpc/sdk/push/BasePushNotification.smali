.class public abstract Lcom/gpc/sdk/push/BasePushNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/push/IGPCPushNotification;
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/push/BasePushNotification$GPC_PUSH_SERVICE_STATE;
    }
.end annotation


# static fields
.field public static final PUSH_SERVICE_STATE_ACTION:Ljava/lang/String; = "com.gpc.sdk.push.PUSH_SERVICE_STATE_ACTION"

.field public static final PUSH_SERVICE_STATE_EXTRA_KEY:Ljava/lang/String; = "com.gpc.sdk.push.PUSH_SERVICE_STATE"

.field public static final j:Ljava/lang/String; = "BasePushNotification"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Ljava/lang/String;

.field public d:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/gpc/sdk/misc/o;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/gpc/sdk/misc/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->h:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getMobileDeviceService(Landroid/content/Context;)Lcom/gpc/sdk/misc/o;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->f:Lcom/gpc/sdk/misc/o;

    .line 26
    new-instance v0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->d:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    .line 27
    new-instance v0, Lcom/gpc/sdk/misc/u;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/misc/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->i:Lcom/gpc/sdk/misc/u;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/push/BasePushNotification;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/push/BasePushNotification;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/gpc/sdk/push/IGetPushTokenCallback;)V
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/push/BasePushNotification;->b()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/push/BasePushNotification;->unRegister(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-interface {p0}, Lcom/gpc/sdk/push/IGPCPushNotification;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/push/BasePushNotification;->onUninitialized()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->i:Lcom/gpc/sdk/misc/u;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/misc/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->d:Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->currentRegId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()V
.end method

.method public final d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/push/BasePushNotification$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/push/BasePushNotification$a;-><init>(Lcom/gpc/sdk/push/BasePushNotification;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/push/BasePushNotification;->a(Lcom/gpc/sdk/push/IGetPushTokenCallback;)V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    const-string v2, "BasePushNotification"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->g:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/gpc/sdk/push/IGPCPushNotification;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    const-string v0, "session_has_been_invalid"

    invoke-virtual {p1, v0, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/push/BasePushNotification;->d()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/push/BasePushNotification;->e()V

    return-void
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "session_has_been_invalid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "BasePushNotification"

    const-string v0, "rec session invalid"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->i:Lcom/gpc/sdk/misc/u;

    invoke-virtual {p1}, Lcom/gpc/sdk/misc/u;->a()V

    :cond_0
    return-void
.end method

.method public abstract onUninitialized()V
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->h:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registrationId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePushNotification"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gameId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/push/BasePushNotification;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/push/BasePushNotification;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/gpc/sdk/push/BasePushNotification;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const-string p1, "canRegister: false"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/gpc/sdk/push/BasePushNotification;->f:Lcom/gpc/sdk/misc/o;

    invoke-virtual {p0}, Lcom/gpc/sdk/push/BasePushNotification;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/gpc/sdk/push/BasePushNotification;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/gpc/sdk/push/BasePushNotification;->h:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "com.gpc.sdk.push.PUSH_SERVICE_STATE_ACTION"

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v0, p1, v1, v2}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->f:Lcom/gpc/sdk/misc/o;

    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public uninitialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "session_has_been_invalid"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 3
    invoke-virtual {p0, v2}, Lcom/gpc/sdk/push/BasePushNotification;->a(Z)V

    :cond_0
    return-void
.end method
