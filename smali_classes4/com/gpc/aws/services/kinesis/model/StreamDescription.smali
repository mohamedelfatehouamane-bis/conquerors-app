.class public Lcom/gpc/aws/services/kinesis/model/StreamDescription;
.super Ljava/lang/Object;
.source "StreamDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private encryptionType:Ljava/lang/String;

.field private enhancedMonitoring:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private hasMoreShards:Ljava/lang/Boolean;

.field private keyId:Ljava/lang/String;

.field private retentionPeriodHours:Ljava/lang/Integer;

.field private shards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesis/model/Shard;",
            ">;"
        }
    .end annotation
.end field

.field private streamARN:Ljava/lang/String;

.field private streamCreationTimestamp:Ljava/util/Date;

.field private streamName:Ljava/lang/String;

.field private streamStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->shards:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->enhancedMonitoring:Ljava/util/List;

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

    .line 1594
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/StreamDescription;

    if-nez v2, :cond_2

    return v1

    .line 1596
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/StreamDescription;

    .line 1598
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

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

    .line 1600
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1601
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1603
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

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

    .line 1605
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1606
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1608
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

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

    .line 1610
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1611
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1613
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

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

    .line 1615
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1617
    :cond_12
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

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

    .line 1619
    :cond_15
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1620
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1622
    :cond_16
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 1624
    :cond_19
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1625
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1627
    :cond_1a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 1629
    :cond_1d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1630
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 1632
    :cond_1e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_f

    :cond_20
    const/4 v3, 0x0

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 1634
    :cond_21
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1635
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 1637
    :cond_22
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 1639
    :cond_25
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1640
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 1642
    :cond_26
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    const/4 v3, 0x1

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    :goto_13
    xor-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v1

    .line 1644
    :cond_29
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0
.end method

.method public getEncryptionType()Ljava/lang/String;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->encryptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getEnhancedMonitoring()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;",
            ">;"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->enhancedMonitoring:Ljava/util/List;

    return-object v0
.end method

.method public getHasMoreShards()Ljava/lang/Boolean;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->hasMoreShards:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRetentionPeriodHours()Ljava/lang/Integer;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->retentionPeriodHours:Ljava/lang/Integer;

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

    .line 716
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->shards:Ljava/util/List;

    return-object v0
.end method

.method public getStreamARN()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamARN:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamCreationTimestamp()Ljava/util/Date;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamCreationTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStatus()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1566
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1567
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1569
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1570
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1572
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1574
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1577
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    .line 1578
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1580
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1582
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1583
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public isHasMoreShards()Ljava/lang/Boolean;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->hasMoreShards:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)V
    .locals 0

    .line 1208
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionType(Ljava/lang/String;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setEnhancedMonitoring(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 971
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->enhancedMonitoring:Ljava/util/List;

    return-void

    .line 975
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->enhancedMonitoring:Ljava/util/List;

    return-void
.end method

.method public setHasMoreShards(Ljava/lang/Boolean;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->hasMoreShards:Ljava/lang/Boolean;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1431
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setRetentionPeriodHours(Ljava/lang/Integer;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->retentionPeriodHours:Ljava/lang/Integer;

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

    .line 730
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->shards:Ljava/util/List;

    return-void

    .line 734
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->shards:Ljava/util/List;

    return-void
.end method

.method public setStreamARN(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamARN:Ljava/lang/String;

    return-void
.end method

.method public setStreamCreationTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamCreationTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamName:Ljava/lang/String;

    return-void
.end method

.method public setStreamStatus(Lcom/gpc/aws/services/kinesis/model/StreamStatus;)V
    .locals 0

    .line 618
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamStatus:Ljava/lang/String;

    return-void
.end method

.method public setStreamStatus(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamARN: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamStatus: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Shards: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HasMoreShards: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "RetentionPeriodHours: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    :cond_5
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamCreationTimestamp: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EnhancedMonitoring: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    :cond_7
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EncryptionType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :cond_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 1258
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withEncryptionType(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withEnhancedMonitoring(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;",
            ">;)",
            "Lcom/gpc/aws/services/kinesis/model/StreamDescription;"
        }
    .end annotation

    .line 1021
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setEnhancedMonitoring(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withEnhancedMonitoring([Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 4

    .line 994
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->enhancedMonitoring:Ljava/util/List;

    .line 998
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 999
    iget-object v3, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->enhancedMonitoring:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withHasMoreShards(Ljava/lang/Boolean;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->hasMoreShards:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 1522
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withRetentionPeriodHours(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->retentionPeriodHours:Ljava/lang/Integer;

    return-object p0
.end method

.method public withShards(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesis/model/Shard;",
            ">;)",
            "Lcom/gpc/aws/services/kinesis/model/StreamDescription;"
        }
    .end annotation

    .line 776
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setShards(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withShards([Lcom/gpc/aws/services/kinesis/model/Shard;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 4

    .line 752
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->shards:Ljava/util/List;

    .line 755
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 756
    iget-object v3, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->shards:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withStreamARN(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamARN:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamCreationTimestamp(Ljava/util/Date;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamCreationTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamName:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamStatus(Lcom/gpc/aws/services/kinesis/model/StreamStatus;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 702
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamStatus(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->streamStatus:Ljava/lang/String;

    return-object p0
.end method
