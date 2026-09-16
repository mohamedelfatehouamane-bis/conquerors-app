.class public Lcom/igg/android/conquerors/RewardAdManager;
.super Ljava/lang/Object;
.source "RewardAdManager.java"


# static fields
.field private static sInstance:Lcom/igg/android/conquerors/RewardAdManager;


# instance fields
.field public final ADMOB_DEVICE_TEST_ID:Ljava/lang/String;

.field public final CONSENT_DEVICE_TEST_HASH_ID:Ljava/lang/String;

.field public final FACEBOOK_DEVICE_TEST_ID:Ljava/lang/String;

.field public final LOG_TAG:Ljava/lang/String;

.field public final TEST:Z

.field public TagForUnderAgeOfConsent:I

.field private colContext:Lcom/igg/android/conquerors/col;

.field private consentInformation:Lcom/google/android/ump/ConsentInformation;

.field private final isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$EUxr5kH_6KEsO40_OsO8tN9t-E4(Lcom/igg/android/conquerors/RewardAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/RewardAdManager;->lambda$InitConsentRequest$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q-vC65anS7TZKQNIs7G5SNpcyog(Lcom/igg/android/conquerors/RewardAdManager;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/RewardAdManager;->lambda$showPrivacyOptionsForm$3(Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m2z4ZwN6Wxx0GcUb9ktGYHGgS6o(Lcom/igg/android/conquerors/RewardAdManager;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igg/android/conquerors/RewardAdManager;->lambda$InitConsentRequest$1(Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sW7RvDcdLvao-w26_U_GBfHD1RQ(Lcom/igg/android/conquerors/RewardAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/igg/android/conquerors/RewardAdManager;->lambda$InitAdMob$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcolContext(Lcom/igg/android/conquerors/RewardAdManager;)Lcom/igg/android/conquerors/col;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconsentInformation(Lcom/igg/android/conquerors/RewardAdManager;)Lcom/google/android/ump/ConsentInformation;
    .locals 0

    iget-object p0, p0, Lcom/igg/android/conquerors/RewardAdManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "RewardAdManager"

    iput-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->LOG_TAG:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->CONSENT_DEVICE_TEST_HASH_ID:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->ADMOB_DEVICE_TEST_ID:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->FACEBOOK_DEVICE_TEST_ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->TEST:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/igg/android/conquerors/RewardAdManager;->TagForUnderAgeOfConsent:I

    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/igg/android/conquerors/RewardAdManager;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method public static getInstance()Lcom/igg/android/conquerors/RewardAdManager;
    .locals 1

    .line 52
    sget-object v0, Lcom/igg/android/conquerors/RewardAdManager;->sInstance:Lcom/igg/android/conquerors/RewardAdManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/igg/android/conquerors/RewardAdManager;

    invoke-direct {v0}, Lcom/igg/android/conquerors/RewardAdManager;-><init>()V

    sput-object v0, Lcom/igg/android/conquerors/RewardAdManager;->sInstance:Lcom/igg/android/conquerors/RewardAdManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/igg/android/conquerors/RewardAdManager;->sInstance:Lcom/igg/android/conquerors/RewardAdManager;

    return-object v0
.end method

.method private synthetic lambda$InitAdMob$2()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/igg/android/conquerors/RewardAdManager$2;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/RewardAdManager$2;-><init>(Lcom/igg/android/conquerors/RewardAdManager;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method private synthetic lambda$InitConsentRequest$0()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/igg/android/conquerors/RewardAdManager$1;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/RewardAdManager$1;-><init>(Lcom/igg/android/conquerors/RewardAdManager;)V

    invoke-static {v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method

.method private synthetic lambda$InitConsentRequest$1(Lcom/google/android/ump/FormError;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 100
    const-string p1, "%s: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardAdManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$showPrivacyOptionsForm$3(Lcom/google/android/ump/FormError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showPrivacyOptionsForm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardAdManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public CreateConsentRequestParameters(Ljava/lang/String;)Lcom/google/android/ump/ConsentRequestParameters;
    .locals 2

    .line 179
    new-instance p1, Lcom/google/android/ump/ConsentDebugSettings$Builder;

    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    invoke-direct {p1, v0}, Lcom/google/android/ump/ConsentDebugSettings$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance p1, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    .line 189
    iget v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->TagForUnderAgeOfConsent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object p1

    return-object p1
.end method

.method public Init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method public InitAdMob()V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMobileAdsInitializeCalled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RewardAdManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/RewardAdManager;->InitRequestConfiguration(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v1

    const-string v0, "flow_seq"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x6

    const-string v3, "admob_sdk_init_start"

    const-string v4, "init_start"

    invoke-virtual/range {v1 .. v6}, Lcom/AppEvent;->sendRewardedADEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda3;-><init>(Lcom/igg/android/conquerors/RewardAdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public InitConsentRequest()V
    .locals 5

    .line 70
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/RewardAdManager;->InitFaceBookAdSettings(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/igg/android/conquerors/RewardAdManager;->CreateConsentRequestParameters(Ljava/lang/String;)Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/igg/android/conquerors/RewardAdManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 74
    iget-object v2, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    new-instance v3, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda1;-><init>(Lcom/igg/android/conquerors/RewardAdManager;)V

    new-instance v4, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda2;-><init>(Lcom/igg/android/conquerors/RewardAdManager;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 104
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result v0

    const-string v1, "RewardAdManager"

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "InitConsentRequest last: true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/igg/android/conquerors/RewardAdManager;->InitAdMob()V

    return-void

    .line 108
    :cond_0
    const-string v0, "InitConsentRequest last: false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public InitFaceBookAdSettings(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public InitRequestConfiguration(Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance p1, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 149
    iget v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->TagForUnderAgeOfConsent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 151
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

.method public isPrivacyOptionsRequired()Z
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->getPrivacyOptionsRequirementStatus()Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    move-result-object v0

    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public showPrivacyOptionsForm()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    const-string v1, "RewardAdManager"

    if-nez v0, :cond_0

    .line 217
    const-string v0, "showPrivacyOptionsForm: colContext == null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_0
    const-string v0, "showPrivacyOptionsForm: "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardAdManager;->colContext:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/RewardAdManager$$ExternalSyntheticLambda0;-><init>(Lcom/igg/android/conquerors/RewardAdManager;)V

    invoke-static {v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->showPrivacyOptionsForm(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method
