.class public Lcom/gpc/aws/services/kinesis/model/Shard;
.super Ljava/lang/Object;
.source "Shard.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adjacentParentShardId:Ljava/lang/String;

.field private hashKeyRange:Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

.field private parentShardId:Ljava/lang/String;

.field private sequenceNumberRange:Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

.field private shardId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 394
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/Shard;

    if-nez v2, :cond_2

    return v1

    .line 396
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/Shard;

    .line 398
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

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

    .line 400
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 402
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

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

    .line 404
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 405
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 407
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 409
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 410
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 412
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 414
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 415
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/aws/services/kinesis/model/HashKeyRange;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 417
    :cond_12
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 419
    :cond_15
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 420
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getAdjacentParentShardId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->adjacentParentShardId:Ljava/lang/String;

    return-object v0
.end method

.method public getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->hashKeyRange:Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    return-object v0
.end method

.method public getParentShardId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->parentShardId:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->sequenceNumberRange:Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    return-object v0
.end method

.method public getShardId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->shardId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 374
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 376
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/aws/services/kinesis/model/HashKeyRange;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 383
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setAdjacentParentShardId(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->adjacentParentShardId:Ljava/lang/String;

    return-void
.end method

.method public setHashKeyRange(Lcom/gpc/aws/services/kinesis/model/HashKeyRange;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->hashKeyRange:Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    return-void
.end method

.method public setParentShardId(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->parentShardId:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumberRange(Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->sequenceNumberRange:Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    return-void
.end method

.method public setShardId(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->shardId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ShardId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ParentShardId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AdjacentParentShardId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HashKeyRange: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SequenceNumberRange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAdjacentParentShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/Shard;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->adjacentParentShardId:Ljava/lang/String;

    return-object p0
.end method

.method public withHashKeyRange(Lcom/gpc/aws/services/kinesis/model/HashKeyRange;)Lcom/gpc/aws/services/kinesis/model/Shard;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->hashKeyRange:Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    return-object p0
.end method

.method public withParentShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/Shard;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->parentShardId:Ljava/lang/String;

    return-object p0
.end method

.method public withSequenceNumberRange(Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;)Lcom/gpc/aws/services/kinesis/model/Shard;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->sequenceNumberRange:Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    return-object p0
.end method

.method public withShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/Shard;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Shard;->shardId:Ljava/lang/String;

    return-object p0
.end method
