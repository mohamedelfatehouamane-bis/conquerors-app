.class public Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;


# static fields
.field public static final TAG:Ljava/lang/String; = "WebSSOToken"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "1001"

    invoke-static {v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;-><init>(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GPCSDK_APP_RATING"

    return-object v0
.end method
