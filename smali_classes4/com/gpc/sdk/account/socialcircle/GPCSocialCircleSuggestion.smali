.class public Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionByNetwork(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;

    .line 3
    invoke-static {v1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    move-result-object v2

    iget-object v2, v2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setConnections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->b:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->a:Ljava/lang/String;

    return-void
.end method

.method public sourceNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;

    .line 4
    invoke-static {v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
