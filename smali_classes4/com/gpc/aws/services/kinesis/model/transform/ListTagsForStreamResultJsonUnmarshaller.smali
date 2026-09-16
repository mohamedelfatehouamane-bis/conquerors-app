.class public Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "ListTagsForStreamResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;
    .locals 1

    .line 57
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;

    .line 59
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginObject()V

    .line 35
    :goto_0
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "Tags"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    new-instance v2, Lcom/gpc/aws/transform/ListUnmarshaller;

    .line 39
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/TagJsonUnmarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/TagJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/aws/transform/ListUnmarshaller;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 41
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;->setTags(Ljava/util/Collection;)V

    goto :goto_0

    .line 42
    :cond_0
    const-string v3, "HasMoreTags"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-static {}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;->setHasMoreTags(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v1}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 49
    :cond_2
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

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;

    move-result-object p1

    return-object p1
.end method
