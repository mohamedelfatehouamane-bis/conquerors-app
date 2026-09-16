.class public Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "GetShardIteratorRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private shardId:Ljava/lang/String;

.field private shardIteratorType:Ljava/lang/String;

.field private startingSequenceNumber:Ljava/lang/String;

.field private streamName:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
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

    .line 997
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;

    if-nez v2, :cond_2

    return v1

    .line 999
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;

    .line 1001
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

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

    .line 1003
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1004
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1006
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

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

    .line 1008
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1010
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

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

    .line 1012
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1013
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1015
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

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

    .line 1017
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1018
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1020
    :cond_12
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

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

    .line 1022
    :cond_15
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1023
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getShardId()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardId:Ljava/lang/String;

    return-object v0
.end method

.method public getShardIteratorType()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardIteratorType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartingSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->startingSequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 978
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 979
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 981
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 984
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v3

    .line 985
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 986
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setShardId(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardId:Ljava/lang/String;

    return-void
.end method

.method public setShardIteratorType(Lcom/gpc/aws/services/kinesis/model/ShardIteratorType;)V
    .locals 0

    .line 685
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ShardIteratorType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardIteratorType:Ljava/lang/String;

    return-void
.end method

.method public setShardIteratorType(Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardIteratorType:Ljava/lang/String;

    return-void
.end method

.method public setStartingSequenceNumber(Ljava/lang/String;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->startingSequenceNumber:Ljava/lang/String;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ShardId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ShardIteratorType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getShardIteratorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StartingSequenceNumber: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timestamp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardId:Ljava/lang/String;

    return-object p0
.end method

.method public withShardIteratorType(Lcom/gpc/aws/services/kinesis/model/ShardIteratorType;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
    .locals 0

    .line 788
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ShardIteratorType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardIteratorType:Ljava/lang/String;

    return-object p0
.end method

.method public withShardIteratorType(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->shardIteratorType:Ljava/lang/String;

    return-object p0
.end method

.method public withStartingSequenceNumber(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->startingSequenceNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method

.method public withTimestamp(Ljava/util/Date;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->timestamp:Ljava/util/Date;

    return-object p0
.end method
