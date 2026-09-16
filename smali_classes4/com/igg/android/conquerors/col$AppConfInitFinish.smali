.class public Lcom/igg/android/conquerors/col$AppConfInitFinish;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/Kungfu$GPCAppConfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/col;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppConfInitFinish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method public constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/igg/android/conquerors/col$AppConfInitFinish;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFinishCallBack()V
    .locals 2

    .line 816
    const-string v0, "log---"

    const-string v1, "GPCSDK initFinishCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/igg/android/conquerors/col$AppConfInitFinish;->this$0:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/igg/android/conquerors/col$AppConfInitFinish$1;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$AppConfInitFinish$1;-><init>(Lcom/igg/android/conquerors/col$AppConfInitFinish;)V

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 830
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/col$AppConfInitFinish$2;

    invoke-direct {v1, p0}, Lcom/igg/android/conquerors/col$AppConfInitFinish$2;-><init>(Lcom/igg/android/conquerors/col$AppConfInitFinish;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->setAccountManagementGuidelineDelegate(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;)V

    .line 838
    iget-object v0, p0, Lcom/igg/android/conquerors/col$AppConfInitFinish;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/igg/android/conquerors/col;->-$$Nest$minitOperationsSDK(Lcom/igg/android/conquerors/col;)V

    .line 839
    invoke-static {}, Lcom/igg/android/conquerors/RewardAdManager;->getInstance()Lcom/igg/android/conquerors/RewardAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/RewardAdManager;->InitConsentRequest()V

    .line 840
    iget-object v0, p0, Lcom/igg/android/conquerors/col$AppConfInitFinish;->this$0:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jniCallback;->iggSDKInitFinishCallBack()V

    return-void
.end method

.method public onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 847
    iget-object p1, p1, Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;->appConf:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    sput-object p1, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 848
    sput-object p2, Lcom/igg/android/conquerors/col;->m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 850
    sput-object p1, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 851
    sput-object p1, Lcom/igg/android/conquerors/col;->m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    .line 853
    :goto_0
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col$AppConfInitFinish;->initFinishCallBack()V

    return-void
.end method

.method public onInitialized(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 859
    sput-object p1, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 860
    sput-object p2, Lcom/igg/android/conquerors/col;->m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    .line 861
    invoke-virtual {p0}, Lcom/igg/android/conquerors/col$AppConfInitFinish;->initFinishCallBack()V

    return-void
.end method
