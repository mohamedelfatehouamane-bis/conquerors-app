.class public interface abstract Lcom/gpc/sdk/translate/GPCTranslatorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailed(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTranslated(Lcom/gpc/sdk/translate/GPCTranslationSet;)V
.end method
