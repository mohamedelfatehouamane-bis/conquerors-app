.class Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;
.super Ljava/lang/Object;
.source "UnityInterstitialAd.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/unity/UnityInterstitialAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gameId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityInterstitialAd;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$gameId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$gameId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 191
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$000(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 188
    const-string v0, "Unity Ads is initialized for game ID \'%s\' and can now load interstitial ad with placement ID: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$context:Landroid/content/Context;

    .line 194
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->setCoppa(ILandroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$102(Lcom/google/ads/mediation/unity/UnityInterstitialAd;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 199
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$200(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Lcom/google/ads/mediation/unity/UnityAdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$100(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsLoader;->createUnityAdsLoadOptionsWithId(Ljava/lang/String;)Lcom/unity3d/ads/UnityAdsLoadOptions;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$200(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Lcom/google/ads/mediation/unity/UnityAdsLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    invoke-static {v2}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$000(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/ads/mediation/unity/UnityAdsLoader;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$gameId:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 208
    const-string p2, "Unity Ads initialization failed for game ID \'%s\' with error message: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-static {p1, p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->createSDKError(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 210
    sget-object p2, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->access$300(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method
