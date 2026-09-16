.class public Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
.super Ljava/lang/Object;
.source "StreamDescriptionSummary.java"

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

.field private keyId:Ljava/lang/String;

.field private openShardCount:Ljava/lang/Integer;

.field private retentionPeriodHours:Ljava/lang/Integer;

.field private streamARN:Ljava/lang/String;

.field private streamCreationTimestamp:Ljava/util/Date;

.field private streamName:Ljava/lang/String;

.field private streamStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->enhancedMonitoring:Ljava/util/List;

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

    .line 1478
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;

    if-nez v2, :cond_2

    return v1

    .line 1480
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;

    .line 1482
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

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

    .line 1484
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1485
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1487
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

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

    .line 1489
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1490
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1492
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

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

    .line 1494
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1495
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1497
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

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

    .line 1499
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1500
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1502
    :cond_12
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

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

    .line 1504
    :cond_15
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1505
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1507
    :cond_16
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

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

    .line 1509
    :cond_19
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1510
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1512
    :cond_1a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

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

    .line 1514
    :cond_1d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1515
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 1517
    :cond_1e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

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

    .line 1519
    :cond_21
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 1521
    :cond_22
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

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

    .line 1523
    :cond_25
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1524
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public getEncryptionType()Ljava/lang/String;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->encryptionType:Ljava/lang/String;

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

    .line 809
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->enhancedMonitoring:Ljava/util/List;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenShardCount()Ljava/lang/Integer;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->openShardCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRetentionPeriodHours()Ljava/lang/Integer;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->retentionPeriodHours:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStreamARN()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamARN:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamCreationTimestamp()Ljava/util/Date;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamCreationTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStatus()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1451
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1452
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1454
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1456
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1459
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    .line 1460
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1462
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1464
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1465
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1467
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public setEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)V
    .locals 0

    .line 1045
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionType(Ljava/lang/String;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->encryptionType:Ljava/lang/String;

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

    .line 824
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->enhancedMonitoring:Ljava/util/List;

    return-void

    .line 828
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->enhancedMonitoring:Ljava/util/List;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setOpenShardCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->openShardCount:Ljava/lang/Integer;

    return-void
.end method

.method public setRetentionPeriodHours(Ljava/lang/Integer;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->retentionPeriodHours:Ljava/lang/Integer;

    return-void
.end method

.method public setStreamARN(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamARN:Ljava/lang/String;

    return-void
.end method

.method public setStreamCreationTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamCreationTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamName:Ljava/lang/String;

    return-void
.end method

.method public setStreamStatus(Lcom/gpc/aws/services/kinesis/model/StreamStatus;)V
    .locals 0

    .line 610
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamStatus:Ljava/lang/String;

    return-void
.end method

.method public setStreamStatus(Ljava/lang/String;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamARN: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamStatus: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "RetentionPeriodHours: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamCreationTimestamp: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EnhancedMonitoring: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    :cond_5
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EncryptionType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    :cond_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    :cond_7
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenShardCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 1091
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withEncryptionType(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withEnhancedMonitoring(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;",
            ">;)",
            "Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;"
        }
    .end annotation

    .line 874
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->setEnhancedMonitoring(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withEnhancedMonitoring([Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 4

    .line 847
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->enhancedMonitoring:Ljava/util/List;

    .line 851
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 852
    iget-object v3, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->enhancedMonitoring:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 1355
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withOpenShardCount(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 1409
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->openShardCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withRetentionPeriodHours(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->retentionPeriodHours:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStreamARN(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamARN:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamCreationTimestamp(Ljava/util/Date;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamCreationTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamName:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamStatus(Lcom/gpc/aws/services/kinesis/model/StreamStatus;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 694
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamStatus(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->streamStatus:Ljava/lang/String;

    return-object p0
.end method
