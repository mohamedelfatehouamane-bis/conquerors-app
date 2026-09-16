.class public Lcom/gpc/sdk/realname/GPCRealNameVerification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/realname/helper/RealNameVerification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "RealNameVerification"


# instance fields
.field public a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

.field public b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

.field public c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/realname/GPCRealNameVerificationDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/realname/GPCRealNameVerificationDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    return-void
.end method


# virtual methods
.method public closePanel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public requestState(Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getRealNameVerificationCacheService()Lcom/gpc/sdk/misc/p;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V

    return-void
.end method

.method public setAppearance(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    return-void
.end method

.method public setRealNameVerificationCompatProxy(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    return-void
.end method

.method public showPanel(Landroid/content/Context;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    new-instance v0, Lcom/gpc/sdk/realname/GPCRealNameVerification$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/realname/GPCRealNameVerification$a;-><init>(Lcom/gpc/sdk/realname/GPCRealNameVerification;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->showLoading(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;)V

    .line 14
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    new-instance v0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;-><init>(Lcom/gpc/sdk/realname/GPCRealNameVerification;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method
