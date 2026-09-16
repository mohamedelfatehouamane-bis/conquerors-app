.class public Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
.super Ljava/lang/Object;
.source "ListStreamsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hasMoreStreams:Ljava/lang/Boolean;

.field private streamNames:Ljava/util/List;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->streamNames:Ljava/util/List;

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

    .line 223
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;

    if-nez v2, :cond_2

    return v1

    .line 225
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;

    .line 227
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

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

    .line 229
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 230
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 232
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

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

    .line 234
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 235
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getHasMoreStreams()Ljava/lang/Boolean;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->hasMoreStreams:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStreamNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->streamNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 212
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isHasMoreStreams()Ljava/lang/Boolean;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->hasMoreStreams:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHasMoreStreams(Ljava/lang/Boolean;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->hasMoreStreams:Ljava/lang/Boolean;

    return-void
.end method

.method public setStreamNames(Ljava/util/Collection;)V
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

    .line 69
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->streamNames:Ljava/util/List;

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->streamNames:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StreamNames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HasMoreStreams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getHasMoreStreams()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withHasMoreStreams(Ljava/lang/Boolean;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->hasMoreStreams:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withStreamNames(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->setStreamNames(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withStreamNames([Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->getStreamNames()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->streamNames:Ljava/util/List;

    .line 96
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 97
    iget-object v3, p0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;->streamNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
