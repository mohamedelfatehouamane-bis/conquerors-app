.class public Lcom/gpc/sdk/service/interceptors/HTTPCommonRequestHeaderInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/HTTPInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getCommonApiRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->addHeaders(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 0

    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
