.class public Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "DescribeStreamResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;
    .locals 1

    .line 53
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;

    .line 55
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 35
    :goto_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "StreamDescription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lcom/gpc/aws/services/kinesis/model/transform/StreamDescriptionJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/StreamDescription;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;->setStreamDescription(Lcom/gpc/aws/services/kinesis/model/StreamDescription;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 45
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

    .line 27
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;

    move-result-object p1

    return-object p1
.end method
