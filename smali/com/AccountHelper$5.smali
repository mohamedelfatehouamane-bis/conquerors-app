.class Lcom/AccountHelper$5;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->_switchLoginByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field final synthetic val$profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;


# direct methods
.method constructor <init>(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    iput-object p2, p0, Lcom/AccountHelper$5;->val$profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object p2, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {p2}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p2

    .line 245
    invoke-static {p1, p2}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 p3, 0x4

    const-string v0, ""

    invoke-virtual {p1, p3, p2, v0}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/AccountHelper$5;->val$profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-static {v0}, Lcom/AccountHelper;->-$$Nest$sfputm_profile(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V

    if-nez p2, :cond_2

    .line 256
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {p2}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    return-void

    .line 258
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 259
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {p2}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    return-void

    .line 263
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getLoginType()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v0}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 265
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {p2}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, p3}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    return-void

    .line 269
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getLoginType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {p2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 272
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/AccountHelper$5;->val$loginType:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {p2}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2, p3}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
