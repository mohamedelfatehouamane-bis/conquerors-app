.class Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;
.super Ljava/lang/Object;
.source "PutRecordsResultEntryJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;
    .locals 1

    .line 55
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;

    .line 57
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultEntryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getSequenceNumber()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "SequenceNumber"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getShardId()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "ShardId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "ErrorCode"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsResultEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 46
    const-string v0, "ErrorMessage"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 49
    :cond_3
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
