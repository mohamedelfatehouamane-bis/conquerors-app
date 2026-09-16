.class public Lcom/igg/android/conquerors/RewardedAdItem;
.super Ljava/lang/Object;
.source "RewardedAdItem.java"


# instance fields
.field public mAdUnitID:Ljava/lang/String;

.field public mIsLoadingAdVideo:Z

.field public mSrcType:Ljava/lang/String;

.field public mStrPlacement:Ljava/lang/String;

.field public mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mSrcType:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mStrPlacement:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadAd(Lcom/igg/android/conquerors/col;)V
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 41
    iget-boolean v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    if-nez v0, :cond_2

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    iget-object v4, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mSrcType:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/jniCallback;->retPreloadAdVideo(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    iput-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 49
    iput-boolean v2, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v4

    const-string v0, "flow_seq"

    const-string v5, "ad_placement"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "3"

    iget-object v5, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mStrPlacement:Ljava/lang/String;

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x6

    const-string v6, "admob_ad_request"

    const-string v7, "AdRequest"

    invoke-virtual/range {v4 .. v9}, Lcom/AppEvent;->sendRewardedADEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    iput-boolean v3, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    .line 63
    :try_start_1
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 64
    iget-object v3, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mAdUnitID:Ljava/lang/String;

    new-instance v4, Lcom/igg/android/conquerors/RewardedAdItem$1;

    invoke-direct {v4, p0, p1}, Lcom/igg/android/conquerors/RewardedAdItem$1;-><init>(Lcom/igg/android/conquerors/RewardedAdItem;Lcom/igg/android/conquerors/col;)V

    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    iput-object v1, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 103
    iput-boolean v2, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setPlacementID(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 30
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mStrPlacement:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public showAd(Lcom/igg/android/conquerors/col;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mIsLoadingAdVideo:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    new-instance v1, Lcom/igg/android/conquerors/RewardedAdItem$2;

    invoke-direct {v1, p0, p1}, Lcom/igg/android/conquerors/RewardedAdItem$2;-><init>(Lcom/igg/android/conquerors/RewardedAdItem;Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 175
    iget-object v0, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lcom/igg/android/conquerors/RewardedAdItem$3;

    invoke-direct {v1, p0, p1}, Lcom/igg/android/conquerors/RewardedAdItem$3;-><init>(Lcom/igg/android/conquerors/RewardedAdItem;Lcom/igg/android/conquerors/col;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardedAdItem;->mVideoRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    :goto_0
    return-void
.end method
