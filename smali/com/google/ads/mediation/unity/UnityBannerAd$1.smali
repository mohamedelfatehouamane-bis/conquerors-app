.class Lcom/google/ads/mediation/unity/UnityBannerAd$1;
.super Lcom/unity3d/services/banners/BannerView$Listener;
.source "UnityBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/unity/UnityBannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityBannerAd;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-direct {p0}, Lcom/unity3d/services/banners/BannerView$Listener;-><init>()V

    return-void
.end method

.method private logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/unity3d/services/banners/BannerView;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    sget-object p2, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onBannerClick(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 87
    const-string v0, "Unity Ads banner ad was clicked for placement ID: %s"

    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 88
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    move-result-object p1

    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->CLICKED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    .line 89
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    move-result-object p1

    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->OPENED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    return-void
.end method

.method public onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->getMediationErrorCode(Lcom/unity3d/services/banners/BannerErrorInfo;)I

    move-result v0

    iget-object p2, p2, Lcom/unity3d/services/banners/BannerErrorInfo;->errorMessage:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/google/ads/mediation/unity/UnityBannerAd;->access$100(Lcom/google/ads/mediation/unity/UnityBannerAd;ILjava/lang/String;)V

    return-void
.end method

.method public onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 99
    const-string v0, "Unity Ads banner ad left application for placement ID: %s"

    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 100
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    move-result-object p1

    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->LEFT_APPLICATION:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    return-void
.end method

.method public onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 81
    const-string v0, "Unity Ads finished loading banner ad for placement ID: %s"

    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 82
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    move-result-object p1

    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->LOADED:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    return-void
.end method

.method public onBannerShown(Lcom/unity3d/services/banners/BannerView;)V
    .locals 1

    .line 105
    const-string v0, "Unity Ads banner ad was shown for placement ID: %s"

    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->logBannerMessage(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;)V

    .line 106
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->access$000(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;

    move-result-object p1

    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;->IMPRESSION:Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/unity/eventadapters/UnityBannerEventAdapter;->sendAdEvent(Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils$AdEvent;)V

    return-void
.end method
