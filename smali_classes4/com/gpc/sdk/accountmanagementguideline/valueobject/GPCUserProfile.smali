.class public Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bindingProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;",
            ">;"
        }
    .end annotation
.end field

.field private loginType:Ljava/lang/String;

.field private realNameVerificationState:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindingProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->bindingProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getLoginType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method public getRealNameVerificationState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->realNameVerificationState:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setBindingProfiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->bindingProfiles:Ljava/util/List;

    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->loginType:Ljava/lang/String;

    return-void
.end method

.method public setRealNameVerificationState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->realNameVerificationState:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->userId:Ljava/lang/String;

    return-void
.end method
