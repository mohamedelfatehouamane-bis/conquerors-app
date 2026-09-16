.class public Lcom/google/ads/mediation/unity/UnityAdapter;
.super Lcom/google/ads/mediation/unity/UnityMediationAdapter;
.source "UnityAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bannerAd:Lcom/google/ads/mediation/unity/UnityBannerAd;

.field private eventAdapter:Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;

.field private mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private objectId:Ljava/lang/String;

.field private placementId:Ljava/lang/String;

.field private final unityLoadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field private final unityShowListener:Lcom/unity3d/ads/IUnityAdsShowListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/ads/mediation/unity/UnityMediationAdapter;-><init>()V

    .line 90
    new-instance v0, Lcom/google/ads/mediation/unity/UnityAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/unity/UnityAdapter$1;-><init>(Lcom/google/ads/mediation/unity/UnityAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->unityLoadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    .line 205
    new-instance v0, Lcom/google/ads/mediation/unity/UnityAdapter$3;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/unity/UnityAdapter$3;-><init>(Lcom/google/ads/mediation/unity/UnityAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->unityShowListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/unity/UnityAdapter;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/ads/mediation/unity/UnityAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/unity/UnityAdapter;)Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->eventAdapter:Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/unity/UnityAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method private sendAdFailedToLoad(ILjava/lang/String;)V
    .locals 1

    .line 172
    invoke-static {p1, p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->createAdError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 173
    sget-object p2, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz p2, :cond_0

    .line 175
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->bannerAd:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-virtual {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->getBannerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 268
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->bannerAd:Lcom/google/ads/mediation/unity/UnityBannerAd;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->bannerAd:Lcom/google/ads/mediation/unity/UnityBannerAd;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->bannerAd:Lcom/google/ads/mediation/unity/UnityBannerAd;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->onResume()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 7

    .line 260
    new-instance v0, Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-direct {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->bannerAd:Lcom/google/ads/mediation/unity/UnityBannerAd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 261
    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/unity/UnityBannerAd;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    .line 118
    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 119
    new-instance p2, Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;

    iget-object p4, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-direct {p2, p4, p0}, Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->eventAdapter:Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;

    .line 121
    const-string p2, "gameId"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    const-string p4, "zoneId"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    .line 123
    invoke-static {p2, p3}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->areValidIds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p1, 0x65

    .line 124
    const-string p2, "Missing or invalid server parameters."

    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/unity/UnityAdapter;->sendAdFailedToLoad(ILjava/lang/String;)V

    return-void

    .line 128
    :cond_0
    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_1

    const/16 p1, 0x69

    .line 129
    const-string p2, "Unity Ads requires an Activity context to load ads."

    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/unity/UnityAdapter;->sendAdFailedToLoad(ILjava/lang/String;)V

    return-void

    .line 133
    :cond_1
    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    .line 134
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 136
    invoke-static {}, Lcom/google/ads/mediation/unity/UnityInitializer;->getInstance()Lcom/google/ads/mediation/unity/UnityInitializer;

    move-result-object p3

    new-instance p4, Lcom/google/ads/mediation/unity/UnityAdapter$2;

    invoke-direct {p4, p0, p2}, Lcom/google/ads/mediation/unity/UnityAdapter$2;-><init>(Lcom/google/ads/mediation/unity/UnityAdapter;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3, p1, p2, p4}, Lcom/google/ads/mediation/unity/UnityInitializer;->initializeUnityAds(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    .line 163
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result p2

    .line 162
    invoke-static {p2, p1}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->setCoppa(ILandroid/content/Context;)V

    .line 165
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->objectId:Ljava/lang/String;

    .line 166
    new-instance p1, Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-direct {p1}, Lcom/unity3d/ads/UnityAdsLoadOptions;-><init>()V

    .line 167
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->objectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/UnityAdsLoadOptions;->setObjectId(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->unityLoadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    invoke-static {p2, p1, p3}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->activityWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to show interstitial ad for placement ID \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' from Unity Ads: Activity context is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->eventAdapter:Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;

    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->CLOSED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/unity/eventadapters/UnityInterstitialEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 193
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Unity Ads received call to show before successfully loading an ad."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    new-instance v1, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v1}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    .line 197
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/UnityAdsShowOptions;->setObjectId(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->unityShowListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    invoke-static {v0, v2, v1, v3}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method
