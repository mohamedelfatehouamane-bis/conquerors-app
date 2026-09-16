.class Lcom/AccountHelper$18;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->requestSSOToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 802
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetssoTokenType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/AccountHelper$18$1;

    invoke-direct {v2, p0}, Lcom/AccountHelper$18$1;-><init>(Lcom/AccountHelper$18;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 812
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
