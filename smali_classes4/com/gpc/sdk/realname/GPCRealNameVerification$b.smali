.class public Lcom/gpc/sdk/realname/GPCRealNameVerification$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/realname/GPCRealNameVerification;->showPanel(Landroid/content/Context;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/GPCVerificationPanelListener;

.field public final synthetic b:Lcom/gpc/sdk/realname/GPCRealNameVerification;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/realname/GPCRealNameVerification;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iput-object p2, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->a:Lcom/gpc/sdk/realname/GPCVerificationPanelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iget-object v0, v0, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-virtual {v0}, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->hideLoading()V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->a:Lcom/gpc/sdk/realname/GPCVerificationPanelListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string v0, "290105"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/realname/GPCVerificationPanelListener;->onError(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iget-object v0, p1, Lcom/gpc/sdk/realname/GPCRealNameVerification;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iget-object p1, p1, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {p1}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iget-object p1, p1, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {p1}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$b;->b:Lcom/gpc/sdk/realname/GPCRealNameVerification;

    iget-object p1, p1, Lcom/gpc/sdk/realname/GPCRealNameVerification;->b:Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;

    invoke-interface {p1}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getCommonWebViewRequestHeaders()Ljava/util/Map;

    move-result-object v5

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->show(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
