.class public abstract Lcom/gpc/aws/handlers/AbstractRequestHandler;
.super Ljava/lang/Object;
.source "AbstractRequestHandler.java"

# interfaces
.implements Lcom/gpc/aws/handlers/RequestHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterError(Lcom/gpc/aws/Request;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public afterResponse(Lcom/gpc/aws/Request;Ljava/lang/Object;Lcom/gpc/aws/util/TimingInfo;)V
    .locals 0
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

    return-void
.end method

.method public beforeRequest(Lcom/gpc/aws/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
