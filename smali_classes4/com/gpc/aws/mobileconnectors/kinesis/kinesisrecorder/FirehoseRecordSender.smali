.class Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;
.super Ljava/lang/Object;
.source "FirehoseRecordSender.java"

# interfaces
.implements Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;


# instance fields
.field private final client:Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;->client:Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;

    .line 49
    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isRecoverable(Lcom/gpc/aws/AmazonClientException;)Z
    .locals 3

    .line 84
    instance-of v0, p1, Lcom/gpc/aws/AmazonServiceException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 85
    check-cast p1, Lcom/gpc/aws/AmazonServiceException;

    invoke-virtual {p1}, Lcom/gpc/aws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    .line 86
    const-string v0, "InternalFailure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ServiceUnavailable"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Throttling"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ServiceUnavailableException"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/gpc/aws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public sendBatch(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 54
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 58
    :cond_0
    new-instance v0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->setDeliveryStreamName(Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 62
    new-instance v3, Lcom/gpc/aws/services/kinesisfirehose/model/Record;

    invoke-direct {v3}, Lcom/gpc/aws/services/kinesisfirehose/model/Record;-><init>()V

    .line 63
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/gpc/aws/services/kinesisfirehose/model/Record;->setData(Ljava/nio/ByteBuffer;)V

    .line 64
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->setRecords(Ljava/util/Collection;)V

    .line 67
    invoke-virtual {v0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;->getRequestClientOptions()Lcom/gpc/aws/RequestClientOptions;

    move-result-object p1

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gpc/aws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;->client:Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;

    invoke-interface {p1, v0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;->putRecordBatch(Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getFailedPutCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->getRequestResponses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;

    invoke-virtual {v3}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1

    .line 55
    :cond_4
    :goto_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method
