.class public Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetRecordsResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;
    .locals 1

    .line 60
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;

    .line 62
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;-><init>()V

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
    const-string v3, "Records"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 39
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/RecordJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/RecordJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 41
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;->setRecords(Ljava/util/Collection;)V

    goto :goto_0

    .line 42
    :cond_0
    const-string v3, "NextShardIterator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;->setNextShardIterator(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    const-string v3, "MillisBehindLatest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;->setMillisBehindLatest(Ljava/lang/Long;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 52
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;

    move-result-object p1

    return-object p1
.end method
