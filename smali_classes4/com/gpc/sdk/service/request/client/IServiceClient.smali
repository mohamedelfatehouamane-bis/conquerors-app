.class public interface abstract Lcom/gpc/sdk/service/request/client/IServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateConnectTimeout(I)V
.end method

.method public abstract updateReadTimeout(I)V
.end method
