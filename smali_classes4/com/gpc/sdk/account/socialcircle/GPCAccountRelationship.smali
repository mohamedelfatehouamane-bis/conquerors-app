.class public Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static relationship(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Ljava/lang/String;)Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;

    invoke-direct {v0}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->setRelationshipId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->setType(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V

    return-object v0
.end method


# virtual methods
.method public getRelationshipId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setRelationshipId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->b:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->c:Ljava/lang/String;

    return-void
.end method
