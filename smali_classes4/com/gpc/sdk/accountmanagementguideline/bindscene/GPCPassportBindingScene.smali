.class public Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "GPCPassportBindingScene"


# instance fields
.field public a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

.field public b:Lcom/gpc/sdk/account/service/AccountService;

.field public c:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->c:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    .line 3
    new-instance p1, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    invoke-direct {p1}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAccountService()Lcom/gpc/sdk/account/service/AccountService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->b:Lcom/gpc/sdk/account/service/AccountService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->c:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;)Lcom/gpc/sdk/account/service/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->b:Lcom/gpc/sdk/account/service/AccountService;

    return-object p0
.end method


# virtual methods
.method public bind(Landroid/app/Activity;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    new-instance v1, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;)V

    const/16 p2, 0x4a3b

    invoke-virtual {v0, p2, p1, v1}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->login(ILandroid/app/Activity;Lcom/gpc/sdk/account/passport/listener/GPCPassportLoginManagerRequestTokenListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->a:Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/passport/GPCPassportLoginManager;->setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)V

    return-object p0
.end method
