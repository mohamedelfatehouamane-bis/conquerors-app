.class Lcom/BindingToFaceBookActivity$1;
.super Ljava/lang/Object;
.source "BindingToFaceBookActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BindingToFaceBookActivity;->bindToFaceBook()V
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
.field final synthetic this$0:Lcom/BindingToFaceBookActivity;


# direct methods
.method constructor <init>(Lcom/BindingToFaceBookActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/BindingToFaceBookActivity$1;->this$0:Lcom/BindingToFaceBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 63
    const-string v0, "BindingFaceBook"

    const-string v1, "facebook_account_oauth_Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/BindingToFaceBookActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/BindingToFaceBookActivity$1;->this$0:Lcom/BindingToFaceBookActivity;

    invoke-virtual {v0}, Lcom/BindingToFaceBookActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BindingFaceBook"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/BindingToFaceBookActivity;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, ""

    invoke-virtual {p1, v0, v0, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/BindingToFaceBookActivity$1;->this$0:Lcom/BindingToFaceBookActivity;

    invoke-virtual {p1}, Lcom/BindingToFaceBookActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 54
    new-instance v0, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;-><init>()V

    .line 55
    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setPlatform(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->setToken(Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/AccountHelper;->_bindByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V

    .line 58
    iget-object p1, p0, Lcom/BindingToFaceBookActivity$1;->this$0:Lcom/BindingToFaceBookActivity;

    invoke-virtual {p1}, Lcom/BindingToFaceBookActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/BindingToFaceBookActivity$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
