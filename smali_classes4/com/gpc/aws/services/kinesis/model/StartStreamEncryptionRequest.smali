.class public Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "StartStreamEncryptionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private encryptionType:Ljava/lang/String;

.field private keyId:Ljava/lang/String;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
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

    .line 579
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;

    if-nez v2, :cond_2

    return v1

    .line 581
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;

    .line 583
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

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

    .line 585
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 586
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 588
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

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

    .line 590
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 591
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 593
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

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

    .line 595
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getEncryptionType()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->encryptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 565
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 567
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 568
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)V
    .locals 0

    .line 248
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionType(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->encryptionType:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EncryptionType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getEncryptionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptionType(Lcom/gpc/aws/services/kinesis/model/EncryptionType;)Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;
    .locals 0

    .line 271
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EncryptionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withEncryptionType(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->encryptionType:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method
