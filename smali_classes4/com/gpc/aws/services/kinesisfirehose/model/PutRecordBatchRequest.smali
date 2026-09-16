.class public Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "PutRecordBatchRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deliveryStreamName:Ljava/lang/String;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
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

    .line 296
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;

    if-nez v2, :cond_2

    return v1

    .line 298
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;

    .line 300
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

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

    .line 302
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 303
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 305
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

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

    .line 307
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getDeliveryStreamName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->deliveryStreamName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/Record;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->records:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 285
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setDeliveryStreamName(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->deliveryStreamName:Ljava/lang/String;

    return-void
.end method

.method public setRecords(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/Record;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->records:Ljava/util/List;

    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->records:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeliveryStreamName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getDeliveryStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Records: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDeliveryStreamName(Ljava/lang/String;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->deliveryStreamName:Ljava/lang/String;

    return-object p0
.end method

.method public withRecords(Ljava/util/Collection;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/gpc/aws/services/kinesisfirehose/model/Record;",
            ">;)",
            "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->setRecords(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withRecords([Lcom/gpc/aws/services/kinesisfirehose/model/Record;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRecords()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->records:Ljava/util/List;

    .line 234
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 235
    iget-object v3, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
