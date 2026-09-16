.class public Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
.super Ljava/lang/Object;
.source "UpdateShardCountResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentShardCount:Ljava/lang/Integer;

.field private streamName:Ljava/lang/String;

.field private targetShardCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 258
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;

    if-nez v2, :cond_2

    return v1

    .line 260
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;

    .line 262
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

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

    .line 264
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 265
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 267
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

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

    .line 269
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 270
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 272
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

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

    .line 274
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 275
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getCurrentShardCount()Ljava/lang/Integer;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->currentShardCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetShardCount()Ljava/lang/Integer;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->targetShardCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 245
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setCurrentShardCount(Ljava/lang/Integer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->currentShardCount:Ljava/lang/Integer;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->streamName:Ljava/lang/String;

    return-void
.end method

.method public setTargetShardCount(Ljava/lang/Integer;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->targetShardCount:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CurrentShardCount: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getCurrentShardCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TargetShardCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->getTargetShardCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCurrentShardCount(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->currentShardCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->streamName:Ljava/lang/String;

    return-object p0
.end method

.method public withTargetShardCount(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;->targetShardCount:Ljava/lang/Integer;

    return-object p0
.end method
