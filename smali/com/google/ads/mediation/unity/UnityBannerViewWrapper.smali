.class Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;
.super Ljava/lang/Object;
.source "UnityBannerViewWrapper.java"


# instance fields
.field private final bannerView:Lcom/unity3d/services/banners/BannerView;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;->bannerView:Lcom/unity3d/services/banners/BannerView;

    return-void
.end method


# virtual methods
.method public getBannerView()Lcom/unity3d/services/banners/BannerView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;->bannerView:Lcom/unity3d/services/banners/BannerView;

    return-object v0
.end method

.method public load()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->load()V

    return-void
.end method

.method public setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;->bannerView:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    return-void
.end method
