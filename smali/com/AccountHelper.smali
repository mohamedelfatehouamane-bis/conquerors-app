.class public Lcom/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field public static final C_FACEBOOK:I = 0x4

.field public static final C_GAME_CENTER:I = 0x5

.field public static final C_GOOGLE_PLAY:I = 0x2

.field public static final C_GPC:I = 0x3

.field public static final C_GUEST:I = 0x1

.field public static final C_LOGIN_NONE:I = 0x0

.field public static final C_MAIL:I = 0x8

.field public static final C_TWITTER:I = 0x7

.field public static final C_WeChat:I = 0x6

.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "AccountHelper-"

.field private static bAFStartTracking:Z = false

.field private static bExpiredSession:Z = false

.field private static m_profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile; = null

.field private static nConfigType:I = 0x0

.field private static nLastLoginType:I = 0x0

.field private static ssoTokenType:Ljava/lang/String; = ""


# direct methods
.method static bridge synthetic -$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;
    .locals 1

    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetbExpiredSession()Z
    .locals 1

    sget-boolean v0, Lcom/AccountHelper;->bExpiredSession:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetm_profile()Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;
    .locals 1

    sget-object v0, Lcom/AccountHelper;->m_profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetnLastLoginType()I
    .locals 1

    sget v0, Lcom/AccountHelper;->nLastLoginType:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetssoTokenType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/AccountHelper;->ssoTokenType:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputm_profile(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V
    .locals 0

    sput-object p0, Lcom/AccountHelper;->m_profile:Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputnLastLoginType(I)V
    .locals 0

    sput p0, Lcom/AccountHelper;->nLastLoginType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sm_onLoginGameSuccess()V
    .locals 0

    invoke-static {}, Lcom/AccountHelper;->_onLoginGameSuccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _agreeSwitchGuest(I)V
    .locals 2

    .line 485
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    .line 486
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->getGuestLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

    move-result-object v0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return-void

    .line 497
    :cond_0
    new-instance p0, Lcom/AccountHelper$11;

    invoke-direct {p0}, Lcom/AccountHelper$11;-><init>()V

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->login(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginListener;)V

    return-void

    .line 489
    :cond_1
    new-instance p0, Lcom/AccountHelper$10;

    invoke-direct {p0}, Lcom/AccountHelper$10;-><init>()V

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->createAndLogin(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestCreateAndLoginListener;)V

    return-void
.end method

.method public static _bindByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V
    .locals 2

    .line 396
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    const-string p0, "AccountHelper-"

    const-string v0, "_bindByThirdAccount:GPCSession.currentSession == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 401
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountBindScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;->getThirdPartyAccountBindingScene()Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;

    move-result-object v0

    .line 402
    new-instance v1, Lcom/AccountHelper$7;

    invoke-direct {v1, p0}, Lcom/AccountHelper$7;-><init>(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V

    invoke-virtual {v0, p0, v1}, Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene;->bind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/bindscene/GPCThirdPartyAccountBindingScene$GPCThirdPartyAccountBindListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static _callGameSwitchAccount(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;Ljava/lang/Boolean;)V
    .locals 8

    .line 343
    const-string v0, "_callGameSwitchAccount"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    .line 345
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 347
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object p0

    invoke-static {p0}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p0

    sput p0, Lcom/AccountHelper;->nLastLoginType:I

    .line 349
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p0, p2, :cond_1

    .line 350
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->getPermissionsController()Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object p0

    sget-object p2, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0, p2}, Lcom/gpc/sdk/permision/PermissionsController;->hasPostNotificationsPermission(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const/4 v6, 0x0

    .line 358
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "retLoginAccontSuccess2"

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isHasBind()Z

    move-result v3

    sget v4, Lcom/AccountHelper;->nLastLoginType:I

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->_getExactAlarmState()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/jniCallback;->retLoginAccontSuccess(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;II)V

    .line 361
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/AppEvent;->sendLoginGPCEvent()V

    return-void

    .line 364
    :cond_2
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p0

    sget p1, Lcom/AccountHelper;->nLastLoginType:I

    invoke-virtual {p0, v3, p1, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 374
    :cond_3
    const-string p1, "exception show"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget p1, Lcom/AccountHelper;->nLastLoginType:I

    invoke-static {p0, p1}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 377
    :cond_4
    sget-object p1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x7

    :cond_5
    sget p2, Lcom/AccountHelper;->nLastLoginType:I

    invoke-virtual {p1, v3, p2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 382
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method

.method public static _guestAccountLogin()V
    .locals 2

    .line 456
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    .line 457
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->getGuestLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/AccountHelper$9;

    invoke-direct {v1}, Lcom/AccountHelper$9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene;->checkCandidate(Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;)V

    return-void
.end method

.method private static _onLoginGameSuccess()V
    .locals 3

    .line 652
    :try_start_0
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v1, "weg_login_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/igg/android/conquerors/col;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 654
    const-string v1, "weg_login"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 655
    const-string v1, "weg_gid"

    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/Kungfu;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    const-string v1, "weg_public_key"

    sget-object v2, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v1, "weg_iggid"

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 658
    const-string v1, "weg_Accesskey"

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static _switchLoginByThirdAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V
    .locals 2

    .line 234
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    .line 235
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;->getThirdPartyAccountLoginScene()Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/AccountHelper$5;

    invoke-direct {v1, p1, p0}, Lcom/AccountHelper$5;-><init>(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;)V

    invoke-virtual {v0, p0, v1}, Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene;->checkCandidate(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCThirdPartyAccountLoginScene$GPCThirdPartyAccountLoginCheckListener;)V

    return-void
.end method

.method public static agreeSwitchAccont(IILjava/lang/String;)V
    .locals 1

    .line 282
    sget-object p2, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez p2, :cond_0

    return-void

    .line 285
    :cond_0
    new-instance v0, Lcom/AccountHelper$6;

    invoke-direct {v0, p1, p0}, Lcom/AccountHelper$6;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static autoLogin(Z)V
    .locals 2

    .line 163
    const-string v0, "GPC"

    const-string v1, "public static void autoLogin()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sput-boolean p0, Lcom/AccountHelper;->bExpiredSession:Z

    .line 165
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v0, Lcom/AccountHelper$4;

    invoke-direct {v0}, Lcom/AccountHelper$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bindFaceBook()V
    .locals 2

    .line 572
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$15;

    invoke-direct {v1}, Lcom/AccountHelper$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bindGoogleEmail()V
    .locals 2

    .line 519
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 522
    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->selectGoogleAccount(Z)V

    return-void
.end method

.method public static bindIGGPassport()V
    .locals 2

    .line 542
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$13;

    invoke-direct {v1}, Lcom/AccountHelper$13;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bindTwitter()V
    .locals 0

    return-void
.end method

.method public static changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I
    .locals 1

    .line 81
    sget-object v0, Lcom/AccountHelper$21;->$SwitchMap$com$gpc$sdk$GPCSDKConstant$GPCLoginType:[I

    invoke-virtual {p0}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static expiredSession()V
    .locals 2

    .line 150
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$3;

    invoke-direct {v1}, Lcom/AccountHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static facebookApprequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 598
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 599
    const-string v1, "type"

    const-string v2, "apprequests"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string p0, "to"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string p0, "data"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-class p1, Lcom/FaceBookAppRequestActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 604
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static facebookAppshare(Ljava/lang/String;)V
    .locals 3

    .line 612
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 613
    const-string v1, "type"

    const-string v2, "share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-class v1, Lcom/FaceBookAppRequestActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 616
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 618
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static fetchTokenByFaceBook()V
    .locals 3

    .line 587
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    const-string v1, "type"

    const-string v2, "fetchToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-class v2, Lcom/FaceBookAppRequestActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 590
    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v1, v0}, Lcom/igg/android/conquerors/col;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static getLastLoginType()I
    .locals 1

    .line 113
    sget v0, Lcom/AccountHelper;->nLastLoginType:I

    return v0
.end method

.method public static handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "915"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 335
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p0

    const/16 v0, 0x393

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 2

    .line 59
    sput-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    .line 60
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    new-instance v1, Lcom/AccountHelper$1;

    invoke-direct {v1}, Lcom/AccountHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/Kungfu;->prepareAccountManagementGuideline(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V

    .line 69
    invoke-static {p0}, Lcom/SwitchsToGmailLoginActivity;->init(Lcom/igg/android/conquerors/col;)V

    .line 70
    invoke-static {p0}, Lcom/SwitchsToDeviceLoginActivity;->init(Lcom/igg/android/conquerors/col;)V

    .line 71
    invoke-static {p0}, Lcom/SwitchsToFaceBookActivity;->init(Lcom/igg/android/conquerors/col;)V

    .line 72
    invoke-static {p0}, Lcom/FaceBookAppRequestActivity;->init(Lcom/igg/android/conquerors/col;)V

    .line 73
    invoke-static {p0}, Lcom/BindingToFaceBookActivity;->init(Lcom/igg/android/conquerors/col;)V

    .line 74
    invoke-static {p0}, Lcom/SwitchsToIGGPassportActivity;->init(Lcom/igg/android/conquerors/col;)V

    .line 75
    invoke-static {p0}, Lcom/BindingToIGGPassportActivity;->init(Lcom/igg/android/conquerors/col;)V

    return-void
.end method

.method public static loadUser()V
    .locals 2

    .line 693
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$17;

    invoke-direct {v1}, Lcom/AccountHelper$17;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loginByDeviceInfo()V
    .locals 2

    .line 436
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    new-instance v1, Lcom/AccountHelper$8;

    invoke-direct {v1}, Lcom/AccountHelper$8;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loginByFaceBook()V
    .locals 2

    .line 557
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$14;

    invoke-direct {v1}, Lcom/AccountHelper$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loginByIGGPassport()V
    .locals 2

    .line 527
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$12;

    invoke-direct {v1}, Lcom/AccountHelper$12;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loginByTwitter()V
    .locals 0

    return-void
.end method

.method public static logout()V
    .locals 0

    return-void
.end method

.method public static onLSVerifySuccess()V
    .locals 2

    .line 639
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$16;

    invoke-direct {v1}, Lcom/AccountHelper$16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static queryIPArea()V
    .locals 2

    .line 834
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$20;

    invoke-direct {v1}, Lcom/AccountHelper$20;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requestGameConfig(I)V
    .locals 1

    .line 124
    sput p0, Lcom/AccountHelper;->nConfigType:I

    .line 125
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v0, Lcom/AccountHelper$2;

    invoke-direct {v0}, Lcom/AccountHelper$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requestSSOToken(Ljava/lang/String;)V
    .locals 1

    .line 798
    sput-object p0, Lcom/AccountHelper;->ssoTokenType:Ljava/lang/String;

    .line 799
    sget-object p0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v0, Lcom/AccountHelper$18;

    invoke-direct {v0}, Lcom/AccountHelper$18;-><init>()V

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static retLoadUser(Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V
    .locals 12

    if-nez p0, :cond_0

    return-void

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iggUserProfile.getUserId():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountHelper-"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "iggUserProfile.getLoginType():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getLoginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getInstanceFromTypeName(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v0

    invoke-static {v0}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result v0

    .line 747
    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getBindingProfiles()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xa

    .line 749
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 752
    const-string v7, ""

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 756
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 757
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;

    .line 758
    invoke-virtual {v7}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->getType()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 760
    const-string v7, "userBindingProfile.getType() == null"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 763
    :cond_2
    invoke-virtual {v7}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getInstanceFromTypeName(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v8

    .line 764
    sget-object v9, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GUEST:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    if-ne v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_4

    .line 766
    invoke-virtual {v7}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 767
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/gpc/sdk/Kungfu;->UDID()Ljava/lang/String;

    move-result-object v10

    .line 768
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 771
    invoke-static {v8}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result v6

    const-string v7, "2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    goto :goto_2

    .line 775
    :cond_3
    invoke-virtual {v7}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 777
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get user bind type:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {v8}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result v8

    aput-object v7, v4, v8

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v6, :cond_7

    .line 783
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 784
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;

    .line 785
    invoke-virtual {v1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "guest"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 787
    invoke-virtual {v1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getInstanceFromTypeName(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v1

    .line 788
    invoke-static {v1}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result v1

    const-string v3, "1"

    aput-object v3, v4, v1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 792
    :cond_7
    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0, v4}, Lcom/jniCallback;->retAccountInfo(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static setGameConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 118
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV1()Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V1Agreement;->clearAgrSigning()V

    .line 119
    sget-object v1, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/igg/android/conquerors/col;->reinitializeGPCSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static setPlayerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 629
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, p0, p1}, Lcom/igg/android/conquerors/col;->setPlayerInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 820
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/AccountHelper$19;

    invoke-direct {v1, p0, p1}, Lcom/AccountHelper$19;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static switchGoogleGmail()V
    .locals 2

    .line 511
    sget-object v0, Lcom/AccountHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 514
    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->selectGoogleAccount(Z)V

    return-void
.end method

.method public static switchLanguage()V
    .locals 0

    return-void
.end method
