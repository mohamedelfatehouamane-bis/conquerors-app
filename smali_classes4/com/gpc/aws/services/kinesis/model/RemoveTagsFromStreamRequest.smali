.class public Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "RemoveTagsFromStreamRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private streamName:Ljava/lang/String;

.field private tagKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/gpc/aws/AmazonWebServiceRequest;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->tagKeys:Ljava/util/List;

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

    .line 225
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;

    if-nez v2, :cond_2

    return v1

    .line 227
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;

    .line 229
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

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

    .line 231
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 232
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 234
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

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

    .line 236
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->tagKeys:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 214
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->streamName:Ljava/lang/String;

    return-void
.end method

.method public setTagKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->tagKeys:Ljava/util/List;

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->tagKeys:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StreamName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TagKeys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->streamName:Ljava/lang/String;

    return-object p0
.end method

.method public withTagKeys(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->setTagKeys(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withTagKeys([Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->getTagKeys()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->tagKeys:Ljava/util/List;

    .line 163
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 164
    iget-object v3, p0, Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;->tagKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
