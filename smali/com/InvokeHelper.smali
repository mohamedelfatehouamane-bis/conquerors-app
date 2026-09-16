.class public Lcom/InvokeHelper;
.super Ljava/lang/Object;
.source "InvokeHelper.java"


# static fields
.field public static GameInstance:Lcom/igg/android/conquerors/col; = null

.field private static final TAG:Ljava/lang/String; = "InvokeHelper-"

.field private static mAFEventKey:Ljava/lang/String;

.field private static mAFEventValue:Ljava/lang/String;

.field private static mPlayerId:Ljava/lang/String;

.field private static mPlayerName:Ljava/lang/String;

.field private static sDeviceID:Ljava/lang/String;

.field static s_Instance:Lcom/InvokeHelper;


# direct methods
.method public static synthetic $r8$lambda$6atuIlZ8HpZ8BMBeGuB3FGvsUJI(Lcom/InvokeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/InvokeHelper;->lambda$generateDeviceID$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmAFEventKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/InvokeHelper;->mAFEventKey:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmAFEventValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/InvokeHelper;->mAFEventValue:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsDeviceID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/InvokeHelper;->sDeviceID:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExitGame()V
    .locals 2

    .line 175
    const-string v0, "exit game"

    const-string v1, "exit, game"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->starColService()V

    .line 180
    :cond_0
    invoke-static {}, Lcom/igg/android/conquerors/col;->closeGameActive()V

    return-void
.end method

.method public static GotoAppStore()V
    .locals 2

    .line 331
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    new-instance v1, Lcom/InvokeHelper$10;

    invoke-direct {v1}, Lcom/InvokeHelper$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static IsChuanYinApk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsDinarApk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsHuaWeiApk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsNetworkConnected()Z
    .locals 1

    .line 263
    :try_start_0
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 265
    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsWifiConnected()Z
    .locals 3

    .line 273
    :try_start_0
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 276
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    const-string v1, "InvokeHelper-"

    if-eqz v0, :cond_0

    .line 279
    :try_start_1
    const-string v2, "IsWifiConnected: \u5f53\u524dWifi\u53ef\u7528"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 283
    :cond_0
    const-string v2, "IsWifiConnected: \u5f53\u524dWifi\u4e0d\u53ef\u7528"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static addAdTestDeviceID(Ljava/lang/String;)V
    .locals 2

    .line 543
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    new-instance v1, Lcom/InvokeHelper$20;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$20;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static agreeAgreement()V
    .locals 2

    .line 400
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    new-instance v1, Lcom/InvokeHelper$12;

    invoke-direct {v1}, Lcom/InvokeHelper$12;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static agreeAgreementV2()V
    .locals 2

    .line 433
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v1, Lcom/InvokeHelper$15;

    invoke-direct {v1}, Lcom/InvokeHelper$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static beginSoundRecord()V
    .locals 1

    .line 501
    invoke-static {}, Lcom/InvokeHelper;->sharedInstance()Lcom/InvokeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/InvokeHelper;->_beginSoundRecord()V

    return-void
.end method

.method public static c_RequestApkExpansionDownload()V
    .locals 2

    .line 195
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/InvokeHelper$6;

    invoke-direct {v1}, Lcom/InvokeHelper$6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c_sendOnceAFEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    sput-object p0, Lcom/InvokeHelper;->mAFEventKey:Ljava/lang/String;

    .line 230
    sput-object p1, Lcom/InvokeHelper;->mAFEventValue:Ljava/lang/String;

    .line 231
    sget-object p0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance p1, Lcom/InvokeHelper$9;

    invoke-direct {p1}, Lcom/InvokeHelper$9;-><init>()V

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkAdVideoStatus()V
    .locals 2

    .line 554
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    new-instance v1, Lcom/InvokeHelper$21;

    invoke-direct {v1}, Lcom/InvokeHelper$21;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkGamePlayState()V
    .locals 2

    .line 712
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 714
    :cond_0
    new-instance v1, Lcom/InvokeHelper$33;

    invoke-direct {v1}, Lcom/InvokeHelper$33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkUploadAvatar(Ljava/lang/String;)V
    .locals 2

    .line 646
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 648
    :cond_0
    new-instance v1, Lcom/InvokeHelper$27;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$27;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static delAccount()V
    .locals 2

    .line 689
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    new-instance v1, Lcom/InvokeHelper$31;

    invoke-direct {v1}, Lcom/InvokeHelper$31;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static downloadAvatar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 656
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    new-instance v1, Lcom/InvokeHelper$28;

    invoke-direct {v1, p0, p1}, Lcom/InvokeHelper$28;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static endSoundRecord()V
    .locals 1

    .line 510
    invoke-static {}, Lcom/InvokeHelper;->sharedInstance()Lcom/InvokeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/InvokeHelper;->_endSoundRecord()V

    return-void
.end method

.method private generateDeviceID()V
    .locals 1

    .line 99
    sget-object v0, Lcom/InvokeHelper;->sDeviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/InvokeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/InvokeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/InvokeHelper;)V

    invoke-static {v0}, Lcom/gpc/operations/utils/ExcutorUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .line 325
    const-string v0, "com.igg.android.conquerors"

    return-object v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .line 137
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 2

    .line 123
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 128
    :cond_0
    sget-object v0, Lcom/InvokeHelper;->sDeviceID:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static getInviteID()Ljava/lang/String;
    .locals 1

    .line 588
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    .line 590
    const-string v0, ""

    return-object v0

    .line 593
    :cond_0
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getInviteIggId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getObbPaths()Ljava/lang/String;
    .locals 1

    .line 191
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getObbPaths()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUDID()Ljava/lang/String;
    .locals 1

    .line 608
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->UDID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasGoogleAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasSoundRecordPermission()Z
    .locals 3

    .line 486
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public static initWeGamers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 305
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    sput-object p0, Lcom/InvokeHelper;->mPlayerId:Ljava/lang/String;

    .line 308
    sput-object p1, Lcom/InvokeHelper;->mPlayerName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$generateDeviceID$0()V
    .locals 3

    const/4 v0, 0x0

    .line 105
    :try_start_0
    sget-object v1, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/gpc/util/DeviceUtil;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    :cond_0
    :goto_0
    sget-object v1, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v2, Lcom/InvokeHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/InvokeHelper$4;-><init>(Lcom/InvokeHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadRewardedAd(Ljava/lang/String;)V
    .locals 2

    .line 577
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    new-instance v1, Lcom/InvokeHelper$23;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$23;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onInviteClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 157
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, p0, p1, p2}, Lcom/igg/android/conquerors/col;->inviteFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onMoreAppShareClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 161
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/InvokeHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/InvokeHelper$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onWeGamersCheckNessage()V
    .locals 0

    return-void
.end method

.method public static onWeGamersView()V
    .locals 0

    return-void
.end method

.method public static playAdVideo(Ljava/lang/String;)V
    .locals 2

    .line 521
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    new-instance v1, Lcom/InvokeHelper$18;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$18;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static presignedAgreementV2(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 422
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    new-instance v1, Lcom/InvokeHelper$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/InvokeHelper$14;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requestAgreement()V
    .locals 2

    .line 411
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance v1, Lcom/InvokeHelper$13;

    invoke-direct {v1}, Lcom/InvokeHelper$13;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requestAgreementConsentV2()V
    .locals 2

    .line 445
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    new-instance v1, Lcom/InvokeHelper$16;

    invoke-direct {v1}, Lcom/InvokeHelper$16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requestAndroidPermissions()Z
    .locals 1

    .line 296
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->requestAndroidPermissions()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static requestNotifyPermission()V
    .locals 2

    .line 667
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    new-instance v1, Lcom/InvokeHelper$29;

    invoke-direct {v1}, Lcom/InvokeHelper$29;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendAdEvent(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 204
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/InvokeHelper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/InvokeHelper$7;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendLoginDayEvent(I)V
    .locals 2

    .line 613
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance v1, Lcom/InvokeHelper$24;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$24;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendOnceAFEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 240
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v2, "AF_Event_file"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/igg/android/conquerors/col;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 241
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v2, v0, :cond_3

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 246
    :cond_1
    invoke-static {}, Lcom/InvokeHelper;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v0

    .line 249
    :cond_2
    const-string v0, "sendAFEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0, v0}, Lcom/AppEvent;->sendEvent(ILjava/lang/String;[Ljava/lang/String;)V

    .line 253
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static sendRewardAdEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 214
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/InvokeHelper$8;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/InvokeHelper$8;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAdmobUnitID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 532
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v1, Lcom/InvokeHelper$19;

    invoke-direct {v1, p0, p1}, Lcom/InvokeHelper$19;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native setDownloadProgress(JJ)V
.end method

.method public static native setDownloadState(II)V
.end method

.method public static setInviteID(Ljava/lang/String;)V
    .locals 1

    .line 599
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-virtual {v0, p0}, Lcom/igg/android/conquerors/col;->setInviteIggId(Ljava/lang/String;)V

    return-void
.end method

.method public static setNotifyPermissionResult(I)V
    .locals 2

    .line 678
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    new-instance v1, Lcom/InvokeHelper$30;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$30;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setSoundRecordFileName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setSoundRecordLength(I)V
    .locals 0

    return-void
.end method

.method public static sharedInstance()Lcom/InvokeHelper;
    .locals 1

    .line 55
    sget-object v0, Lcom/InvokeHelper;->s_Instance:Lcom/InvokeHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/InvokeHelper;

    invoke-direct {v0}, Lcom/InvokeHelper;-><init>()V

    sput-object v0, Lcom/InvokeHelper;->s_Instance:Lcom/InvokeHelper;

    .line 58
    :cond_0
    sget-object v0, Lcom/InvokeHelper;->s_Instance:Lcom/InvokeHelper;

    return-object v0
.end method

.method public static showAchievements()V
    .locals 2

    .line 734
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    new-instance v1, Lcom/InvokeHelper$35;

    invoke-direct {v1}, Lcom/InvokeHelper$35;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAdConsentDialog()V
    .locals 2

    .line 623
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v1, Lcom/InvokeHelper$25;

    invoke-direct {v1}, Lcom/InvokeHelper$25;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAgreement(I)V
    .locals 2

    .line 389
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v1, Lcom/InvokeHelper$11;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$11;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showExactAlarmPanel()V
    .locals 2

    .line 701
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    new-instance v1, Lcom/InvokeHelper$32;

    invoke-direct {v1}, Lcom/InvokeHelper$32;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showMediationTestSuite()V
    .locals 2

    .line 565
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    new-instance v1, Lcom/InvokeHelper$22;

    invoke-direct {v1}, Lcom/InvokeHelper$22;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .locals 2

    .line 723
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 725
    :cond_0
    new-instance v1, Lcom/InvokeHelper$34;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$34;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateAgreementConsentV2([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 456
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    new-instance v1, Lcom/InvokeHelper$17;

    invoke-direct {v1, p0, p1}, Lcom/InvokeHelper$17;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static uploadAvatar()V
    .locals 2

    .line 636
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    new-instance v1, Lcom/InvokeHelper$26;

    invoke-direct {v1}, Lcom/InvokeHelper$26;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public _beginSoundRecord()V
    .locals 0

    return-void
.end method

.method public _endSoundRecord()V
    .locals 0

    return-void
.end method

.method public init(Lcom/igg/android/conquerors/col;)V
    .locals 1

    .line 61
    sput-object p1, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    .line 64
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    new-instance v0, Lcom/InvokeHelper$1;

    invoke-direct {v0, p0}, Lcom/InvokeHelper$1;-><init>(Lcom/InvokeHelper;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/Kungfu;->prepareAppRating(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V

    .line 74
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    new-instance v0, Lcom/InvokeHelper$2;

    invoke-direct {v0, p0}, Lcom/InvokeHelper$2;-><init>(Lcom/InvokeHelper;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/Kungfu;->prepareAgreementSigning(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V

    .line 84
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object p1

    new-instance v0, Lcom/InvokeHelper$3;

    invoke-direct {v0, p0}, Lcom/InvokeHelper$3;-><init>(Lcom/InvokeHelper;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/Kungfu;->prepareTranslator(Lcom/gpc/sdk/kit/listener/GPCOnPreparedListener;)V

    .line 93
    invoke-direct {p0}, Lcom/InvokeHelper;->generateDeviceID()V

    return-void
.end method

.method public native onEndSoundRecord()V
.end method
