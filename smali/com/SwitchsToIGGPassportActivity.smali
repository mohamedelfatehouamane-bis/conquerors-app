.class public Lcom/SwitchsToIGGPassportActivity;
.super Lcom/BaseActivity;
.source "SwitchsToIGGPassportActivity.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "SwitchGPCPassport"

.field private static m_IggLoginContext:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputm_IggLoginContext(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;)V
    .locals 0

    sput-object p0, Lcom/SwitchsToIGGPassportActivity;->m_IggLoginContext:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method public static _agreeSwitchGPCPassport(I)V
    .locals 3

    .line 126
    sget-object v0, Lcom/SwitchsToIGGPassportActivity;->m_IggLoginContext:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 127
    const-string p0, "SwitchGPCPassport"

    const-string v0, "_agreeSwitchGPCPassport: GPCPassportLoginContext is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object p0, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p0

    const/4 v0, 0x4

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    return-void

    .line 154
    :cond_1
    new-instance p0, Lcom/SwitchsToIGGPassportActivity$4;

    invoke-direct {p0}, Lcom/SwitchsToIGGPassportActivity$4;-><init>()V

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->login(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;)V

    return-void

    .line 144
    :cond_2
    new-instance p0, Lcom/SwitchsToIGGPassportActivity$3;

    invoke-direct {p0}, Lcom/SwitchsToIGGPassportActivity$3;-><init>()V

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->login(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportLoginListener;)V

    return-void

    .line 136
    :cond_3
    new-instance p0, Lcom/SwitchsToIGGPassportActivity$2;

    invoke-direct {p0}, Lcom/SwitchsToIGGPassportActivity$2;-><init>()V

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;->createAndLogin(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext$GPCPassportCreateAndLoginListener;)V

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/Kungfu;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/SwitchsToIGGPassportActivity;->requestWindowFeature(I)Z

    .line 38
    sget p1, Lcom/igg/android/conquerors/R$layout;->activity_empty:I

    invoke-virtual {p0, p1}, Lcom/SwitchsToIGGPassportActivity;->setContentView(I)V

    .line 40
    sget-object p1, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, p0}, Lcom/igg/android/conquerors/col;->showProgressDialog(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/SwitchsToIGGPassportActivity;->switchGPCPassportLogin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 168
    sget-object v0, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->cancelProgressDialog()V

    .line 169
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onSwitchLoginByGPCPassportFailed(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    const/4 v0, 0x3

    .line 114
    invoke-static {p1, v0}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 115
    :cond_0
    const-string v1, "114103"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 116
    sget-object p1, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 117
    :cond_1
    const-string v1, "114104"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    sget-object p1, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 121
    :cond_2
    sget-object p1, Lcom/SwitchsToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void
.end method

.method public switchGPCPassportLogin()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->getPassportLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;

    move-result-object v0

    new-instance v1, Lcom/SwitchsToIGGPassportActivity$1;

    invoke-direct {v1, p0}, Lcom/SwitchsToIGGPassportActivity$1;-><init>(Lcom/SwitchsToIGGPassportActivity;)V

    .line 62
    invoke-virtual {v0, p0, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene;->checkCandidate(Landroid/app/Activity;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginScene$GPCPassportLoginCheckListener;)V

    return-void
.end method
