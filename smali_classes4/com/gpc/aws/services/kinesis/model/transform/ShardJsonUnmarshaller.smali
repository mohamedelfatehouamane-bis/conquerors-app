.class Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;
.super Ljava/lang/Object;
.source "ShardJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesis/model/Shard;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;
    .locals 1

    .line 66
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;

    .line 68
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/Shard;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    new-instance v1, Lcom/gpc/aws/services/kinesis/model/Shard;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/Shard;-><init>()V

    .line 37
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 38
    :goto_0
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 39
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v3, "ShardId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/Shard;->setShardId(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v3, "ParentShardId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/Shard;->setParentShardId(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "AdjacentParentShardId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 48
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/Shard;->setAdjacentParentShardId(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v3, "HashKeyRange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/HashKeyRangeJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/HashKeyRangeJsonUnmarshaller;

    move-result-object v2

    .line 51
    invoke-virtual {v2, p1}, Lcom/gpc/aws/services/kinesis/model/transform/HashKeyRangeJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/HashKeyRange;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/Shard;->setHashKeyRange(Lcom/gpc/aws/services/kinesis/model/HashKeyRange;)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v3, "SequenceNumberRange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/SequenceNumberRangeJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/SequenceNumberRangeJsonUnmarshaller;

    move-result-object v2

    .line 54
    invoke-virtual {v2, p1}, Lcom/gpc/aws/services/kinesis/model/transform/SequenceNumberRangeJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesis/model/Shard;->setSequenceNumberRange(Lcom/gpc/aws/services/kinesis/model/SequenceNumberRange;)V

    goto :goto_0

    .line 56
    :cond_5
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 59
    :cond_6
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/ShardJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/Shard;

    move-result-object p1

    return-object p1
.end method
