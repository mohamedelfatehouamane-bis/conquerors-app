.class Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;
.super Ljava/lang/Object;
.source "EnhancedMetricsJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;
    .locals 1

    .line 46
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;

    .line 48
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/EnhancedMetricsJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;->getShardLevelMetrics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/EnhancedMetrics;->getShardLevelMetrics()Ljava/util/List;

    move-result-object p1

    .line 31
    const-string v0, "ShardLevelMetrics"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 40
    :cond_2
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
