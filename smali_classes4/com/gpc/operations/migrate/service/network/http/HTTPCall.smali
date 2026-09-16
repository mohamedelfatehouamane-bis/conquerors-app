.class public interface abstract Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel(Z)Z
.end method

.method public abstract enqueue(Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;)V
.end method

.method public abstract execute()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/operations/migrate/service/network/http/HTTPException;
        }
    .end annotation
.end method
