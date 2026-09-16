.class public interface abstract Lcom/gpc/aws/auth/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# virtual methods
.method public abstract sign(Lcom/gpc/aws/Request;Lcom/gpc/aws/auth/AWSCredentials;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation
.end method
