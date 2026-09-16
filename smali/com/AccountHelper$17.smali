.class Lcom/AccountHelper$17;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->loadUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 696
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    new-instance v1, Lcom/AccountHelper$17$1;

    invoke-direct {v1, p0}, Lcom/AccountHelper$17$1;-><init>(Lcom/AccountHelper$17;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->setCompatProxy(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;)V

    .line 715
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAccountManagementGuideline()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    move-result-object v0

    new-instance v1, Lcom/AccountHelper$17$2;

    invoke-direct {v1, p0}, Lcom/AccountHelper$17$2;-><init>(Lcom/AccountHelper$17;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->loadUser(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
