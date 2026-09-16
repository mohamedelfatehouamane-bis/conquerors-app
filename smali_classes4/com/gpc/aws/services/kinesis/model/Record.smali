.class public Lcom/gpc/aws/services/kinesis/model/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private approximateArrivalTimestamp:Ljava/util/Date;

.field private data:Ljava/nio/ByteBuffer;

.field private encryptionType:Ljava/lang/String;

.field private partitionKey:Ljava/lang/String;

.field private sequenceNumber:Ljava/lang/String;


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

    .line 622
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/Record;

    if-nez v2, :cond_2

    return v1

    .line 624
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/Record;

    .line 626
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

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

    .line 628
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 629
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 631
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 632
    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

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

    .line 634
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 635
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v2

    .line 636
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v3

    .line 635
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 638
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

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

    .line 640
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 642
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

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

    .line 644
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 645
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 647
    :cond_12
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

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

    .line 649
    :cond_15
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 650
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getApproximateArrivalTimestamp()Ljava/util/Date;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Record;->approximateArrivalTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Record;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getEncryptionType()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Record;->encryptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Record;->partitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/Record;->sequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 602
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 605
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 607
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 609
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 611
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setApproximateArrivalTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->approximateArrivalTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)V
    .locals 0

    .line 517
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionType(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->partitionKey:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->sequenceNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SequenceNumber: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ApproximateArrivalTimestamp: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getApproximateArrivalTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Data: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PartitionKey: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getPartitionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EncryptionType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/Record;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withApproximateArrivalTimestamp(Ljava/util/Date;)Lcom/gpc/aws/services/kinesis/model/Record;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->approximateArrivalTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public withData(Ljava/nio/ByteBuffer;)Lcom/gpc/aws/services/kinesis/model/Record;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->data:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)Lcom/gpc/aws/services/kinesis/model/Record;
    .locals 0

    .line 567
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withEncryptionType(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/Record;
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withPartitionKey(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/Record;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->partitionKey:Ljava/lang/String;

    return-object p0
.end method

.method public withSequenceNumber(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/Record;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/Record;->sequenceNumber:Ljava/lang/String;

    return-object p0
.end method
