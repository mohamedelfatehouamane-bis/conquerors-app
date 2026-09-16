.class public interface abstract Lcom/gpc/operations/migrate/service/request/api/HTTPService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract head(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestBody;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestWriteListener;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestConfig;",
            "Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract removeHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract setHeadersBuilder(Lcom/gpc/operations/migrate/service/request/api/APIGatewayHeadersBuilder;)V
.end method
