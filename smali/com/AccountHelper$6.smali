.class Lcom/AccountHelper$6;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->agreeSwitchAccont(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mode:I

.field final synthetic val$nLoginType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    iput p1, p0, Lcom/AccountHelper$6;->val$nLoginType:I

    iput p2, p0, Lcom/AccountHelper$6;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/AccountHelper$6;->val$nLoginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m_profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetm_profile()Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agreeSwitchAccont"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p0, Lcom/AccountHelper$6;->val$nLoginType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    iget v0, p0, Lcom/AccountHelper$6;->val$mode:I

    invoke-static {v0}, Lcom/AccountHelper;->_agreeSwitchGuest(I)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 295
    iget v0, p0, Lcom/AccountHelper$6;->val$mode:I

    invoke-static {v0}, Lcom/SwitchsToIGGPassportActivity;->_agreeSwitchGPCPassport(I)V

    return-void

    .line 298
    :cond_1
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetm_profile()Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 299
    :cond_2
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v3

    .line 300
    invoke-virtual {v0, v3}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->getThirdPartyAccountLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

    move-result-object v0

    .line 301
    iget v3, p0, Lcom/AccountHelper$6;->val$mode:I

    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_3

    if-eq v3, v2, :cond_3

    :goto_0
    return-void

    .line 314
    :cond_3
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetm_profile()Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    move-result-object v1

    new-instance v2, Lcom/AccountHelper$6$2;

    invoke-direct {v2, p0}, Lcom/AccountHelper$6$2;-><init>(Lcom/AccountHelper$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->login(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginListener;)V

    return-void

    .line 304
    :cond_4
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetm_profile()Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    move-result-object v1

    new-instance v2, Lcom/AccountHelper$6$1;

    invoke-direct {v2, p0}, Lcom/AccountHelper$6$1;-><init>(Lcom/AccountHelper$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->createAndLogin(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountCreateAndLoginListener;)V

    return-void
.end method
