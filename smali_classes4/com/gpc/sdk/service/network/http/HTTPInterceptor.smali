.class public interface abstract Lcom/gpc/sdk/service/network/http/HTTPInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract interceptException(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
.end method

.method public abstract interceptRequest(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
.end method

.method public abstract interceptResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
.end method

.method public abstract priority()I
.end method
