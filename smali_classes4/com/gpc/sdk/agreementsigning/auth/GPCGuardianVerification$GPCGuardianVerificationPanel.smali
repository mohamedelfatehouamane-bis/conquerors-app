.class public final Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GPCGuardianVerificationPanel"
.end annotation


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

.field public c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;


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
    sget p1, Lcom/gpc/sdk/misc/R$layout;->gpc_a_misc_guardian_verification_panel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget p1, Lcom/gpc/sdk/misc/R$id;->rl_content:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->a:Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/InsetsHelper;->enableEdgeToEdge(Landroid/view/Window;)V

    .line 5
    new-instance p1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel$a;-><init>(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewState(Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;)V

    .line 34
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHeaderViewBackgroundColor(Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getBackBtnIcon()I

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getBackBtnIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public show(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p3, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?sso_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&game_id="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public showLoading(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
