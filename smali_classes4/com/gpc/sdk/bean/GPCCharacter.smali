.class public Lcom/gpc/sdk/bean/GPCCharacter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private charId:Ljava/lang/String;

.field private charName:Ljava/lang/String;

.field private level:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCCharacter;->charId:Ljava/lang/String;

    return-object v0
.end method

.method public getCharName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCCharacter;->charName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCCharacter;->level:Ljava/lang/String;

    return-object v0
.end method

.method public setCharId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCCharacter;->charId:Ljava/lang/String;

    return-void
.end method

.method public setCharName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCCharacter;->charName:Ljava/lang/String;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCCharacter;->level:Ljava/lang/String;

    return-void
.end method
