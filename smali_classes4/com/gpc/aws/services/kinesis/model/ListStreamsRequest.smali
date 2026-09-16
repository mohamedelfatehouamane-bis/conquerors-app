.class public Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "ListStreamsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exclusiveStartStreamName:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
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

    .line 219
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;

    if-nez v2, :cond_2

    return v1

    .line 221
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;

    .line 223
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

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

    .line 225
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 227
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 228
    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

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

    .line 230
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 231
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getExclusiveStartStreamName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->exclusiveStartStreamName:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 207
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setExclusiveStartStreamName(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->exclusiveStartStreamName:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Limit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExclusiveStartStreamName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->getExclusiveStartStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExclusiveStartStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->exclusiveStartStreamName:Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method
