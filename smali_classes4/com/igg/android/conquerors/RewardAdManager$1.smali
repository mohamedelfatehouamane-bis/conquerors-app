.class Lcom/igg/android/conquerors/RewardAdManager$1;
.super Ljava/lang/Object;
.source "RewardAdManager.java"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/RewardAdManager;->InitConsentRequest()V
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

    .line 76
    iput-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager$1;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 4

    .line 79
    const-string v0, "RewardAdManager"

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 81
    const-string p1, "%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager$1;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/RewardAdManager;->isPrivacyOptionsRequired()Z

    move-result p1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPrivacyOptionsRequired:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardAdManager$1;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-static {v1}, Lcom/igg/android/conquerors/RewardAdManager;->-$$Nest$fgetcolContext(Lcom/igg/android/conquerors/RewardAdManager;)Lcom/igg/android/conquerors/col;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/igg/android/conquerors/RewardAdManager$1;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-static {v1}, Lcom/igg/android/conquerors/RewardAdManager;->-$$Nest$fgetcolContext(Lcom/igg/android/conquerors/RewardAdManager;)Lcom/igg/android/conquerors/col;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jniCallback;->setShowADConsent(I)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager$1;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-static {p1}, Lcom/igg/android/conquerors/RewardAdManager;->-$$Nest$fgetconsentInformation(Lcom/igg/android/conquerors/RewardAdManager;)Lcom/google/android/ump/ConsentInformation;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    const-string p1, "InitConsentRequest consent: true"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/igg/android/conquerors/RewardAdManager$1;->this$0:Lcom/igg/android/conquerors/RewardAdManager;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/RewardAdManager;->InitAdMob()V

    return-void

    .line 95
    :cond_2
    const-string p1, "InitConsentRequest consent: false"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
