.class public Lcom/igg/android/conquerors/col;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "col.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igg/android/conquerors/col$GameDelegate;,
        Lcom/igg/android/conquerors/col$AppConfInitFinish;,
        Lcom/igg/android/conquerors/col$NoneAppConfInitFinish;,
        Lcom/igg/android/conquerors/col$XAPKFile;
    }
.end annotation


# static fields
.field private static final LAST_RECORDED_VERSION_KEY:Ljava/lang/String; = "last_recorded_app_version"

.field private static final LOG_TAG:Ljava/lang/String; = "log---"

.field private static final MY_PERMISSIONS_DOWNLOADXAPK_CONTACTS:I = 0x6e

.field private static final RC_UNUSED:I = 0xcb21

.field private static final REQ_SIGN_IN_REQUIRED_Bind:I = 0xd970

.field private static final REQ_SIGN_IN_REQUIRED_Login:I = 0xd96f

.field public static m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

.field private static m_jniCallback:Lcom/jniCallback;

.field public static m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

.field private static m_strDeviceInfo:Ljava/lang/String;

.field static s_Instance:Lcom/igg/android/conquerors/col;

.field static s_strContent:Ljava/lang/String;

.field private static s_strCurrentGMail:Ljava/lang/String;

.field static s_strTestLog:Ljava/lang/String;


# instance fields
.field private final AD_UNIT_TEST_ID:Ljava/lang/String;

.field private final REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS:I

.field private _nConfigID:I

.field private bGmailIsLogin:Z

.field private controller:Lcom/gpc/sdk/permision/PermissionsController;

.field private mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

.field private mGamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

.field private final mHandleAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mNetReceiver:Lcom/localService/NetReceiver;

.field private mRewardedAdItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igg/android/conquerors/RewardedAdItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_PermissionCustomUIOperationListener:Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;

.field private m_pConfigurationProvider:Lcom/gpc/sdk/GPCConfigurationProvider;

.field private m_strIggId:Ljava/lang/String;

.field private m_strInviteIggId:Ljava/lang/String;

.field private m_strServerId:Ljava/lang/String;

.field private mbPermissionsPass:Z

.field private mlRequestTime:J

.field productHelper:Lcom/ProductHelper;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sFirebaseAppInstance:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3fG57m0vIq5M2QQxGpmgHUfeGnc(Lcom/igg/android/conquerors/col;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->lambda$checkGamePlayState$2(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d84kLx5Y1wnP1zg_EFToN68xY6I(Lcom/igg/android/conquerors/col;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->lambda$initAf$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e3iI-ARo8qelmxWOoo2yZjT-gnw(Lcom/igg/android/conquerors/col;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->lambda$startPlayGamesSignIn$3(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g4fSBKCk2TU_0RC1ujW46AV6zPI(Lcom/igg/android/conquerors/col;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->lambda$initFireBase$1(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbGmailIsLogin(Lcom/igg/android/conquerors/col;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/igg/android/conquerors/col;->bGmailIsLogin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/col;->controller:Lcom/gpc/sdk/permision/PermissionsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandleAlarmReceiver(Lcom/igg/android/conquerors/col;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/col;->mHandleAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pConfigurationProvider(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/GPCConfigurationProvider;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/col;->m_pConfigurationProvider:Lcom/gpc/sdk/GPCConfigurationProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_strIggId(Lcom/igg/android/conquerors/col;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/col;->m_strIggId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_strServerId(Lcom/igg/android/conquerors/col;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/col;->m_strServerId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputm_PermissionCustomUIOperationListener(Lcom/igg/android/conquerors/col;Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/igg/android/conquerors/col;->m_PermissionCustomUIOperationListener:Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmlRequestTime(Lcom/igg/android/conquerors/col;J)V
    .locals 0

    iput-wide p1, p0, Lcom/igg/android/conquerors/col;->mlRequestTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$minitOperationsSDK(Lcom/igg/android/conquerors/col;)V
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->initOperationsSDK()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadConfig(Lcom/igg/android/conquerors/col;)V
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->loadConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestREADWRITEExternalPermission(Lcom/igg/android/conquerors/col;)Z
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->requestREADWRITEExternalPermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestREADWRITEExternalPermission_next(Lcom/igg/android/conquerors/col;)V
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->requestREADWRITEExternalPermission_next()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetm_jniCallback()Lcom/jniCallback;
    .locals 1

    sget-object v0, Lcom/igg/android/conquerors/col;->m_jniCallback:Lcom/jniCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 154
    new-instance v0, Lcom/jniCallback;

    invoke-direct {v0}, Lcom/jniCallback;-><init>()V

    sput-object v0, Lcom/igg/android/conquerors/col;->m_jniCallback:Lcom/jniCallback;

    const/4 v0, 0x0

    .line 156
    sput-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    .line 164
    const-string v1, ""

    sput-object v1, Lcom/igg/android/conquerors/col;->m_strDeviceInfo:Ljava/lang/String;

    .line 176
    const-string v1, "s:"

    sput-object v1, Lcom/igg/android/conquerors/col;->s_strTestLog:Ljava/lang/String;

    .line 186
    sput-object v0, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 187
    sput-object v0, Lcom/igg/android/conquerors/col;->m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    .line 592
    :try_start_0
    const-string v1, "game"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 594
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 595
    const-string v1, "cq_game"

    const-string v2, "can\'t open game!!!------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 596
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 669
    :goto_0
    sput-object v0, Lcom/igg/android/conquerors/col;->s_strCurrentGMail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 145
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/igg/android/conquerors/col;->mbPermissionsPass:Z

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lcom/igg/android/conquerors/col;->bGmailIsLogin:Z

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->productHelper:Lcom/ProductHelper;

    .line 161
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->progressDialog:Landroid/app/ProgressDialog;

    .line 169
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->sFirebaseAppInstance:Ljava/lang/String;

    .line 173
    const-string v2, "0"

    iput-object v2, p0, Lcom/igg/android/conquerors/col;->m_strIggId:Ljava/lang/String;

    .line 174
    const-string v3, "1"

    iput-object v3, p0, Lcom/igg/android/conquerors/col;->m_strServerId:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->m_pConfigurationProvider:Lcom/gpc/sdk/GPCConfigurationProvider;

    .line 183
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->m_PermissionCustomUIOperationListener:Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;

    .line 184
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->controller:Lcom/gpc/sdk/permision/PermissionsController;

    .line 195
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->mGamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    .line 196
    iput-object v1, p0, Lcom/igg/android/conquerors/col;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    const-wide/16 v3, 0x0

    .line 214
    iput-wide v3, p0, Lcom/igg/android/conquerors/col;->mlRequestTime:J

    .line 222
    iput-object v2, p0, Lcom/igg/android/conquerors/col;->m_strInviteIggId:Ljava/lang/String;

    .line 611
    new-instance v1, Lcom/igg/android/conquerors/col$4;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$4;-><init>(Lcom/igg/android/conquerors/col;)V

    iput-object v1, p0, Lcom/igg/android/conquerors/col;->mHandleAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    iput v0, p0, Lcom/igg/android/conquerors/col;->_nConfigID:I

    const/16 v0, 0xa

    .line 809
    iput v0, p0, Lcom/igg/android/conquerors/col;->REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS:I

    .line 1215
    const-string v0, "ca-app-pub-9883228183528023/5277436352"

    iput-object v0, p0, Lcom/igg/android/conquerors/col;->AD_UNIT_TEST_ID:Ljava/lang/String;

    .line 1217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igg/android/conquerors/col;->mRewardedAdItems:Ljava/util/Map;

    return-void
.end method

.method public static PrintLog(Ljava/lang/String;)V
    .locals 2

    .line 884
    const-string v0, "log---"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 886
    const-string v1, "Label"

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static PrintLog2(Ljava/lang/String;)V
    .locals 2

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igg/android/conquerors/col;->s_strTestLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/igg/android/conquerors/col;->s_strTestLog:Ljava/lang/String;

    .line 891
    const-string v0, "log---"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object p0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    new-instance v0, Lcom/igg/android/conquerors/col$8;

    invoke-direct {v0}, Lcom/igg/android/conquerors/col$8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static autoSendLog()V
    .locals 0

    return-void
.end method

.method public static closeGameActive()V
    .locals 2

    .line 477
    :try_start_0
    const-string v0, "log---"

    const-string v1, "closeGameActive()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 479
    new-instance v1, Lcom/igg/android/conquerors/col$3;

    invoke-direct {v1}, Lcom/igg/android/conquerors/col$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private createRewardedAdItem(Ljava/lang/String;)Lcom/igg/android/conquerors/RewardedAdItem;
    .locals 2

    if-eqz p1, :cond_0

    .line 1231
    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 1232
    :cond_0
    const-string p1, "ca-app-pub-9883228183528023/5277436352"

    .line 1234
    :cond_1
    new-instance v0, Lcom/igg/android/conquerors/RewardedAdItem;

    invoke-direct {v0}, Lcom/igg/android/conquerors/RewardedAdItem;-><init>()V

    .line 1235
    iput-object p1, v0, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1236
    iput-boolean v1, v0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    .line 1237
    iget-object v1, p0, Lcom/igg/android/conquerors/col;->mRewardedAdItems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private downColService()V
    .locals 0

    .line 608
    invoke-static {}, Lcom/localService/localPush;->pushClear()V

    return-void
.end method

.method public static getCurrentGMail()Ljava/lang/String;
    .locals 1

    .line 672
    sget-object v0, Lcom/igg/android/conquerors/col;->s_strCurrentGMail:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfo()[B
    .locals 2

    .line 660
    :try_start_0
    sget-object v0, Lcom/igg/android/conquerors/col;->m_strDeviceInfo:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 663
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getRewardedAdItem(Ljava/lang/String;)Lcom/igg/android/conquerors/RewardedAdItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 1220
    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 1221
    :cond_0
    const-string p1, "ca-app-pub-9883228183528023/5277436352"

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->mRewardedAdItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->mRewardedAdItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igg/android/conquerors/RewardedAdItem;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private initOperationsSDK()V
    .locals 2

    .line 286
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$2;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$2;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/gpc/operations/OperationsSDK;->init(Lcom/gpc/operations/OPSOnPreparedListener;)V

    return-void
.end method

.method private isHaveGPSApi()Z
    .locals 1

    .line 1503
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$checkGamePlayState$2(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1444
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1446
    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->onPlayGamesSignedIn()V

    return-void

    .line 1448
    :cond_0
    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->startPlayGamesSignIn()V

    return-void
.end method

.method private synthetic lambda$initAf$0(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/igg/android/conquerors/col;->m_strInviteIggId:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$initFireBase$1(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/igg/android/conquerors/col;->sFirebaseAppInstance:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$startPlayGamesSignIn$3(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1488
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1490
    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->onPlayGamesSignedIn()V

    return-void

    .line 1493
    :cond_0
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/jniCallback;->RetAchievementErr(I)V

    return-void

    .line 1496
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "err:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "startPlayGamesSignIn"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadConfig()V
    .locals 3

    .line 768
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    iget v1, p0, Lcom/igg/android/conquerors/col;->_nConfigID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "server_config_test_new"

    goto :goto_0

    :cond_0
    const-string v1, "server_config_new"

    :goto_0
    new-instance v2, Lcom/igg/android/conquerors/col$AppConfInitFinish;

    invoke-direct {v2, p0}, Lcom/igg/android/conquerors/col$AppConfInitFinish;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/Kungfu;->loadAppConf(Ljava/lang/String;Lcom/gpc/sdk/Kungfu$GPCAppConfListener;)V

    return-void
.end method

.method private onPlayGamesSignedIn()V
    .locals 2

    .line 1480
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/android/conquerors/col;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 1481
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jniCallback;->RetAchievementErr(I)V

    return-void
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 1430
    new-array v1, v1, [B

    .line 1432
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private requestREADWRITEExternalPermission()Z
    .locals 4

    .line 996
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-boolean v1, p0, Lcom/igg/android/conquerors/col;->mbPermissionsPass:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1002
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_1

    return v2

    .line 1005
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    .line 1007
    :try_start_0
    invoke-static {p0, v0}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/igg/android/conquerors/col;->mlRequestTime:J

    .line 1011
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    invoke-static {p0, v0, v2}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_2
    return v2

    :catchall_0
    return v1

    :cond_3
    return v2
.end method

.method private requestREADWRITEExternalPermission_next()V
    .locals 4

    const/4 v0, 0x1

    .line 1027
    iput-boolean v0, p0, Lcom/igg/android/conquerors/col;->mbPermissionsPass:Z

    .line 1029
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/igg/android/conquerors/col$12;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$12;-><init>(Lcom/igg/android/conquerors/col;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1038
    const-string v0, "log---"

    const-string v1, "new Handler() error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    sget-object v0, Lcom/igg/android/conquerors/col;->m_jniCallback:Lcom/jniCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jniCallback;->PermissionsRet(I)V

    return-void
.end method

.method public static setClipboard([B)V
    .locals 2

    .line 640
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Lcom/igg/android/conquerors/col;->s_strContent:Ljava/lang/String;

    .line 642
    sget-object p0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    new-instance v0, Lcom/igg/android/conquerors/col$5;

    invoke-direct {v0}, Lcom/igg/android/conquerors/col$5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDeviceInfo()V
    .locals 2

    .line 471
    invoke-static {}, Lcom/CommonUtility;->getCollectDeviceInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igg/android/conquerors/col;->m_strDeviceInfo:Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDeviceInfo():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/igg/android/conquerors/col;->m_strDeviceInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log---"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showPermissionDialog()Z
    .locals 5

    .line 948
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    .line 949
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 950
    invoke-static {p0, v3}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 954
    invoke-static {p0, v0}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_5

    .line 958
    invoke-static {p0, v3}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v4

    :cond_6
    return v2
.end method

.method private startPlayGamesSignIn()V
    .locals 2

    .line 1486
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->mGamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    if-nez v0, :cond_0

    return-void

    .line 1487
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda6;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public GetFirebaseAppInstance()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->sFirebaseAppInstance:Ljava/lang/String;

    return-object v0
.end method

.method public RequestApkExpansionDownload()V
    .locals 0

    return-void
.end method

.method public ShowMessageBox(IIILcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)V
    .locals 2

    .line 1137
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/igg/android/conquerors/R$drawable;->icon:I

    .line 1138
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Lcom/igg/android/conquerors/R$string;->Note:I

    .line 1139
    invoke-virtual {p0, v1}, Lcom/igg/android/conquerors/col;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/high16 v1, -0x1000000

    .line 1140
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1141
    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 1142
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 1143
    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 1144
    invoke-virtual {p0, p2}, Lcom/igg/android/conquerors/col;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1145
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->canceledOnTouchOutside(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 1146
    invoke-virtual {p1, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onAny(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 1149
    const-string p2, "log---"

    const-string p4, "negative"

    invoke-static {p2, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {p0, p3}, Lcom/igg/android/conquerors/col;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1152
    :cond_0
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public _getExactAlarmState()I
    .locals 3

    .line 1414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 1415
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1416
    invoke-static {v0}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1424
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_getExactAlarmState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log---"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public _requestNotifyPermission()V
    .locals 3

    .line 1293
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->controller:Lcom/gpc/sdk/permision/PermissionsController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v0, p0}, Lcom/gpc/sdk/permision/PermissionsController;->hasPostNotificationsPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->controller:Lcom/gpc/sdk/permision/PermissionsController;

    new-instance v1, Lcom/igg/android/conquerors/col$17;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$17;-><init>(Lcom/igg/android/conquerors/col;)V

    new-instance v2, Lcom/igg/android/conquerors/col$18;

    invoke-direct {v2, p0}, Lcom/igg/android/conquerors/col$18;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/gpc/sdk/permision/PermissionsController;->requestPostNotificationsPermission(Landroid/app/Activity;Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultListener;Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;)V

    return-void
.end method

.method public _setNotifyPermissionResult(I)V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->m_PermissionCustomUIOperationListener:Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1388
    invoke-interface {v0}, Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;->onNegativeClick()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 1391
    invoke-interface {v0}, Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;->onPositiveClick()V

    :cond_1
    return-void
.end method

.method public _showExactAlarmPanel()V
    .locals 4

    .line 1399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 1401
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1402
    sget-object v1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    iget-object v2, p0, Lcom/igg/android/conquerors/col;->mHandleAlarmReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Lcom/igg/android/conquerors/col;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1403
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public addAdTestDeviceID(Ljava/lang/String;)V
    .locals 1

    .line 1280
    invoke-static {}, Lcom/igg/android/conquerors/RewardAdManager;->getInstance()Lcom/igg/android/conquerors/RewardAdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igg/android/conquerors/RewardAdManager;->InitRequestConfiguration(Ljava/lang/String;)V

    return-void
.end method

.method public cancelProgressDialog()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/igg/android/conquerors/col;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public checkGamePlayState()V
    .locals 2

    .line 1438
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->mGamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    if-nez v0, :cond_0

    .line 1440
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jniCallback;->RetAchievementErr(I)V

    return-void

    .line 1443
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda8;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public createKey(Landroid/app/Activity;)V
    .locals 7

    .line 383
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 384
    invoke-static {}, Lcom/InvokeHelper;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 383
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 385
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 386
    const-string v4, "SHA"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 387
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 389
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 390
    const-string v4, "might"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hash key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 460
    const-string v0, "log---"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->finish()V

    .line 462
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->starColService()V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->unregisterNetStateListener()V

    return-void
.end method

.method public getInviteIggId()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->m_strInviteIggId:Ljava/lang/String;

    return-object v0
.end method

.method public getJniCall()Lcom/jniCallback;
    .locals 1

    .line 190
    sget-object v0, Lcom/igg/android/conquerors/col;->m_jniCallback:Lcom/jniCallback;

    return-object v0
.end method

.method public getObbPaths()Ljava/lang/String;
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base"

    const-string v2, "split_Assets_mutidex"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1157
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAf()V
    .locals 2

    .line 256
    invoke-static {}, Lcom/ThirdPartySDK;->getAppsFlyer()Lcom/ThirdPartySDK$AppsFlyerSDK;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda5;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/ThirdPartySDK$AppsFlyerSDK;->Init(Lcom/ThirdPartySDK$InitSDKFinish;)V

    return-void
.end method

.method protected initFacebook()V
    .locals 2

    const/4 v0, 0x1

    .line 267
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setIsDebugEnabled(Z)V

    .line 268
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 270
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    .line 271
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 272
    new-instance v0, Lcom/igg/android/conquerors/col$1;

    invoke-direct {v0, p0}, Lcom/igg/android/conquerors/col$1;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-static {p0, v0}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method protected initFireBase()V
    .locals 2

    .line 262
    invoke-static {}, Lcom/ThirdPartySDK;->getFirebaseAnalytics()Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$$ExternalSyntheticLambda7;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->Init(Lcom/ThirdPartySDK$InitSDKFinish;)V

    return-void
.end method

.method public inviteFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 901
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v5, Lcom/igg/android/conquerors/col$9;

    invoke-direct {v5, p0}, Lcom/igg/android/conquerors/col$9;-><init>(Lcom/igg/android/conquerors/col;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/igg/sdk/invite/InviteManager;->invite(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public isMarketInstall()Z
    .locals 3

    .line 1200
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1201
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 1202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 1205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1206
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1210
    :cond_0
    const-string v0, "com.android.vending"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isloadedRewardedVideo()V
    .locals 0

    return-void
.end method

.method public loadRewardedAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1242
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    :cond_0
    const-string p1, "ca-app-pub-9883228183528023/5277436352"

    .line 1246
    :cond_1
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->getRewardedAdItem(Ljava/lang/String;)Lcom/igg/android/conquerors/RewardedAdItem;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1248
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->createRewardedAdItem(Ljava/lang/String;)Lcom/igg/android/conquerors/RewardedAdItem;

    move-result-object v0

    .line 1250
    :cond_2
    invoke-virtual {v0, p2}, Lcom/igg/android/conquerors/RewardedAdItem;->setPlacementID(Ljava/lang/String;)V

    .line 1251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "loadRewardedAd unit id:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileAds"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v0, p0}, Lcom/igg/android/conquerors/RewardedAdItem;->loadAd(Lcom/igg/android/conquerors/col;)V

    return-void
.end method

.method public moreAppShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 921
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v5, Lcom/igg/android/conquerors/col$10;

    invoke-direct {v5, p0}, Lcom/igg/android/conquerors/col$10;-><init>(Lcom/igg/android/conquerors/col;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/igg/sdk/invite/InviteManager;->moreAppShare(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string v0, "BindGoogleEmails error"

    const-string v1, "switchGoogleEmails error"

    .line 411
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    iget-object v2, p0, Lcom/igg/android/conquerors/col;->productHelper:Lcom/ProductHelper;

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2, p1, p2, p3}, Lcom/ProductHelper;->onActivityResult(IILandroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const p3, 0xd96f    # 7.8E-41f

    .line 417
    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x5

    const-string v5, "log---"

    const/4 v6, -0x1

    if-ne p1, p3, :cond_1

    if-eq p2, v6, :cond_2

    .line 419
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    :cond_1
    const p3, 0xd970

    if-ne p1, p3, :cond_2

    if-eq p2, v6, :cond_2

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 431
    const-string p2, "onActivityResult"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 302
    const-string v0, "log---"

    const-string v1, "--->onCreate begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getObbPaths()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->FATE_OBB_PATH:Ljava/lang/String;

    .line 305
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 310
    sput-object p0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-static {p0, v0}, Lcom/igg/bot/IntegratedBotManager;->init(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/igg/android/conquerors/col;->mbPermissionsPass:Z

    .line 313
    invoke-static {}, Lcom/InvokeHelper;->sharedInstance()Lcom/InvokeHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/InvokeHelper;->init(Lcom/igg/android/conquerors/col;)V

    .line 314
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/AppEvent;->init(Lcom/igg/android/conquerors/col;)V

    .line 315
    invoke-static {p0}, Lcom/url;->init(Landroid/app/Activity;)V

    .line 316
    invoke-static {p0}, Lcom/CommonUtility;->init(Lcom/igg/android/conquerors/col;)V

    .line 317
    invoke-static {p0}, Lcom/AccountHelper;->init(Lcom/igg/android/conquerors/col;)V

    .line 318
    invoke-static {p0}, Lcom/MailAccount;->init(Lcom/igg/android/conquerors/col;)V

    .line 319
    invoke-static {p0}, Lcom/ThirdPartySDK;->init(Lcom/igg/android/conquerors/col;)V

    invoke-static {p0}, Lcom/savedplots/PlotOverlayManager;->init(Landroid/app/Activity;)V

    .line 320
    invoke-static {p0}, Lcom/igg/android/conquerors/GPCAgreementHelper;->init(Lcom/igg/android/conquerors/col;)V

    .line 321
    invoke-static {p0}, Lcom/ProductHelper;->init(Lcom/igg/android/conquerors/col;)Lcom/ProductHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/android/conquerors/col;->productHelper:Lcom/ProductHelper;

    .line 323
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 329
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->initAf()V

    .line 330
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->initFireBase()V

    .line 331
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->initFacebook()V

    .line 333
    invoke-static {}, Lcom/igg/android/conquerors/RewardAdManager;->getInstance()Lcom/igg/android/conquerors/RewardAdManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/igg/android/conquerors/RewardAdManager;->Init(Lcom/igg/android/conquerors/col;)V

    .line 335
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-static {p1}, Lcom/localService/localPush;->init(Lcom/igg/android/conquerors/col;)V

    .line 340
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 345
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/Kungfu;->getPermissionsController()Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/android/conquerors/col;->controller:Lcom/gpc/sdk/permision/PermissionsController;

    .line 346
    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->isHaveGPSApi()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    .line 348
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/android/conquerors/col;->mGamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 448
    const-string v0, "log---"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->starColService()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->productHelper:Lcom/ProductHelper;

    invoke-virtual {v0}, Lcom/ProductHelper;->onDestroy()V

    .line 454
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->unregisterNetStateListener()V

    .line 455
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 502
    const-string p2, "audio"

    invoke-virtual {p0, p2}, Lcom/igg/android/conquerors/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 503
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    .line 512
    invoke-virtual {p2, v0, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_1
    add-int/2addr v1, v3

    .line 507
    invoke-virtual {p2, v0, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    return v3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 526
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 528
    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col;->setIntent(Landroid/content/Intent;)V

    .line 532
    :try_start_0
    invoke-static {p0, p1}, Lcom/gpc/sdk/push/GPCMessageMarker;->onMessageUpdateState(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 534
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 537
    :goto_0
    const-string p1, "log---"

    const-string v0, "onNewIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 569
    const-string v0, "protected void onPause()"

    const-string v1, "log---"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 572
    const-string v0, "try to starColService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->starColService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 582
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->unregisterNetStateListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1045
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->controller:Lcom/gpc/sdk/permision/PermissionsController;

    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gpc/sdk/permision/PermissionsController;->onRequestPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void

    .line 1050
    :cond_1
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_2

    aget p1, p3, p2

    if-nez p1, :cond_2

    .line 1052
    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->requestREADWRITEExternalPermission_next()V

    return-void

    .line 1058
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1059
    iget-wide v2, p0, Lcom/igg/android/conquerors/col;->mlRequestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 1062
    sget p1, Lcom/igg/android/conquerors/R$string;->permission_downloadxapk2:I

    sget p3, Lcom/igg/android/conquerors/R$string;->Exit:I

    new-instance v0, Lcom/igg/android/conquerors/col$13;

    invoke-direct {v0, p0}, Lcom/igg/android/conquerors/col$13;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/igg/android/conquerors/col;->ShowMessageBox(IIILcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)V

    return-void

    .line 1073
    :cond_3
    sget p1, Lcom/igg/android/conquerors/R$string;->permission_downloadxapk1:I

    sget p2, Lcom/igg/android/conquerors/R$string;->OK:I

    sget p3, Lcom/igg/android/conquerors/R$string;->Exit:I

    new-instance v0, Lcom/igg/android/conquerors/col$14;

    invoke-direct {v0, p0}, Lcom/igg/android/conquerors/col$14;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igg/android/conquerors/col;->ShowMessageBox(IIILcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 542
    const-string v0, "protected void onResume()"

    const-string v1, "log---"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 545
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 548
    :try_start_0
    invoke-static {p0, v0}, Lcom/gpc/sdk/push/GPCMessageMarker;->onMessageUpdateState(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->runInstallReport(Landroid/view/View;)V

    .line 555
    :try_start_1
    const-string v0, "try to stopColService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/igg/android/conquerors/col;->downColService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 561
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->registerNetStateListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 438
    const-string v0, "onSaveInstanceState"

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 441
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 400
    :try_start_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected registerNetStateListener()V
    .locals 0

    return-void
.end method

.method public registerPush()V
    .locals 0

    return-void
.end method

.method public reinitializeGPCSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gameID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " secretKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " strUnregister:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Iggidc:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ConfigTest:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "reinitializeGPCSDK"

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance p2, Lcom/igg/android/conquerors/col$GameDelegate;

    invoke-direct {p2, p0}, Lcom/igg/android/conquerors/col$GameDelegate;-><init>(Lcom/igg/android/conquerors/col;)V

    .line 697
    new-instance v0, Lcom/gpc/sdk/GPCConfigurationProvider;

    .line 698
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/gpc/sdk/GPCConfigurationProvider;-><init>(Landroid/app/Application;Landroid/app/Activity;Ljava/lang/String;Lcom/gpc/sdk/GPCGameDelegate;)V

    .line 700
    iput-object v0, p0, Lcom/igg/android/conquerors/col;->m_pConfigurationProvider:Lcom/gpc/sdk/GPCConfigurationProvider;

    const/4 p2, 0x0

    .line 703
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/GPCConfigurationProvider;->setChinaMainland(Z)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getCocos2dxWritablePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unregister File is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {v1}, Lcom/CommonUtility;->readFileToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 709
    const-string v2, "CDN unregister File read FAILD!!!"

    invoke-static {p4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 711
    :try_start_0
    invoke-virtual {v2, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :try_start_1
    invoke-static {p3}, Lcom/igg/android/conquerors/col;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 713
    const-string v2, "Read local File sucess!!!"

    invoke-static {p4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 714
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz p3, :cond_0

    .line 711
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p3

    .line 715
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 718
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/GPCConfigurationProvider;->setHTTPCryptoEnable(Z)V

    .line 719
    const-string p2, "Local unregister File read FAILD!!!"

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    .line 723
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/GPCConfigurationProvider;->setHTTPCryptoEnable(Z)V

    .line 724
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationProvider;->isHTTPCryptoEnable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 725
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/gpc/sdk/Kungfu;->setCryptoConfig([B)V

    .line 726
    const-string p2, "Unregister File load sucess."

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_3
    invoke-static {p0, p1}, Lcom/Tool;->setLocalTextType(Landroid/app/Activity;Ljava/lang/String;)V

    .line 731
    invoke-static {p1}, Lcom/Tool;->setOperationsSDKLangue(Ljava/lang/String;)V

    .line 734
    invoke-static {p1}, Lcom/gpc/sdk/GPCSDK;->reset(Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/Kungfu;->setConfigurationProvider(Lcom/gpc/sdk/GPCConfigurationProvider;)V

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "nConfigTest: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "log---"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iput p5, p0, Lcom/igg/android/conquerors/col;->_nConfigID:I

    .line 744
    :try_start_5
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    new-instance p3, Lcom/igg/android/conquerors/col$7;

    invoke-direct {p3, p0}, Lcom/igg/android/conquerors/col$7;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/Kungfu;->initialize(Lcom/gpc/sdk/Kungfu$GPCInitializationListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 763
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public requestAndroidPermissions()Z
    .locals 3

    .line 969
    iget-boolean v0, p0, Lcom/igg/android/conquerors/col;->mbPermissionsPass:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 974
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 976
    sget-object v0, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/igg/android/conquerors/col$11;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$11;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    .line 989
    :cond_1
    iput-boolean v1, p0, Lcom/igg/android/conquerors/col;->mbPermissionsPass:Z

    return v1
.end method

.method public runInstallReport(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public selectGoogleAccount(Z)V
    .locals 0

    .line 1108
    iput-boolean p1, p0, Lcom/igg/android/conquerors/col;->bGmailIsLogin:Z

    .line 1109
    new-instance p1, Lcom/igg/android/conquerors/col$15;

    invoke-direct {p1, p0}, Lcom/igg/android/conquerors/col$15;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAdmobUnitID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1257
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    :cond_0
    const-string p1, "ca-app-pub-9883228183528023/5277436352"

    .line 1261
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAdmobUnitID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileAds"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/igg/android/conquerors/col;->loadRewardedAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInviteIggId(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/igg/android/conquerors/col;->m_strInviteIggId:Ljava/lang/String;

    return-void
.end method

.method public setPlayerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/igg/android/conquerors/col;->m_strIggId:Ljava/lang/String;

    .line 677
    iput-object p2, p0, Lcom/igg/android/conquerors/col;->m_strServerId:Ljava/lang/String;

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GPCID:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/igg/android/conquerors/col;->m_strIggId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ServerID:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/igg/android/conquerors/col;->m_strServerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setPlayerInfo"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    new-instance p2, Lcom/igg/android/conquerors/col$6;

    invoke-direct {p2, p0}, Lcom/igg/android/conquerors/col$6;-><init>(Lcom/igg/android/conquerors/col;)V

    invoke-virtual {p1, p2}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAchievements()V
    .locals 2

    .line 1455
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$20;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$20;-><init>(Lcom/igg/android/conquerors/col;)V

    .line 1457
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$19;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$19;-><init>(Lcom/igg/android/conquerors/col;)V

    .line 1463
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public showMediationTestSuite()V
    .locals 0

    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    sget v0, Lcom/igg/android/conquerors/R$string;->submitting_settings:I

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/col;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/igg/android/conquerors/col;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .line 1266
    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/col;->getRewardedAdItem(Ljava/lang/String;)Lcom/igg/android/conquerors/RewardedAdItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1270
    :cond_0
    iget-object v1, v0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v1, :cond_1

    .line 1271
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/igg/android/conquerors/col;->loadRewardedAd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string p1, "MobileAds"

    const-string v0, "The rewarded ad wasn\'t ready yet."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1275
    :cond_1
    invoke-virtual {v0, p0}, Lcom/igg/android/conquerors/RewardedAdItem;->showAd(Lcom/igg/android/conquerors/col;)V

    return-void
.end method

.method public signIn()V
    .locals 7

    .line 1161
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;

    const-string v1, "866112955744-lcm6vd4o53ao395huairjp9mtehfdkvb.apps.googleusercontent.com"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;->build()Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption;

    move-result-object v0

    .line 1162
    new-instance v1, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v1}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v3

    .line 1163
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 1164
    invoke-static {p0}, Landroidx/credentials/CredentialManager$-CC;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object v1

    .line 1165
    invoke-static {}, Lcom/gpc/operations/utils/ExcutorUtils;->instanceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/igg/android/conquerors/col$16;

    invoke-direct {v6, p0}, Lcom/igg/android/conquerors/col$16;-><init>(Lcom/igg/android/conquerors/col;)V

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Landroidx/credentials/CredentialManager;->getCredentialAsync(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public starColService()V
    .locals 2

    .line 602
    const-string v0, "log---"

    const-string v1, "starColService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {}, Lcom/localService/localPush;->pushBeg()V

    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/igg/android/conquerors/col;->mAchievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-nez v0, :cond_0

    return-void

    .line 1475
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    return-void
.end method

.method protected unregisterNetStateListener()V
    .locals 0

    return-void
.end method

.method public unregisterPush()V
    .locals 0

    return-void
.end method
