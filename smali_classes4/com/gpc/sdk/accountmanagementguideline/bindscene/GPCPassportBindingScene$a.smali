.class public Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->bind(Landroid/app/Activity;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginGPCPassportResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 7
    const-string p1, "GPCPassportBindingScene"

    const-string p2, "\u6570\u636e\u5f02\u5e38\uff01"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;

    const-string p2, "114101"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 9
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    new-instance p1, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;-><init>()V

    .line 16
    const-string v0, "gpcaccount"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setPlatform(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setToken(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    invoke-static {p2}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->b(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;)Lcom/gpc/sdk/account/service/AccountService;

    move-result-object p2

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;)V

    invoke-interface {p2, v0, p1, v1}, Lcom/gpc/sdk/account/service/AccountService;->bindToThirdPartyAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V

    return-void
.end method
