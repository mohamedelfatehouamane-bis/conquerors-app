.class public Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetShardIteratorResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;
    .locals 1

    .line 51
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;

    .line 53
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "ShardIterator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;->setShardIterator(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->endObject()V

    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;

    move-result-object p1

    return-object p1
.end method
