.class public Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;,
        Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportCreateAndLoginListener;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "GPCPassportLoginContext"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/gpc/sdk/account/GPCLogin;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gpc/sdk/account/GPCLogin;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->b:Lcom/gpc/sdk/account/GPCLogin;

    .line 4
    iput-boolean p3, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->c:Z

    return p0
.end method


# virtual methods
.method public createAndLogin(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportCreateAndLoginListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;-><init>()V

    .line 2
    const-string v1, "gpcaccount"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setPlatform(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setToken(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->b:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v2, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$b;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$b;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportCreateAndLoginListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/account/GPCLogin;->createAndLoginWithThirdPartyAuthorization(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method

.method public login(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;-><init>()V

    .line 2
    const-string v1, "gpcaccount"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setPlatform(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setToken(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->b:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v2, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/account/GPCLogin;->loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method
