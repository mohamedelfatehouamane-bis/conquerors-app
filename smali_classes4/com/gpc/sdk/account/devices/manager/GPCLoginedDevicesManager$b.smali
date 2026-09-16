.class public Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->showPanel(Landroid/content/Context;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;

.field public final synthetic b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;

    iput-object p2, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;->a:Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;->a:Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string v0, "114201"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;->onError(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 5
    :cond_0
    const-string p1, "GPCLoginedDevicesManager"

    const-string v0, "showPanel getSSOTokenForWeb"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;-><init>(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
