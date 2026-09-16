.class public Lcom/SwitchsToGmailLoginActivity;
.super Lcom/BaseActivity;
.source "SwitchsToGmailLoginActivity.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "SwitchGoogle"


# instance fields
.field private b_isSwitch:Z


# direct methods
.method static bridge synthetic -$$Nest$mswitchLoginByGoogleAccount(Lcom/SwitchsToGmailLoginActivity;Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/SwitchsToGmailLoginActivity;->switchLoginByGoogleAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/SwitchsToGmailLoginActivity;->b_isSwitch:Z

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/SwitchsToGmailLoginActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method private switchLoginByGoogleAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;)V
    .locals 2

    .line 83
    new-instance v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile;-><init>()V

    .line 84
    const-string v1, "googleplus"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile;->setPlatform(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile;->setToken(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile;->setTokenType(Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;)V

    .line 88
    iget-boolean p1, p0, Lcom/SwitchsToGmailLoginActivity;->b_isSwitch:Z

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v0, p1}, Lcom/AccountHelper;->_switchLoginByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V

    return-void

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/AccountHelper;->_bindByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 38
    :try_start_0
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/SwitchsToGmailLoginActivity;->requestWindowFeature(I)Z

    .line 41
    sget v0, Lcom/igg/android/conquerors/R$layout;->activity_empty:I

    invoke-virtual {p0, v0}, Lcom/SwitchsToGmailLoginActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/SwitchsToGmailLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isSwitch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/SwitchsToGmailLoginActivity;->b_isSwitch:Z

    .line 43
    sget-object p1, Lcom/SwitchsToGmailLoginActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, p0}, Lcom/igg/android/conquerors/col;->showProgressDialog(Landroid/content/Context;)V

    .line 49
    new-instance p1, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;

    const-string v0, "866112955744-lcm6vd4o53ao395huairjp9mtehfdkvb.apps.googleusercontent.com"

    invoke-direct {p1, v0}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;->build()Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption;

    move-result-object p1

    .line 50
    new-instance v0, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v0}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v2

    .line 51
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    .line 52
    invoke-static {p0}, Landroidx/credentials/CredentialManager$-CC;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/gpc/operations/utils/ExcutorUtils;->instanceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/SwitchsToGmailLoginActivity$1;

    invoke-direct {v5, p0}, Lcom/SwitchsToGmailLoginActivity$1;-><init>(Lcom/SwitchsToGmailLoginActivity;)V

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroidx/credentials/CredentialManager;->getCredentialAsync(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 98
    sget-object v0, Lcom/SwitchsToGmailLoginActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->cancelProgressDialog()V

    .line 99
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method
