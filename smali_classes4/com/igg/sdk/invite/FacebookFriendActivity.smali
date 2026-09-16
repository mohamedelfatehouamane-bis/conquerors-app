.class public Lcom/igg/sdk/invite/FacebookFriendActivity;
.super Lcom/igg/sdk/invite/BaseActivity;
.source "FacebookFriendActivity.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "FacebookFriendActivity"


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;

.field private requestDialog:Lcom/facebook/gamingservices/GameRequestDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/igg/sdk/invite/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/igg/sdk/invite/FacebookFriendActivity;->callbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method static synthetic access$000(Lcom/igg/sdk/invite/FacebookFriendActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/igg/sdk/invite/FacebookFriendActivity;->onFacebookLogined()V

    return-void
.end method

.method private invate()V
    .locals 2

    .line 90
    new-instance v0, Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/igg/sdk/invite/FacebookFriendActivity;->requestDialog:Lcom/facebook/gamingservices/GameRequestDialog;

    .line 91
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 92
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igg/sdk/invite/InviteManager;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igg/sdk/invite/InviteManager;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igg/sdk/invite/InviteManager;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/igg/sdk/invite/FacebookFriendActivity;->requestDialog:Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-virtual {v1, v0}, Lcom/facebook/gamingservices/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/igg/sdk/invite/FacebookFriendActivity;->finish()V

    return-void
.end method

.method private loginFacebook()V
    .locals 3

    .line 59
    const-string v0, "FacebookFriendActivity"

    const-string v1, "loginFacebook"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/sdk/invite/FacebookFriendActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 63
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/sdk/invite/FacebookFriendActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/igg/sdk/invite/FacebookFriendActivity$1;

    invoke-direct {v2, p0}, Lcom/igg/sdk/invite/FacebookFriendActivity$1;-><init>(Lcom/igg/sdk/invite/FacebookFriendActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private onFacebookLogined()V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jniCall.onFacebookLogined: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookFriendActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/igg/sdk/invite/FacebookFriendActivity;->invate()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/igg/sdk/invite/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/igg/sdk/invite/FacebookFriendActivity;->callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/igg/sdk/invite/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/igg/sdk/invite/FacebookFriendActivity;->loginFacebook()V

    .line 48
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/igg/sdk/invite/FacebookFriendActivity;->invate()V

    return-void

    .line 50
    :cond_1
    :goto_0
    const-string p1, "public_profile"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method
