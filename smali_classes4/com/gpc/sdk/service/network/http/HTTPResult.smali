.class public Lcom/gpc/sdk/service/network/http/HTTPResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private exception:Lcom/gpc/sdk/service/network/http/HTTPException;

.field private originalRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

.field private processedRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

.field private response:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Lcom/gpc/sdk/service/network/http/HTTPException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->exception:Lcom/gpc/sdk/service/network/http/HTTPException;

    return-object v0
.end method

.method public getOriginalRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->originalRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-object v0
.end method

.method public getProcessedRequest()Lcom/gpc/sdk/service/network/http/request/HTTPRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->processedRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-object v0
.end method

.method public getResponse()Lcom/gpc/sdk/service/network/http/response/HTTPResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->response:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    return-object v0
.end method

.method public setException(Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->exception:Lcom/gpc/sdk/service/network/http/HTTPException;

    return-void
.end method

.method public setOriginalRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->originalRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-void
.end method

.method public setProcessedRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->processedRequest:Lcom/gpc/sdk/service/network/http/request/HTTPRequest;

    return-void
.end method

.method public setResponse(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPResult;->response:Lcom/gpc/sdk/service/network/http/response/HTTPResponse;

    return-void
.end method
