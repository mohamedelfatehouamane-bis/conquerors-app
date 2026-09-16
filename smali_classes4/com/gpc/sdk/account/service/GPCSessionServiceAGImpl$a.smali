.class public Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl;->requestSSOToken(Ljava/lang/String;Lcom/gpc/sdk/account/service/RequestSSOTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/service/RequestSSOTokenListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl;Lcom/gpc/sdk/account/service/RequestSSOTokenListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->c:Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl;

    iput-object p2, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/RequestSSOTokenListener;

    iput-object p3, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GPCSessionServiceAGImpl"

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "request is error."

    invoke-static {v2, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/RequestSSOTokenListener;

    invoke-virtual {p3}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->getTraceId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, v1, p3}, Lcom/gpc/sdk/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->createFormJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/RequestSSOTokenListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p3}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->getTraceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, p1, v3}, Lcom/gpc/sdk/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/RequestSSOTokenListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p3}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->getTraceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v1, v0}, Lcom/gpc/sdk/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    const-string p2, ""

    invoke-static {v2, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const-string p1, "json data is invalid."

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/gpc/sdk/account/service/GPCSessionServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/RequestSSOTokenListener;

    const-string p2, "115005"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 29
    const-string v0, "5001"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 30
    invoke-virtual {p3}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->getTraceId()Ljava/lang/String;

    move-result-object p3

    .line 31
    invoke-interface {p1, p2, v1, p3}, Lcom/gpc/sdk/account/service/RequestSSOTokenListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Ljava/lang/String;)V

    return-void
.end method
