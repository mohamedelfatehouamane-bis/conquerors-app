.class public interface abstract Lcom/gpc/sdk/service/request/api/HTTPService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getSync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getSync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/sdk/service/request/api/HTTPServiceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract removeHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract setHeadersBuilder(Lcom/gpc/sdk/service/request/api/APIGatewayHeadersBuilder;)V
.end method
