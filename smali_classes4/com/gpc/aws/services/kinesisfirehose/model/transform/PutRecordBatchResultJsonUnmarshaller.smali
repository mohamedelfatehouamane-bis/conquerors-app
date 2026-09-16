.class public Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "PutRecordBatchResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;
    .locals 1

    .line 61
    sget-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;

    .line 63
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 35
    :goto_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "FailedPutCount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->setFailedPutCount(Ljava/lang/Integer;)V

    goto :goto_0

    .line 40
    :cond_0
    const-string v3, "Encrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->setEncrypted(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v3, "RequestResponses"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 46
    invoke-static {}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResponseEntryJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 48
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;->setRequestResponses(Ljava/util/Collection;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 53
    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;

    move-result-object p1

    return-object p1
.end method
