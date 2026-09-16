.class public Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

.field public b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;-><init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

    .line 3
    new-instance p1, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;-><init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    return-void
.end method


# virtual methods
.method public getPassportBindingScene()Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    return-object v0
.end method

.method public getThirdPartyAccountBindingScene()Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

    return-object v0
.end method
