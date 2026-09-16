.class public abstract Lcom/gpc/sdk/GPCURLBundle$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCURLBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/GPCURLBundle;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCURLBundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCURLBundle$f;->a:Lcom/gpc/sdk/GPCURLBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/GPCURLBundle$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/GPCURLBundle$f$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/GPCURLBundle$f$a;-><init>(Lcom/gpc/sdk/GPCURLBundle$f;Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V

    const-string p1, "GPCSDK_URL_BUNDLE"

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    return-void
.end method
