.class public Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
.super Ljava/lang/Object;
.source "ListShardsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextToken:Ljava/lang/String;

.field private shards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesis/model/Shard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->shards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 362
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;

    if-nez v2, :cond_2

    return v1

    .line 364
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;

    .line 366
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 368
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 370
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 372
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 373
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getShards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesis/model/Shard;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->shards:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 350
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 351
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->nextToken:Ljava/lang/String;

    return-void
.end method

.method public setShards(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesis/model/Shard;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->shards:Ljava/util/List;

    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->shards:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shards: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NextToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->nextToken:Ljava/lang/String;

    return-object p0
.end method

.method public withShards(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesis/model/Shard;",
            ">;)",
            "Lcom/gpc/aws/services/kinesis/model/ListShardsResult;"
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->setShards(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withShards([Lcom/gpc/aws/services/kinesis/model/Shard;)Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->getShards()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->shards:Ljava/util/List;

    .line 130
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 131
    iget-object v3, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;->shards:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
