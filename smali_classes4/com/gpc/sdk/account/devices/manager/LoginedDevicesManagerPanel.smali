.class public Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "DevicesManagerPanel"


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/gpc/sdk/misc/R$style;->FullScreenDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->c:Ljava/lang/String;

    const-string v2, "sso_token"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->e:Ljava/lang/String;

    const-string v2, "gpc_game_id"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6
    const-string v1, "gpc_udid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/gpc/sdk/misc/R$layout;->gpc_a_core_login_devices_manager_panel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget p1, Lcom/gpc/sdk/misc/R$id;->rl_content_root:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->a:Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/InsetsHelper;->enableEdgeToEdge(Landroid/view/Window;)V

    .line 6
    new-instance p1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel$a;-><init>(Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewState(Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;)V

    .line 36
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getBackBtnIcon()I

    move-result p1

    if-lez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getBackBtnIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setBackBtnIcon(I)V

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getCloseBtnIcon()I

    move-result p1

    if-lez p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getCloseBtnIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setCloseBtnIcon(I)V

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHeaderViewBackgroundColor(Ljava/lang/String;)V

    .line 49
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v0, "x-gpc-ver"

    const-string v1, "1.0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getIdAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-gpc-family"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    const-string v1, "passport"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getWebUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/game/device/entry"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method public setAppearance(Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->f:Lcom/gpc/sdk/account/devices/manager/bean/GPCLoginedDevicesManagerAppearance;

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->c:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->d:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
