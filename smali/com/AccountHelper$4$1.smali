.class Lcom/AccountHelper$4$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLoginDelegate;


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

    .line 179
    iput-object p1, p0, Lcom/AccountHelper$4$1;->this$0:Lcom/AccountHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 3

    .line 183
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object p1

    invoke-static {p1}, Lcom/AccountHelper;->changeLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)I

    move-result p1

    invoke-static {p1}, Lcom/AccountHelper;->-$$Nest$sfputnLastLoginType(I)V

    .line 184
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    .line 185
    const-string p1, "autoLogin"

    const-string v0, "setLoginDelegate\uff1a2"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
