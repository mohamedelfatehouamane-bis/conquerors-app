.class public Lcom/gpc/sdk/kit/stub/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/kit/stub/Stub;


# static fields
.field public static final c:Ljava/lang/String; = "PushStub"


# instance fields
.field public a:Lcom/gpc/sdk/push/BasePushNotification;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/g;->b:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/g;->a:Lcom/gpc/sdk/push/BasePushNotification;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/push/BasePushNotification;->uninitialize()V

    :cond_0
    return-void
.end method

.method public onStartUp(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/gpc/sdk/kit/stub/g$a;->a:[I

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationProvider;->getPushType()Lcom/gpc/sdk/push/bean/PushType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/gpc/sdk/push/GPCADMPushNotification;

    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/g;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/gpc/sdk/push/GPCADMPushNotification;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/g;->a:Lcom/gpc/sdk/push/BasePushNotification;

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;

    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/g;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/gpc/sdk/push/getui/GPCGeTuiPushNotification;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/g;->a:Lcom/gpc/sdk/push/BasePushNotification;

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Lcom/gpc/sdk/push/GPCFCMPushNotification;

    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/g;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/gpc/sdk/push/GPCFCMPushNotification;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/g;->a:Lcom/gpc/sdk/push/BasePushNotification;

    .line 30
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/kit/stub/g;->a:Lcom/gpc/sdk/push/BasePushNotification;

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/push/BasePushNotification;->initialize(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 32
    :cond_5
    :goto_1
    const-string p1, "PushStub"

    const-string v0, "session or igxid is null, please login first!"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
