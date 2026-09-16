.class public Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "GPCLoginedDevicesManager"


# instance fields
.field public a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

.field public b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

.field public c:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;)Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

    return-object p0
.end method


# virtual methods
.method public closePanel()V
    .locals 2

    .line 1
    const-string v0, "closePanel"

    const-string v1, "GPCLoginedDevicesManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    const-string v0, "dismiss"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAppearance(Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->c:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    return-void
.end method

.method public setLoginedDevicesManagerCompatProxy(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerDefaultCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

    return-void
.end method

.method public showPanel(Landroid/content/Context;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V
    .locals 2

    .line 1
    const-string v0, "GPCLoginedDevicesManager"

    const-string v1, "showPanel"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    iget-object v1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->c:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->setAppearance(Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    new-instance v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$a;-><init>(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

    new-instance v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;-><init>(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method
