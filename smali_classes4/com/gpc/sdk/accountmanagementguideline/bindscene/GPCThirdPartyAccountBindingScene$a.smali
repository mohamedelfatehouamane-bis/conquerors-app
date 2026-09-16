.class public Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->bind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;->b:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->a(Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->addUserBindingProfile(Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V

    .line 2
    iget-object p3, p0, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$a;->a:Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;

    invoke-interface {p3, p1, p2}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
