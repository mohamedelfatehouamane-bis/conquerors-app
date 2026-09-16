.class public interface abstract Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCAccountRelationshipFinderListener"
.end annotation


# virtual methods
.method public abstract onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;",
            ">;)V"
        }
    .end annotation
.end method
