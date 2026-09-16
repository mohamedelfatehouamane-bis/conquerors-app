.class public Lcom/BindingToIGGPassportActivity;
.super Lcom/BaseActivity;
.source "BindingToIGGPassportActivity.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "BindingIGGPassport"

.field private static m_IggLoginContext:Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCPassportLoginContext;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/BindingToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/BindingToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method


# virtual methods
.method public bindToGPCPassport()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountBindScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->getPassportBindingScene()Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->setBehavior(Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;)Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;

    move-result-object v0

    new-instance v1, Lcom/BindingToIGGPassportActivity$1;

    invoke-direct {v1, p0}, Lcom/BindingToIGGPassportActivity$1;-><init>(Lcom/BindingToIGGPassportActivity;)V

    .line 61
    invoke-virtual {v0, p0, v1}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene;->bind(Landroid/app/Activity;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCPassportBindingScene$GPCPassportBindingListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/Kungfu;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    :try_start_0
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/BindingToIGGPassportActivity;->requestWindowFeature(I)Z

    .line 37
    sget p1, Lcom/igg/android/conquerors/R$layout;->activity_empty:I

    invoke-virtual {p0, p1}, Lcom/BindingToIGGPassportActivity;->setContentView(I)V

    .line 39
    sget-object p1, Lcom/BindingToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, p0}, Lcom/igg/android/conquerors/col;->showProgressDialog(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/BindingToIGGPassportActivity;->bindToGPCPassport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 95
    sget-object v0, Lcom/BindingToIGGPassportActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->cancelProgressDialog()V

    .line 96
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method
