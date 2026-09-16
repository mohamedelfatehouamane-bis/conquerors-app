.class public Lcom/gpc/operations/migrate/account/Session$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/account/Session;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/operations/migrate/account/Session;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/account/Session;Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/account/Session$a;->c:Lcom/gpc/operations/migrate/account/Session;

    iput-object p2, p0, Lcom/gpc/operations/migrate/account/Session$a;->a:Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;

    iput-object p3, p0, Lcom/gpc/operations/migrate/account/Session$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/migrate/account/Session$a;->c:Lcom/gpc/operations/migrate/account/Session;

    invoke-static {p2}, Lcom/gpc/operations/migrate/account/Session;->access$000(Lcom/gpc/operations/migrate/account/Session;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gpc/operations/migrate/account/Session$a;->c:Lcom/gpc/operations/migrate/account/Session;

    invoke-static {p2}, Lcom/gpc/operations/migrate/account/Session;->access$000(Lcom/gpc/operations/migrate/account/Session;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/migrate/account/Session$a;->a:Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/operations/migrate/account/Session$a;->c:Lcom/gpc/operations/migrate/account/Session;

    invoke-static {v1}, Lcom/gpc/operations/migrate/account/Session;->access$000(Lcom/gpc/operations/migrate/account/Session;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object v0, p0, Lcom/gpc/operations/migrate/account/Session$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;->logSSOTokenFailedEvent(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/gpc/operations/migrate/account/Session$a;->a:Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;

    sget-object v0, Lcom/gpc/operations/migrate/error/ErrorCodeMaps;->REQUEST_SSO_TOKEN_MAP:Ljava/util/Map;

    const-string v1, "115004"

    invoke-static {p1, v0, v1}, Lcom/gpc/operations/migrate/error/GPCException;->createException(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/gpc/operations/migrate/account/Session$a;->c:Lcom/gpc/operations/migrate/account/Session;

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/account/Session;->access$002(Lcom/gpc/operations/migrate/account/Session;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    .line 13
    iget-object p1, p0, Lcom/gpc/operations/migrate/account/Session$a;->a:Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/operations/migrate/account/Session$a;->c:Lcom/gpc/operations/migrate/account/Session;

    invoke-static {v0}, Lcom/gpc/operations/migrate/account/Session;->access$000(Lcom/gpc/operations/migrate/account/Session;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/gpc/operations/migrate/account/Session$RequestSSOTokenForWebListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
