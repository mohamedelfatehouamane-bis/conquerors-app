.class Lcom/AccountHelper$20;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->queryIPArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 837
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedRiskManagement()Lcom/gpc/sdk/risk/GPCRiskManagement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    invoke-static {}, Lcom/igg/android/conquerors/col;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/AccountHelper$20$1;

    invoke-direct {v2, p0}, Lcom/AccountHelper$20$1;-><init>(Lcom/AccountHelper$20;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/risk/GPCRiskManagement;->getCachedRegion(Landroid/content/Context;Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
