.class public Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "ListShardsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exclusiveStartShardId:Ljava/lang/String;

.field private maxResults:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;

.field private streamCreationTimestamp:Ljava/util/Date;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
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

    .line 831
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;

    if-nez v2, :cond_2

    return v1

    .line 833
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;

    .line 835
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

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

    .line 837
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 838
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 840
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

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

    .line 842
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 843
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 845
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

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

    .line 847
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 848
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 850
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

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

    .line 852
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 853
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 855
    :cond_12
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

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

    .line 857
    :cond_15
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 858
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getExclusiveStartShardId()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->exclusiveStartShardId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Integer;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamCreationTimestamp()Ljava/util/Date;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->streamCreationTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 811
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 812
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 815
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 816
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 819
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setExclusiveStartShardId(Ljava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->exclusiveStartShardId:Ljava/lang/String;

    return-void
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->maxResults:Ljava/lang/Integer;

    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->nextToken:Ljava/lang/String;

    return-void
.end method

.method public setStreamCreationTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->streamCreationTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NextToken: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ExclusiveStartShardId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MaxResults: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StreamCreationTimestamp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExclusiveStartShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->exclusiveStartShardId:Ljava/lang/String;

    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->maxResults:Ljava/lang/Integer;

    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->nextToken:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamCreationTimestamp(Ljava/util/Date;)Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->streamCreationTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method
