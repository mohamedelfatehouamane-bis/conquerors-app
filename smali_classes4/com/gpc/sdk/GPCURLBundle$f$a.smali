.class public Lcom/gpc/sdk/GPCURLBundle$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCURLBundle$f;->a(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;

.field public final synthetic b:Lcom/gpc/sdk/GPCURLBundle$f;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCURLBundle$f;Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCURLBundle$f$a;->b:Lcom/gpc/sdk/GPCURLBundle$f;

    iput-object p2, p0, Lcom/gpc/sdk/GPCURLBundle$f$a;->a:Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/GPCURLBundle$f$a;->a:Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "20"

    const-string v2, "340102"

    invoke-static {v2, v0, v1, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/GPCURLBundle$f$a;->b:Lcom/gpc/sdk/GPCURLBundle$f;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCURLBundle$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/GPCURLBundle$f$a;->a:Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/GPCURLBundle$f$a;->b:Lcom/gpc/sdk/GPCURLBundle$f;

    invoke-virtual {v1, p2}, Lcom/gpc/sdk/GPCURLBundle$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
