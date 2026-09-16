.class public Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/account/service/SessionServiceImpl;->requestSSOToken(Ljava/lang/String;Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/operations/migrate/account/service/SessionServiceImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/account/service/SessionServiceImpl;Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->c:Lcom/gpc/operations/migrate/account/service/SessionServiceImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->a:Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;

    iput-object p3, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SessionServiceImpl"

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "request is error."

    invoke-static {v2, p2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->a:Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)V

    return-void

    .line 11
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->createFormJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->a:Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    const-string p2, ""

    invoke-static {v2, p2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const-string p1, "json data is invalid."

    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/operations/migrate/account/service/SessionServiceImpl$a;->a:Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;

    const-string p2, "115005"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 20
    const-string v0, "5001"

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 21
    invoke-interface {p1, p2, v1}, Lcom/gpc/operations/migrate/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;)V

    return-void
.end method
