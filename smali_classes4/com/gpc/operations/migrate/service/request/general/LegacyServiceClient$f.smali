.class public Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;
.super Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;->headRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;

    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$Callback;-><init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient;)V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
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

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;->process(Ljava/util/HashMap;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;-><init>(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseHeaders;)V

    .line 3
    const-string v1, "headers"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    const-string v2, "error"

    const-string v3, "isSourceUpdate"

    const-string v4, "rawresponse"

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 p2, 0x130

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    .line 11
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p2, "6000"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;->process(Ljava/util/HashMap;)V

    return-void
.end method

.method public process(Ljava/util/HashMap;)V
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

    check-cast v0, Lcom/gpc/operations/migrate/error/GPCException;

    .line 2
    const-string v1, "rawresponse"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    const-string v2, "headers"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$f;->a:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, v0, p1, v1}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;->onHeadersRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
