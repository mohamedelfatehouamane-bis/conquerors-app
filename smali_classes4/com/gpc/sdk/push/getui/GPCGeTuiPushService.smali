.class public Lcom/gpc/sdk/push/getui/GPCGeTuiPushService;
.super Lcom/igexin/sdk/PushService;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "GeTuiPushService"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/igexin/sdk/PushService;-><init>()V

    .line 2
    const-string v0, "GeTuiPushService"

    const-string v1, "GeTuiPushService construction"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const-string v0, "GeTuiPushService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/igexin/sdk/PushService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/igexin/sdk/PushService;->onCreate()V

    .line 2
    const-string v0, "GeTuiPushService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/igexin/sdk/PushService;->onDestroy()V

    .line 2
    const-string v0, "GeTuiPushService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/igexin/sdk/PushService;->onLowMemory()V

    .line 2
    const-string v0, "GeTuiPushService"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    const-string v0, "GeTuiPushService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/igexin/sdk/PushService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
