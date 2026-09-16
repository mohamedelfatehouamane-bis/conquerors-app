.class public interface abstract Lcom/gpc/aws/handlers/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract afterError(Lcom/gpc/aws/Request;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract afterResponse(Lcom/gpc/aws/Request;Ljava/lang/Object;Lcom/gpc/aws/util/TimingInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/gpc/aws/util/TimingInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract beforeRequest(Lcom/gpc/aws/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;)V"
        }
    .end annotation
.end method
