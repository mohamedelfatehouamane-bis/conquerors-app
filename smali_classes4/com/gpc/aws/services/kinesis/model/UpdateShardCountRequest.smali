.class public Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "UpdateShardCountRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private scalingType:Ljava/lang/String;

.field private streamName:Ljava/lang/String;

.field private targetShardCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
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

    .line 374
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;

    if-nez v2, :cond_2

    return v1

    .line 376
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;

    .line 378
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

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

    .line 380
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 381
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 383
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

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

    .line 385
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 386
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 388
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

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

    .line 390
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 391
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getScalingType()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->scalingType:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetShardCount()Ljava/lang/Integer;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->targetShardCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 359
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 361
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 363
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setScalingType(Lcom/gpc/aws/services/kinesis/model/ScalingType;)V
    .locals 0

    .line 306
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ScalingType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->scalingType:Ljava/lang/String;

    return-void
.end method

.method public setScalingType(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->scalingType:Ljava/lang/String;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public setTargetShardCount(Ljava/lang/Integer;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->targetShardCount:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TargetShardCount: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScalingType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->getScalingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withScalingType(Lcom/gpc/aws/services/kinesis/model/ScalingType;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;
    .locals 0

    .line 329
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ScalingType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->scalingType:Ljava/lang/String;

    return-object p0
.end method

.method public withScalingType(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->scalingType:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method

.method public withTargetShardCount(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;->targetShardCount:Ljava/lang/Integer;

    return-object p0
.end method
