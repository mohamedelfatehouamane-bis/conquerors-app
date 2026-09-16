.class public Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "DescribeStreamRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exclusiveStartShardId:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
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

    .line 307
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;

    if-nez v2, :cond_2

    return v1

    .line 309
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;

    .line 311
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

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

    .line 313
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 314
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 316
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

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

    .line 318
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 320
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

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

    .line 322
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 323
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getExclusiveStartShardId()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->exclusiveStartShardId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 292
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 293
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 296
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setExclusiveStartShardId(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->exclusiveStartShardId:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Limit: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExclusiveStartShardId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->getExclusiveStartShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExclusiveStartShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->exclusiveStartShardId:Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method
