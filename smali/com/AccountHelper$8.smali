.class Lcom/AccountHelper$8;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->loginByDeviceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 442
    :try_start_0
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void

    .line 446
    :cond_0
    invoke-static {}, Lcom/AccountHelper;->_guestAccountLogin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
