.class Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;
.super Ljava/lang/Object;
.source "StreamDescriptionSummaryJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;
    .locals 1

    .line 90
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;

    .line 92
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionSummaryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamName()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "StreamName"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamARN()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "StreamARN"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamStatus()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "StreamStatus"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 43
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v0

    .line 47
    const-string v1, "RetentionPeriodHours"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 52
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v0

    .line 53
    const-string v1, "StreamCreationTimestamp"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 54
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 56
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 58
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v0

    .line 59
    const-string v1, "EnhancedMonitoring"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 60
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;

    if-eqz v1, :cond_5

    .line 63
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 67
    :cond_6
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 69
    :cond_7
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 70
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getEncryptionType()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "EncryptionType"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 72
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 74
    :cond_8
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getKeyId()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "KeyId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 79
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 80
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescriptionSummary;->getOpenShardCount()Ljava/lang/Integer;

    move-result-object p1

    .line 81
    const-string v0, "OpenShardCount"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {p2, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 84
    :cond_a
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
