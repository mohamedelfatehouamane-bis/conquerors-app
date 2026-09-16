.class public Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;
.super Ljava/lang/Object;
.source "SequenceNumberRange.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private endingSequenceNumber:Ljava/lang/String;

.field private startingSequenceNumber:Ljava/lang/String;


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

    .line 203
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    if-nez v2, :cond_2

    return v1

    .line 205
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    .line 207
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

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

    .line 209
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 210
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 212
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

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

    .line 214
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 215
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getEndingSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->endingSequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStartingSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->startingSequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 192
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setEndingSequenceNumber(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->endingSequenceNumber:Ljava/lang/String;

    return-void
.end method

.method public setStartingSequenceNumber(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->startingSequenceNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StartingSequenceNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getStartingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EndingSequenceNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->getEndingSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEndingSequenceNumber(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->endingSequenceNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withStartingSequenceNumber(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;->startingSequenceNumber:Ljava/lang/String;

    return-object p0
.end method
