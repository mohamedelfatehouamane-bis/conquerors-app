.class Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;
.super Ljava/lang/Object;
.source "ShardJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;
    .locals 1

    .line 62
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;

    .line 64
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/Shard;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 30
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getShardId()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "ShardId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getParentShardId()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "ParentShardId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getAdjacentParentShardId()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "AdjacentParentShardId"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 43
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getHashKeyRange()Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v0

    .line 47
    const-string v1, "HashKeyRange"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 48
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/HashKeyRangeJsonMarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/HashKeyRangeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/gpc/aws/services/kinesis/model/transform/HashKeyRangeJsonMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/HashKeyRange;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Shard;->getSequenceNumberRange()Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object p1

    .line 52
    const-string v0, "SequenceNumberRange"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 53
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/SequenceNumberRangeJsonMarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/SequenceNumberRangeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/aws/services/kinesis/model/transform/SequenceNumberRangeJsonMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    .line 56
    :cond_4
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
