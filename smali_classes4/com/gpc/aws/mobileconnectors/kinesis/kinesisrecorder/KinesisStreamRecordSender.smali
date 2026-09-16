.class Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;
.super Ljava/lang/Object;
.source "KinesisStreamRecordSender.java"

# interfaces
.implements Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;


# instance fields
.field private final client:Lcom/gpc/aws/services/kinesis/AmazonKinesis;

.field private final partitionKey:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/services/kinesis/AmazonKinesis;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;-><init>(Lcom/gpc/aws/services/kinesis/AmazonKinesis;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/services/kinesis/AmazonKinesis;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->client:Lcom/gpc/aws/services/kinesis/AmazonKinesis;

    .line 63
    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->userAgent:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->partitionKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isRecoverable(Lcom/gpc/aws/AmazonClientException;)Z
    .locals 3

    .line 103
    instance-of v0, p1, Lcom/gpc/aws/AmazonServiceException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Lcom/gpc/aws/AmazonServiceException;

    invoke-virtual {p1}, Lcom/gpc/aws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    .line 105
    const-string v0, "InternalFailure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ServiceUnavailable"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Throttling"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ProvisionedThroughputExceededException"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 111
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
    .locals 5
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

    if-eqz p2, :cond_5

    .line 69
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 73
    :cond_0
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->setStreamName(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 77
    iget-object v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->partitionKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/gpc/aws/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->partitionKey:Ljava/lang/String;

    .line 79
    :goto_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;-><init>()V

    .line 80
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->setData(Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-virtual {v4, v3}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;->setPartitionKey(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->setRecords(Ljava/util/Collection;)V

    .line 85
    invoke-virtual {v0}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->getRequestClientOptions()Lcom/gpc/aws/RequestClientOptions;

    move-result-object p1

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gpc/aws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;->client:Lcom/gpc/aws/services/kinesis/AmazonKinesis;

    invoke-interface {p1, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesis;->putRecords(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;->getFailedRecordCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 92
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;

    invoke-virtual {v3}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 94
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1

    .line 70
    :cond_5
    :goto_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method
