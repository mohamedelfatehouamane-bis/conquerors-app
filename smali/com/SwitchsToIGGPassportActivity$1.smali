.class Lcom/SwitchsToIGGPassportActivity$1;
.super Ljava/lang/Object;
.source "SwitchsToIGGPassportActivity.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/SwitchsToIGGPassportActivity;->switchGPCPassportLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/SwitchsToIGGPassportActivity;


# direct methods
.method constructor <init>(Lcom/SwitchsToIGGPassportActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/SwitchsToIGGPassportActivity$1;->this$0:Lcom/SwitchsToIGGPassportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;)V
    .locals 6

    .line 65
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p2, p0, Lcom/SwitchsToIGGPassportActivity$1;->this$0:Lcom/SwitchsToIGGPassportActivity;

    invoke-virtual {p2, p1}, Lcom/SwitchsToIGGPassportActivity;->onSwitchLoginByGPCPassportFailed(Lcom/gpc/sdk/error/GPCException;)V

    .line 67
    iget-object p1, p0, Lcom/SwitchsToIGGPassportActivity$1;->this$0:Lcom/SwitchsToIGGPassportActivity;

    invoke-virtual {p1}, Lcom/SwitchsToIGGPassportActivity;->finish()V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->isHasBound()Z

    move-result p1

    .line 73
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object v0

    .line 74
    const-string v1, "SwitchGPCPassport"

    const/4 v2, 0x3

    if-nez p1, :cond_2

    .line 76
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getContext()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    move-result-object p1

    if-nez p1, :cond_1

    .line 77
    const-string p1, "GPCPassportLoginContext is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 p2, 0x4

    const-string v0, ""

    invoke-virtual {p1, p2, v2, v0}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getContext()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    move-result-object p2

    invoke-static {p2}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfputm_IggLoginContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V

    .line 84
    invoke-static {}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2, p1}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 88
    sget-object v3, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 89
    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 91
    const-string v0, "\u7ed1\u5b9a\u7684 GPCID \u4e0d\u662f\u5f53\u524d\u7684 GPCID "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getContext()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    move-result-object p2

    invoke-static {p2}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfputm_IggLoginContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V

    .line 93
    invoke-static {}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v2, p1}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getLoginType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    const-string v0, "\u7ed1\u5b9a\u7684 GPCID \u662f\u5f53\u524d\u7684 GPCID \u4e14\u767b\u5f55\u65b9\u5f0f\u4e00\u6837 "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getContext()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    move-result-object p2

    invoke-static {p2}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfputm_IggLoginContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V

    .line 99
    invoke-static {}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    invoke-virtual {p2, v2, v2, p1}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getLoginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    const-string v0, "\u7ed1\u5b9a\u7684 GPCID \u662f\u5f53\u524d\u7684 GPCID \u4f46\u767b\u5f55\u65b9\u5f0f\u4e0d\u4e00\u6837\uff0c\u767b\u5f55 "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginResult;->getContext()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    move-result-object p2

    invoke-static {p2}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfputm_IggLoginContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V

    .line 105
    invoke-static {}, Lcom/SwitchsToIGGPassportActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v2, p1}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    .line 108
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/SwitchsToIGGPassportActivity$1;->this$0:Lcom/SwitchsToIGGPassportActivity;

    invoke-virtual {p1}, Lcom/SwitchsToIGGPassportActivity;->finish()V

    return-void
.end method
