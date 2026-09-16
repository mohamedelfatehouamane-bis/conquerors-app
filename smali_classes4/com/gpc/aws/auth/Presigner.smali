.class public interface abstract Lcom/gpc/aws/auth/Presigner;
.super Ljava/lang/Object;
.source "Presigner.java"


# virtual methods
.method public abstract presignRequest(Lcom/gpc/aws/Request;Lcom/gpc/aws/auth/AWSCredentials;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/auth/AWSCredentials;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method
