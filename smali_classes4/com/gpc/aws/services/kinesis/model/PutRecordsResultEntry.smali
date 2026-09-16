.class public Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;
.super Ljava/lang/Object;
.source "PutRecordsResultEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private sequenceNumber:Ljava/lang/String;

.field private shardId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
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

    .line 364
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;

    if-nez v2, :cond_2

    return v1

    .line 366
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;

    .line 368
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

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

    .line 370
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 371
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 373
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

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

    .line 375
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 377
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

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

    .line 379
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 380
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 382
    :cond_e
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

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

    .line 384
    :cond_11
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 385
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->sequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getShardId()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->shardId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 349
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 350
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 351
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->sequenceNumber:Ljava/lang/String;

    return-void
.end method

.method public setShardId(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->shardId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SequenceNumber: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ShardId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ErrorCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withErrorCode(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public withErrorMessage(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public withSequenceNumber(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->sequenceNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withShardId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->shardId:Ljava/lang/String;

    return-object p0
.end method
