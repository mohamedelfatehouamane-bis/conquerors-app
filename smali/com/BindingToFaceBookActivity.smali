.class public Lcom/BindingToFaceBookActivity;
.super Landroid/app/Activity;
.source "BindingToFaceBookActivity.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "BindingFaceBook"


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/BindingToFaceBookActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/BindingToFaceBookActivity;->callbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method private bindToFaceBook()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/BindingToFaceBookActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 46
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/BindingToFaceBookActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/BindingToFaceBookActivity$1;

    invoke-direct {v2, p0}, Lcom/BindingToFaceBookActivity$1;-><init>(Lcom/BindingToFaceBookActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/BindingToFaceBookActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/BindingToFaceBookActivity;->callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/BindingToFaceBookActivity;->requestWindowFeature(I)Z

    .line 37
    sget p1, Lcom/igg/android/conquerors/R$layout;->activity_empty:I

    invoke-virtual {p0, p1}, Lcom/BindingToFaceBookActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/BindingToFaceBookActivity;->bindToFaceBook()V

    .line 41
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    const-string v0, "public_profile"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 100
    sget-object v0, Lcom/BindingToFaceBookActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->cancelProgressDialog()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
