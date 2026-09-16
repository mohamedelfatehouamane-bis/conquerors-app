.class Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;
.super Ljava/lang/Object;
.source "UnityMediationBannerAd.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$unityBannerSize:Lcom/unity3d/services/banners/UnityBannerSize;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->val$unityBannerSize:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    .line 207
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$100(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 204
    const-string v0, "Unity Ads is initialized for game ID \'%s\' and can now load banner ad with placement ID: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->val$context:Landroid/content/Context;

    .line 210
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->setCoppa(ILandroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$200(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    .line 215
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$300(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Lcom/google/ads/mediation/unity/UnityBannerViewFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    .line 216
    invoke-static {v3}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$100(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->val$unityBannerSize:Lcom/unity3d/services/banners/UnityBannerSize;

    .line 215
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/ads/mediation/unity/UnityBannerViewFactory;->createBannerView(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$202(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;)Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$200(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 220
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$200(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;->load()V

    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    .line 228
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string p2, "Unity Ads initialization failed for game ID \'%s\' with error message: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-static {p1, p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->createSDKError(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 230
    sget-object p2, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityMediationBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityMediationBannerAd;

    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityMediationBannerAd;->access$400(Lcom/google/ads/mediation/unity/UnityMediationBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method
