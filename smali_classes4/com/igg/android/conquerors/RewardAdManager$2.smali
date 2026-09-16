.class Lcom/igg/android/conquerors/RewardAdManager$2;
.super Ljava/lang/Object;
.source "RewardAdManager.java"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/RewardAdManager;->InitAdMob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/RewardAdManager;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/RewardAdManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager$2;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onInitializationComplete$0()V
    .locals 6

    .line 138
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v0

    const-string v1, "flow_seq"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x6

    const-string v2, "admob_sdk_init_complete"

    const-string v3, "init_complete"

    invoke-virtual/range {v0 .. v5}, Lcom/AppEvent;->sendRewardedADEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 6

    .line 130
    invoke-interface {p1}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    .line 135
    invoke-interface {v2}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getLatency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const/4 v1, 0x2

    aput-object v2, v4, v1

    .line 133
    const-string v1, "Adapter name: %s, State: %s, Latency: %d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RewardAdManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager$2;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-static {p1}, Lcom/igg/android/conquerors/RewardAdManager;->-$$Nest$fgetcolContext(Lcom/igg/android/conquerors/RewardAdManager;)Lcom/igg/android/conquerors/col;

    move-result-object p1

    new-instance v0, Lcom/igg/android/conquerors/RewardAdManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/igg/android/conquerors/RewardAdManager$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
