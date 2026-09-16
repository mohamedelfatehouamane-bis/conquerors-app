.class Lcom/AccountHelper$9;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/loginscene/GPCGuestLoginScene$GPCGuestLoginCheckingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->_guestAccountLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V
    .locals 3

    .line 462
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    const-string v1, "_guestAccountLogin"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 465
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2, p3}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    .line 466
    const-string p1, "--0"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 469
    :cond_0
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    invoke-virtual {p1, v2, v2, p3}, Lcom/jniCallback;->retSwitchResult(IILjava/lang/String;)V

    .line 470
    const-string p1, "--1"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 475
    :cond_1
    invoke-static {p1, v2}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 476
    :cond_2
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 p2, 0x3

    const-string p3, ""

    invoke-virtual {p1, p2, v2, p3}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 477
    const-string p1, "--3"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
