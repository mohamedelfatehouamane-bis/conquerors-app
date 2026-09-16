.class public Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;
.super Ljava/lang/Object;
.source "PutRecordsRequestEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private explicitHashKey:Ljava/lang/String;

.field private partitionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
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

    .line 348
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;

    if-nez v2, :cond_2

    return v1

    .line 350
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;

    .line 352
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

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

    .line 354
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 356
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

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

    .line 358
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 359
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 361
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

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

    .line 363
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 364
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getExplicitHashKey()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->explicitHashKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->partitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setExplicitHashKey(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->explicitHashKey:Ljava/lang/String;

    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->partitionKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Data: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ExplicitHashKey: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PartitionKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withData(Ljava/nio/ByteBuffer;)Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->data:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withExplicitHashKey(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->explicitHashKey:Ljava/lang/String;

    return-object p0
.end method

.method public withPartitionKey(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->partitionKey:Ljava/lang/String;

    return-object p0
.end method
