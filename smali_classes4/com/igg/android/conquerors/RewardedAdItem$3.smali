.class Lcom/igg/android/conquerors/RewardedAdItem$3;
.super Ljava/lang/Object;
.source "RewardedAdItem.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$3;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iput-object p2, p0, Lcom/igg/android/conquerors/RewardedAdItem$3;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 4

    .line 180
    const-string v0, "MobileAds"

    .line 0
    const-string v1, "The user earned the reward, rewardAmount"

    .line 180
    :try_start_0
    const-string v2, "The user earned the reward."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result v2

    .line 182
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$3;->val$activity:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem$3;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    iget-object v0, v0, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/jniCallback;->retPlayAdVideo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem$3;->this$0:Lcom/igg/android/conquerors/RewardedAdItem;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method
