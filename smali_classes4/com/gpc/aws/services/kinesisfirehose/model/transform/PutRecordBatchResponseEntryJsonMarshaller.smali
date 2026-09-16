.class Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;
.super Ljava/lang/Object;
.source "PutRecordBatchResponseEntryJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;
    .locals 1

    .line 50
    sget-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;

    .line 52
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "RecordId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "ErrorCode"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 41
    const-string v0, "ErrorMessage"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 44
    :cond_2
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
