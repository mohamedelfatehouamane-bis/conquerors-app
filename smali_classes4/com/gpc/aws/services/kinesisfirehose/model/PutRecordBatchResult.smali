.class public Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
.super Ljava/lang/Object;
.source "PutRecordBatchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private encrypted:Ljava/lang/Boolean;

.field private failedPutCount:Ljava/lang/Integer;

.field private requestResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 320
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;

    if-nez v2, :cond_2

    return v1

    .line 322
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;

    .line 324
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

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

    .line 326
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 327
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 329
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

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

    .line 331
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 332
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 334
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

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

    .line 336
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 337
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getEncrypted()Ljava/lang/Boolean;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->encrypted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFailedPutCount()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->failedPutCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->requestResponses:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 306
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isEncrypted()Ljava/lang/Boolean;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->encrypted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEncrypted(Ljava/lang/Boolean;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->encrypted:Ljava/lang/Boolean;

    return-void
.end method

.method public setFailedPutCount(Ljava/lang/Integer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->failedPutCount:Ljava/lang/Integer;

    return-void
.end method

.method public setRequestResponses(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->requestResponses:Ljava/util/List;

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->requestResponses:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FailedPutCount: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Encrypted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestResponses: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncrypted(Ljava/lang/Boolean;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->encrypted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withFailedPutCount(Ljava/lang/Integer;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->failedPutCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withRequestResponses(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;",
            ">;)",
            "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->setRequestResponses(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withRequestResponses([Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->requestResponses:Ljava/util/List;

    .line 251
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 252
    iget-object v3, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->requestResponses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
