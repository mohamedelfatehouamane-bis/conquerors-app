.class public final Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/realname/GPCRealNameVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealNameVerificationPanel"
.end annotation


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

.field public c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


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

.method public static synthetic a(Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;)Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    return-object p0
.end method


# virtual methods
.method public hideLoading()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/gpc/sdk/misc/R$layout;->gpc_a_misc_real_name_verification_panel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget p1, Lcom/gpc/sdk/misc/R$id;->rl_content:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->a:Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/InsetsHelper;->enableEdgeToEdge(Landroid/view/Window;)V

    .line 5
    new-instance p1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel$a;-><init>(Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewState(Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;)V

    .line 34
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    invoke-virtual {v0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHeaderViewBackgroundColor(Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    invoke-virtual {p1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->getBackBtnIcon()I

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    invoke-virtual {v0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;->getBackBtnIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method public show(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/GPCConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->d:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->e:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->f:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p1

    const-string v0, "verify"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getWebUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "x-gpc-ver"

    const-string v2, "2.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    iget-object p5, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/cn/user?sso_token="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&user_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&g_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public showLoading(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
