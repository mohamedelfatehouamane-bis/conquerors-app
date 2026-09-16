.class Lcom/AccountHelper$4$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/kit/listener/GPCQuickLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AccountHelper$4;


# direct methods
.method constructor <init>(Lcom/AccountHelper$4;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/AccountHelper$4$2;->this$0:Lcom/AccountHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 216
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 217
    invoke-static {p1, v0}, Lcom/AccountHelper;->handLoginError915(Lcom/gpc/sdk/error/GPCException;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error code :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "loginListener"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v1, 0x4

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 220
    const-string p1, "autoLogin"

    const-string v0, "OnError\uff1a4"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public OnLoggedIn(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 10

    .line 192
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v0

    invoke-static {v0}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result v0

    invoke-static {v0}, Lcom/AccountHelper;->-$$Nest$sfputnLastLoginType(I)V

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_1

    .line 196
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPermissionsController()Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v0

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gpc/sdk/permision/PermissionsController;->hasPostNotificationsPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 204
    :goto_0
    const-string v0, "AccountHelper-"

    const-string v1, "OnLoggedIn: GPCSDK.kungfu().startup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->startup()V

    .line 206
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isHasBind()Z

    move-result v5

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetnLastLoginType()I

    move-result v6

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->_getExactAlarmState()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Lcom/jniCallback;->retLoginAccontSuccess(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;II)V

    .line 207
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/AppEvent;->sendLoginGPCEvent()V

    return-void

    .line 209
    :cond_2
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v2, v1, v0}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 210
    const-string p1, "autoLogin"

    const-string v0, "GPCQuickLoginListener\uff1a2"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
