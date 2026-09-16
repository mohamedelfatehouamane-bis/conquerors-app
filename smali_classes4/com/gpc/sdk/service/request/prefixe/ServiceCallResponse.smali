.class public Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceCallResponse"


# instance fields
.field public data:Ljava/lang/String;

.field public error:Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

.field private httpRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->httpRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-void
.end method


# virtual methods
.method public createExtra()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->httpRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getProcessedRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;

    invoke-direct {v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;

    move-result-object v0

    const-string v2, "x-gpc-trace-id"

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;->setTraceId(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public getHttpRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->httpRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-object v0
.end method

.method public setHttpRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->httpRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-void
.end method
