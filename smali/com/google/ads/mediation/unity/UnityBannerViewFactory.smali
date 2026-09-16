.class Lcom/google/ads/mediation/unity/UnityBannerViewFactory;
.super Ljava/lang/Object;
.source "UnityBannerViewFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createBannerView(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;
    .locals 1

    .line 11
    new-instance v0, Lcom/unity3d/services/banners/BannerView;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    .line 12
    new-instance p1, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;

    invoke-direct {p1, v0}, Lcom/google/ads/mediation/unity/UnityBannerViewWrapper;-><init>(Lcom/unity3d/services/banners/BannerView;)V

    return-object p1
.end method
