.class public interface abstract Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract interceptException(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
.end method

.method public abstract interceptRequest(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
.end method

.method public abstract interceptResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
.end method

.method public abstract priority()I
.end method
