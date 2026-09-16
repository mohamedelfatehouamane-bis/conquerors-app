.class public interface abstract Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V
.end method
