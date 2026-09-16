.class Lcom/AccountHelper$7;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->_bindByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;


# direct methods
.method constructor <init>(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lcom/AccountHelper$7;->val$profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 405
    const-string v0, "AccountHelper-"

    const-string v1, "_bindByThirdAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/AccountHelper$7;->val$profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getInstanceFromTypeName(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v0

    invoke-static {v0}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 408
    invoke-static {p1, v0}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 409
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 411
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0, p2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 415
    :cond_1
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 422
    :cond_2
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p1

    .line 424
    invoke-static {p1}, Lcom/AccountHelper;->retLoadUser(Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void
.end method
