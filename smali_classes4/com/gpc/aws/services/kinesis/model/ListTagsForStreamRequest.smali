.class public Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "ListTagsForStreamRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exclusiveStartTagKey:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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

    .line 303
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;

    if-nez v2, :cond_2

    return v1

    .line 305
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;

    .line 307
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

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

    .line 309
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 310
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 312
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

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

    .line 314
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 315
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 317
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

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

    .line 319
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getExclusiveStartTagKey()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->exclusiveStartTagKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 291
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 292
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setExclusiveStartTagKey(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->exclusiveStartTagKey:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StreamName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ExclusiveStartTagKey: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getExclusiveStartTagKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Limit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExclusiveStartTagKey(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->exclusiveStartTagKey:Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method
