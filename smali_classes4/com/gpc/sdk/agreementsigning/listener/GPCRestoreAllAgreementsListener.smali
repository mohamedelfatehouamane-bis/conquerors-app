.class public interface abstract Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation
.end method
