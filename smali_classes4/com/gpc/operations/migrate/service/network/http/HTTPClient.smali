.class public interface abstract Lcom/gpc/operations/migrate/service/network/http/HTTPClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SHOULD_RETRY:Z = true


# virtual methods
.method public abstract addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract removeHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract request(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end method

.method public abstract setHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
