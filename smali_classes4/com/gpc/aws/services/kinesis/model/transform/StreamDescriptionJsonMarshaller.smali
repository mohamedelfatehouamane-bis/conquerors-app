.class Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;
.super Ljava/lang/Object;
.source "StreamDescriptionJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;
    .locals 1

    .line 101
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;

    .line 103
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/StreamDescription;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 31
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamName()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "StreamName"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 34
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamARN()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "StreamARN"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 39
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamStatus()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "StreamStatus"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 44
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getShards()Ljava/util/List;

    move-result-object v0

    .line 48
    const-string v1, "Shards"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 49
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/aws/services/kinesis/model/Shard;

    if-eqz v1, :cond_3

    .line 52
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/Shard;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 55
    :cond_4
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 57
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 58
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getHasMoreShards()Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    const-string v1, "HasMoreShards"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Z)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 62
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 63
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getRetentionPeriodHours()Ljava/lang/Integer;

    move-result-object v0

    .line 64
    const-string v1, "RetentionPeriodHours"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 68
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getStreamCreationTimestamp()Ljava/util/Date;

    move-result-object v0

    .line 69
    const-string v1, "StreamCreationTimestamp"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 70
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 72
    :cond_8
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 74
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEnhancedMonitoring()Ljava/util/List;

    move-result-object v0

    .line 75
    const-string v1, "EnhancedMonitoring"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;

    if-eqz v1, :cond_9

    .line 79
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 83
    :cond_a
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 85
    :cond_b
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 86
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getEncryptionType()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "EncryptionType"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 88
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 90
    :cond_c
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 91
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->getKeyId()Ljava/lang/String;

    move-result-object p1

    .line 92
    const-string v0, "KeyId"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 93
    invoke-interface {p2, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 95
    :cond_d
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
