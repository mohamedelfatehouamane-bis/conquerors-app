.class Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;
.super Ljava/lang/Object;
.source "RecordJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesisfirehose/model/Record;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;
    .locals 1

    .line 52
    sget-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;

    .line 54
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesisfirehose/model/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance v1, Lcom/gpc/aws/services/kinesisfirehose/model/Record;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesisfirehose/model/Record;-><init>()V

    .line 35
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 36
    :goto_0
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/gpc/aws/services/kinesisfirehose/model/Record;->setData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 45
    :cond_2
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

    .line 26
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/RecordJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesisfirehose/model/Record;

    move-result-object p1

    return-object p1
.end method
