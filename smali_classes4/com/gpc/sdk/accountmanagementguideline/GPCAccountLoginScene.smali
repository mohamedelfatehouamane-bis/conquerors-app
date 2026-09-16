.class public Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

.field public b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

.field public c:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

.field public d:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/account/GPCLogin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->d:Lcom/gpc/sdk/account/GPCLogin;

    .line 3
    new-instance p1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;-><init>(Lcom/gpc/sdk/account/GPCLogin;)V

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

    .line 4
    new-instance p1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;-><init>(Lcom/gpc/sdk/account/GPCLogin;)V

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

    .line 5
    new-instance p1, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;-><init>(Lcom/gpc/sdk/account/GPCLogin;)V

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->c:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    return-void
.end method


# virtual methods
.method public getGuestLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->a:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

    return-object v0
.end method

.method public getPassportLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->c:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    return-object v0
.end method

.method public getThirdPartyAccountLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->b:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

    return-object v0
.end method
