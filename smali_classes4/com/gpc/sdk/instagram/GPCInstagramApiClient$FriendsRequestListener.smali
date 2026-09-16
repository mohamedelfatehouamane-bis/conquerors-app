.class public interface abstract Lcom/gpc/sdk/instagram/GPCInstagramApiClient$FriendsRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/instagram/GPCInstagramApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FriendsRequestListener"
.end annotation


# virtual methods
.method public abstract onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/instagram/models/GPCInstagramFriend;",
            ">;)V"
        }
    .end annotation
.end method
