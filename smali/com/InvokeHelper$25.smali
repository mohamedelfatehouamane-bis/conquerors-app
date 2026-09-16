.class Lcom/InvokeHelper$25;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->showAdConsentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 630
    invoke-static {}, Lcom/igg/android/conquerors/RewardAdManager;->getInstance()Lcom/igg/android/conquerors/RewardAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/RewardAdManager;->showPrivacyOptionsForm()V

    return-void
.end method
