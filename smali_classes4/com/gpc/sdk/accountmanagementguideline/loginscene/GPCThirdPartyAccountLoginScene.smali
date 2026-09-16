.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginCheckListener;,
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginListener;,
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "GPCThirdPartyAccountLog"


# instance fields
.field public a:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    return-void
.end method


# virtual methods
.method public checkCandidate(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginCheckListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginCheckListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCLogin;->checkThirdPartyAccountHasBind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    return-void
.end method

.method public createAndLogin(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$c;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$c;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCLogin;->createAndLoginWithThirdPartyAuthorization(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method

.method public login(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->a:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$b;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$b;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCLogin;->loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method
