.class public Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "GPCGuardianVerification"


# instance fields
.field public a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

.field public b:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;

.field public c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;

    return-void
.end method

.method public static showGuardianVerificationPanel(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;-><init>()V

    .line 2
    const-string v1, "#EEEEEE"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->setHeaderBackgroundColor(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->setUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->setListener(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;)V

    .line 5
    new-instance p1, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;-><init>()V

    .line 6
    iput-object v0, p1, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    .line 7
    invoke-virtual {p1, p0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->showPanel(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public closePanel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setGuardianVerificationCompatProxy(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;

    return-void
.end method

.method public setParams(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    return-void
.end method

.method public showPanel(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$a;-><init>(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$b;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$b;-><init>(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->c:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->showLoading(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;)V

    .line 21
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getWebSSOToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_0
    const-string p1, ""

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->hideLoading()V

    .line 27
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;

    invoke-interface {v3}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification$GPCGuardianVerificationPanel;->show(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
