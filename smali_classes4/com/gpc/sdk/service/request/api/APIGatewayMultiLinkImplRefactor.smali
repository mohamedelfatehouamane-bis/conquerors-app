.class public Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImplRefactor;
.super Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImpl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "APIGatewayMultiLinkImplRefactor"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/HTTPClient;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/sdk/service/request/api/APIGatewayMultiLinkImpl;-><init>(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/HTTPClient;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Lcom/gpc/sdk/service/request/api/APIGatewayHTTPServiceCallback$Handler;Lcom/gpc/sdk/service/request/api/APIGatewayConfig;)V

    return-void
.end method


# virtual methods
.method public generatorHTTPRequestConfig(Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/service/request/api/MultiLinkImpl;->commonHTTPRequestConfig()Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->getRetryStrategy()Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->NOT_SET:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->getRetryStrategy()Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->CLOSE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->getRetryStrategy()Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->IMMEDIATELY_ONCE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    return-object p1

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;->setShouldRetry(Z)V

    return-object p1
.end method
