.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->checkCandidate(Landroid/app/Activity;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;

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
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 7
    const-string p1, "GPCPassportLoginScene"

    const-string p2, "\u6570\u636e\u5f02\u5e38\uff01"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;

    const-string p2, "114101"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 9
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;)V

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

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setToken(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->a(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;)Lcom/gpc/sdk/account/GPCLogin;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$a;Lcom/gpc/sdk/account/passport/bean/GPCPassportTokenResult;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCLogin;->checkThirdPartyAccountHasBind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    return-void
.end method
