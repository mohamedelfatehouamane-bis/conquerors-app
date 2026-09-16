.class Lcom/google/ads/mediation/unity/UnityRewardedAd$2;
.super Ljava/lang/Object;
.source "UnityRewardedAd.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/unity/UnityRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityRewardedAd;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsShowClick(Ljava/lang/String;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->reportAdClicked()V

    :cond_0
    return-void
.end method

.method public onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    if-ne p2, p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoComplete()V

    .line 205
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    new-instance p2, Lcom/google/ads/mediation/unity/UnityReward;

    invoke-direct {p2}, Lcom/google/ads/mediation/unity/UnityReward;-><init>()V

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdClosed()V

    return-void
.end method

.method public onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    invoke-static {p2, p3}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->createSDKError(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 216
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onUnityAdsShowStart(Ljava/lang/String;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdOpened()V

    .line 183
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->reportAdImpression()V

    .line 184
    iget-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->access$100(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoStart()V

    return-void
.end method
