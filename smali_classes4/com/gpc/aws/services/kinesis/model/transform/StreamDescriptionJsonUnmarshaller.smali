.class Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;
.super Ljava/lang/Object;
.source "StreamDescriptionJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesis/model/StreamDescription;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;
    .locals 1

    .line 86
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;

    .line 88
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    new-instance v1, Lcom/gpc/aws/services/kinesis/model/StreamDescription;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;-><init>()V

    .line 38
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 39
    :goto_0
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "StreamName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setStreamName(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "StreamARN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 46
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setStreamARN(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v3, "StreamStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setStreamStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v3, "Shards"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 52
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 54
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setShards(Ljava/util/Collection;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v3, "HasMoreShards"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 57
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setHasMoreShards(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 58
    :cond_5
    const-string v3, "RetentionPeriodHours"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 59
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setRetentionPeriodHours(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 61
    :cond_6
    const-string v3, "StreamCreationTimestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 62
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    move-result-object v2

    .line 63
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/Date;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setStreamCreationTimestamp(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 64
    :cond_7
    const-string v3, "EnhancedMonitoring"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 65
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 66
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 68
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setEnhancedMonitoring(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 69
    :cond_8
    const-string v3, "EncryptionType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 70
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 71
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setEncryptionType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_9
    const-string v3, "KeyId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 73
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 74
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/StreamDescription;->setKeyId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_a
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 79
    :cond_b
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->endObject()V

    return-object v1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;

    move-result-object p1

    return-object p1
.end method
