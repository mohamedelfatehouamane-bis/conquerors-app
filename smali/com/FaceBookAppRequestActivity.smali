.class public Lcom/FaceBookAppRequestActivity;
.super Lcom/BaseActivity;
.source "FaceBookAppRequestActivity.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "FaceBookRequest"


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;

.field linkContent:Lcom/facebook/share/model/ShareLinkContent;

.field private requestDialog:Lcom/facebook/gamingservices/GameRequestDialog;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetshareDialog(Lcom/FaceBookAppRequestActivity;)Lcom/facebook/share/widget/ShareDialog;
    .locals 0

    iget-object p0, p0, Lcom/FaceBookAppRequestActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfetchToken(Lcom/FaceBookAppRequestActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/FaceBookAppRequestActivity;->fetchToken(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/FaceBookAppRequestActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/FaceBookAppRequestActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 34
    iput-object v0, p0, Lcom/FaceBookAppRequestActivity;->linkContent:Lcom/facebook/share/model/ShareLinkContent;

    return-void
.end method

.method private fetchToken(Ljava/lang/String;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jniCall.onFetchToken1: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBookRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/FaceBookAppRequestActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Lcom/jniCallback;->onFetchToken(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/FaceBookAppRequestActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method private loginFacebook()V
    .locals 3

    .line 127
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/FaceBookAppRequestActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 128
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/FaceBookAppRequestActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/FaceBookAppRequestActivity$2;

    invoke-direct {v2, p0}, Lcom/FaceBookAppRequestActivity$2;-><init>(Lcom/FaceBookAppRequestActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity;->callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    const-string v0, "FaceBookRequest"

    :try_start_0
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/FaceBookAppRequestActivity;->requestWindowFeature(I)Z

    .line 46
    sget p1, Lcom/igg/android/conquerors/R$layout;->activity_empty:I

    invoke-virtual {p0, p1}, Lcom/FaceBookAppRequestActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/FaceBookAppRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 49
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v2, "fetchToken"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 53
    invoke-direct {p0}, Lcom/FaceBookAppRequestActivity;->loginFacebook()V

    .line 54
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/FaceBookAppRequestActivity;->fetchToken(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void

    .line 56
    :cond_1
    :goto_0
    const-string p1, "logInWithReadPermissions"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string p1, "public_profile"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void

    .line 63
    :cond_2
    const-string v0, "apprequests"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    new-instance v0, Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/FaceBookAppRequestActivity;->requestDialog:Lcom/facebook/gamingservices/GameRequestDialog;

    .line 65
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    const-string v1, "data"

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    const-string v1, "message"

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    const-string v1, "to"

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity;->requestDialog:Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/FaceBookAppRequestActivity;->finish()V

    return-void

    .line 73
    :cond_3
    const-string v0, "share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/FaceBookAppRequestActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 75
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/FaceBookAppRequestActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 76
    iget-object v1, p0, Lcom/FaceBookAppRequestActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/FaceBookAppRequestActivity$1;

    invoke-direct {v2, p0}, Lcom/FaceBookAppRequestActivity$1;-><init>(Lcom/FaceBookAppRequestActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 106
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string v1, "url"

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 109
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    iput-object p1, p0, Lcom/FaceBookAppRequestActivity;->linkContent:Lcom/facebook/share/model/ShareLinkContent;

    .line 110
    iget-object v0, p0, Lcom/FaceBookAppRequestActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 172
    sget-object v0, Lcom/FaceBookAppRequestActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->cancelProgressDialog()V

    .line 173
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 167
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 162
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method
