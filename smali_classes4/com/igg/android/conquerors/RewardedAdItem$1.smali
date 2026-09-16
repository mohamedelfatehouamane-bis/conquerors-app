.class Lcom/igg/android/conquerors/RewardedAdItem$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "RewardedAdItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/RewardedAdItem;->loadAd(Lcom/igg/android/conquerors/col;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/RewardedAdItem;

.field final synthetic val$activity:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/RewardedAdItem;Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object p2, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 6

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToLoad"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileAds"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-boolean v1, v2, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    .line 72
    iget-object v2, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object v0, v2, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 73
    iget-object v2, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v3, v3, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, p1, v4}, Lcom/jniCallback;->retPreloadAdVideo(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object v0, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 78
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-boolean v1, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 3

    const/4 v0, 0x0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object p1, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 86
    const-string p1, "MobileAds"

    const-string v1, "onAdLoaded"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object p1, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mSrcType:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-boolean v0, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    .line 90
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v1, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    iget-object v2, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v2, v2, Lcom/igg/android/conquerors/RewardedAdItem;->mSrcType:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v0, v2}, Lcom/jniCallback;->retPreloadAdVideo(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 95
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$1;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-boolean v0, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/igg/android/conquerors/RewardedAdItem$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
