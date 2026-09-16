.class public Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/client/SimpleServiceClient;->instantiatedResponseListener(Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/client/SimpleServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/client/SimpleServiceClient;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->b:Lcom/gpc/sdk/service/request/client/SimpleServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$b;->a:[I

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa0

    goto :goto_0

    :cond_1
    const/16 p1, 0xbb8

    .line 21
    :goto_0
    iget-object p2, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;->onFail(I)V

    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;->onBusinessError(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string p2, "SimpleServiceClient"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

    const/16 p2, 0x1389

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;->onFail(I)V

    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/service/request/client/SimpleServiceClient$a;->a:Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;->onFail(I)V

    return-void
.end method
