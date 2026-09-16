.class Lcom/igg/android/conquerors/RewardedAdItem$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "RewardedAdItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/RewardedAdItem;->showAd(Lcom/igg/android/conquerors/col;)V
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

    .line 113
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object p2, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 4

    .line 117
    const-string v0, "MobileAds"

    const-string v1, "Ad was clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v1, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jniCallback;->retPlayAdVideo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 5

    .line 128
    const-string v0, "MobileAds"

    const-string v1, "onAdDismissedFullScreenContent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object v0, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 131
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {v1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v2, v2, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jniCallback;->retPlayAdVideo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object v0, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 4

    .line 140
    const-string v0, "MobileAds"

    const-string v1, "onAdFailedToShowFullScreenContent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object v0, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 143
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {v1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v2, v2, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/jniCallback;->retPlayAdVideo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object v0, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public onAdImpression()V
    .locals 4

    .line 153
    const-string v0, "MobileAds"

    const-string v1, "Ad recorded an impression."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v1, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jniCallback;->retPlayAdVideo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 4

    .line 164
    const-string v0, "MobileAds"

    const-string v1, "Ad showed fullscreen content."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v1, v1, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jniCallback;->retPlayAdVideo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem$2;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method
