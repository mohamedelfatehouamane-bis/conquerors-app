.class Lcom/SwitchsToFaceBookActivity$1;
.super Ljava/lang/Object;
.source "SwitchsToFaceBookActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/SwitchsToFaceBookActivity;->loginFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/SwitchsToFaceBookActivity;


# direct methods
.method constructor <init>(Lcom/SwitchsToFaceBookActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/SwitchsToFaceBookActivity$1;->this$0:Lcom/SwitchsToFaceBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 67
    :try_start_0
    invoke-static {}, Lcom/SwitchsToFaceBookActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/SwitchsToFaceBookActivity$1;->this$0:Lcom/SwitchsToFaceBookActivity;

    invoke-virtual {v0}, Lcom/SwitchsToFaceBookActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const-string v0, "FacebookException: "

    .line 79
    :try_start_0
    const-string v1, "SwitchFaceBook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/SwitchsToFaceBookActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v1, v0}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/SwitchsToFaceBookActivity$1;->this$0:Lcom/SwitchsToFaceBookActivity;

    invoke-virtual {p1}, Lcom/SwitchsToFaceBookActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 55
    new-instance v0, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;-><init>()V

    .line 56
    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setPlatform(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setToken(Ljava/lang/String;)V

    .line 58
    sget-object p1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->FACEBOOK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v0, p1}, Lcom/AccountHelper;->_switchLoginByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V

    .line 59
    iget-object p1, p0, Lcom/SwitchsToFaceBookActivity$1;->this$0:Lcom/SwitchsToFaceBookActivity;

    invoke-virtual {p1}, Lcom/SwitchsToFaceBookActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/SwitchsToFaceBookActivity$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
