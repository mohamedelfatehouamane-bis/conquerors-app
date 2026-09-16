.class Lcom/AccountHelper$4;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->autoLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    :try_start_0
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetbExpiredSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->invalidateCurrentSession()Lcom/gpc/sdk/account/GPCSession;

    .line 179
    :cond_2
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    new-instance v1, Lcom/AccountHelper$4$1;

    invoke-direct {v1, p0}, Lcom/AccountHelper$4$1;-><init>(Lcom/AccountHelper$4;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/Kungfu;->setLoginDelegate(Lcom/gpc/sdk/account/GPCLoginDelegate;)V

    .line 189
    new-instance v0, Lcom/AccountHelper$4$2;

    invoke-direct {v0, p0}, Lcom/AccountHelper$4$2;-><init>(Lcom/AccountHelper$4;)V

    .line 224
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/Kungfu;->quickLogin(Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
