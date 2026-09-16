.class public Lcom/gpc/sdk/account/GPCSession$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/service/RequestSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/account/GPCSession;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession$c;->c:Lcom/gpc/sdk/account/GPCSession;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCSession$c;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;

    iput-object p3, p0, Lcom/gpc/sdk/account/GPCSession$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCSession$c;->c:Lcom/gpc/sdk/account/GPCSession;

    invoke-static {p2}, Lcom/gpc/sdk/account/GPCSession;->access$000(Lcom/gpc/sdk/account/GPCSession;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gpc/sdk/account/GPCSession$c;->c:Lcom/gpc/sdk/account/GPCSession;

    invoke-static {p2}, Lcom/gpc/sdk/account/GPCSession;->access$000(Lcom/gpc/sdk/account/GPCSession;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCSession$c;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession$c;->c:Lcom/gpc/sdk/account/GPCSession;

    invoke-static {v1}, Lcom/gpc/sdk/account/GPCSession;->access$000(Lcom/gpc/sdk/account/GPCSession;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession$c;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logSSOTokenFailedEvent(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCSession$c;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;

    sget-object p3, Lcom/gpc/sdk/error/GPCErrorCodeMaps;->REQUEST_SSO_TOKEN_MAP:Ljava/util/Map;

    const-string v0, "115004"

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCSession$c;->c:Lcom/gpc/sdk/account/GPCSession;

    invoke-static {p1, p2}, Lcom/gpc/sdk/account/GPCSession;->access$002(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    .line 13
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSessionManager;->storeCurrentSession()V

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCSession$c;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/account/GPCSession$c;->c:Lcom/gpc/sdk/account/GPCSession;

    invoke-static {p3}, Lcom/gpc/sdk/account/GPCSession;->access$000(Lcom/gpc/sdk/account/GPCSession;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->getSsoToken()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
