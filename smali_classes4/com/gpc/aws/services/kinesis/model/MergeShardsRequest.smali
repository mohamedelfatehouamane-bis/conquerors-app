.class public Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "MergeShardsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adjacentShardToMerge:Ljava/lang/String;

.field private shardToMerge:Ljava/lang/String;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/gpc/aws/AmazonWebServiceRequest;-><init>()V

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

    .line 331
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;

    if-nez v2, :cond_2

    return v1

    .line 333
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;

    .line 335
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

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

    .line 337
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 338
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 340
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

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

    .line 342
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 343
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 345
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

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

    .line 347
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 348
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getAdjacentShardToMerge()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->adjacentShardToMerge:Ljava/lang/String;

    return-object v0
.end method

.method public getShardToMerge()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->shardToMerge:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setAdjacentShardToMerge(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->adjacentShardToMerge:Ljava/lang/String;

    return-void
.end method

.method public setShardToMerge(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->shardToMerge:Ljava/lang/String;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ShardToMerge: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getShardToMerge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdjacentShardToMerge: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->getAdjacentShardToMerge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAdjacentShardToMerge(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->adjacentShardToMerge:Ljava/lang/String;

    return-object p0
.end method

.method public withShardToMerge(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->shardToMerge:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method
