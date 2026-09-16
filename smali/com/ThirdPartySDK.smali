.class public Lcom/ThirdPartySDK;
.super Ljava/lang/Object;
.source "ThirdPartySDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;,
        Lcom/ThirdPartySDK$AppsFlyerSDK;,
        Lcom/ThirdPartySDK$InitSDKFinish;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThirdPartySDK"

.field private static mAppsFlyerSDK:Lcom/ThirdPartySDK$AppsFlyerSDK; = null

.field private static mEUCMP:Z = false

.field private static mFirebaseAnalyticsSDK:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK; = null

.field private static mGameInstance:Lcom/igg/android/conquerors/col; = null

.field private static mGrantedAppsFlyerConsent:Z = false

.field private static mGrantedFirebaseConsent:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppsFlyer()Lcom/ThirdPartySDK$AppsFlyerSDK;
    .locals 2

    .line 63
    sget-object v0, Lcom/ThirdPartySDK;->mAppsFlyerSDK:Lcom/ThirdPartySDK$AppsFlyerSDK;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ThirdPartySDK$AppsFlyerSDK;

    sget-object v1, Lcom/ThirdPartySDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-direct {v0, v1}, Lcom/ThirdPartySDK$AppsFlyerSDK;-><init>(Lcom/igg/android/conquerors/col;)V

    sput-object v0, Lcom/ThirdPartySDK;->mAppsFlyerSDK:Lcom/ThirdPartySDK$AppsFlyerSDK;

    .line 66
    :cond_0
    sget-object v0, Lcom/ThirdPartySDK;->mAppsFlyerSDK:Lcom/ThirdPartySDK$AppsFlyerSDK;

    return-object v0
.end method

.method public static getFirebaseAnalytics()Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;
    .locals 2

    .line 55
    sget-object v0, Lcom/ThirdPartySDK;->mFirebaseAnalyticsSDK:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    sget-object v1, Lcom/ThirdPartySDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-direct {v0, v1}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;-><init>(Lcom/igg/android/conquerors/col;)V

    sput-object v0, Lcom/ThirdPartySDK;->mFirebaseAnalyticsSDK:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    .line 58
    :cond_0
    sget-object v0, Lcom/ThirdPartySDK;->mFirebaseAnalyticsSDK:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    return-object v0
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/ThirdPartySDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method public static setAppsFlyerWithConsent(Z)V
    .locals 0

    .line 50
    sput-boolean p0, Lcom/ThirdPartySDK;->mGrantedAppsFlyerConsent:Z

    return-void
.end method

.method public static setEU(Z)V
    .locals 1

    .line 38
    sput-boolean p0, Lcom/ThirdPartySDK;->mEUCMP:Z

    .line 40
    sget-object v0, Lcom/ThirdPartySDK;->mGameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jniCallback;->setEUArea(I)V

    return-void
.end method

.method public static setFirebaseWithConsent(Z)V
    .locals 0

    .line 45
    sput-boolean p0, Lcom/ThirdPartySDK;->mGrantedFirebaseConsent:Z

    return-void
.end method

.method public static startAppsFlyerWithConsent(Z)V
    .locals 1

    .line 247
    invoke-static {}, Lcom/ThirdPartySDK;->getAppsFlyer()Lcom/ThirdPartySDK$AppsFlyerSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ThirdPartySDK$AppsFlyerSDK;->startWithGDPRUserWithConsent(Z)V

    return-void
.end method

.method public static startFirebaseWithConsent(Z)V
    .locals 1

    .line 238
    invoke-static {}, Lcom/ThirdPartySDK;->getFirebaseAnalytics()Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->setGrantConsent(Z)V

    return-void
.end method

.method public static startSDKWithConsent()V
    .locals 2

    .line 251
    sget-boolean v0, Lcom/ThirdPartySDK;->mEUCMP:Z

    const-string v1, "ThirdPartySDK"

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "startSDKWithConsent: EU"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-boolean v0, Lcom/ThirdPartySDK;->mGrantedFirebaseConsent:Z

    invoke-static {v0}, Lcom/ThirdPartySDK;->startFirebaseWithConsent(Z)V

    .line 254
    sget-boolean v0, Lcom/ThirdPartySDK;->mGrantedAppsFlyerConsent:Z

    invoke-static {v0}, Lcom/ThirdPartySDK;->startAppsFlyerWithConsent(Z)V

    return-void

    .line 256
    :cond_0
    const-string v0, "startSDKWithConsent: NoGDPR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lcom/ThirdPartySDK;->startSDKWithNoGDPR()V

    return-void
.end method

.method public static startSDKWithNoGDPR()V
    .locals 2

    .line 228
    invoke-static {}, Lcom/ThirdPartySDK;->getFirebaseAnalytics()Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->setGrantConsent(Z)V

    .line 229
    invoke-static {}, Lcom/ThirdPartySDK;->getAppsFlyer()Lcom/ThirdPartySDK$AppsFlyerSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ThirdPartySDK$AppsFlyerSDK;->startSDKWithNonGDPR()V

    return-void
.end method
