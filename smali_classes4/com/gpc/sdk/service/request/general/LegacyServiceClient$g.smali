.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$g;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$g;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/error/GPCException;

    .line 2
    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    const-string v2, "isSourceUpdate"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4
    const-string v3, "rawresponse"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$g;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v3, v0, v2, v1, p1}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string p2, "rawresponse"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p2, "ETag"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "isSourceUpdate"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p2, "4000"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$g;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;-><init>(Lcom/gpc/sdk/service/network/http/response/HTTPResponseHeaders;)V

    .line 3
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeaderWithLowerCaseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ETag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LegacyServiceClient"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    const-string v2, "error"

    const-string v3, "isSourceUpdate"

    const-string v4, "rawresponse"

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 p2, 0x130

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    .line 13
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p2, "6000"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$g;->a(Ljava/util/HashMap;)V

    return-void
.end method
