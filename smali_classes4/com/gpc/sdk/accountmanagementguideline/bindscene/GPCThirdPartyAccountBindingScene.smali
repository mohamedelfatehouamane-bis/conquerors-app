.class public Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;
    }
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/account/service/AccountService;

.field public b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAccountService()Lcom/gpc/sdk/account/service/AccountService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->a:Lcom/gpc/sdk/account/service/AccountService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->a:Lcom/gpc/sdk/account/service/AccountService;

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;

    invoke-direct {v2, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/gpc/sdk/account/service/AccountService;->bindToThirdPartyAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V

    return-void
.end method
