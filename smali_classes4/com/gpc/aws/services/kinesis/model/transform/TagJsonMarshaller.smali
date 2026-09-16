.class Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;
.super Ljava/lang/Object;
.source "TagJsonMarshaller.java"


# static fields
.field private static instance:Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;
    .locals 1

    .line 44
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;

    .line 46
    :cond_0
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;->instance:Lcom/gpc/aws/services/kinesis/model/transform/TagJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/Tag;Lcom/gpc/aws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "Key"

    invoke-interface {p2, v1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/Tag;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 35
    const-string v0, "Value"

    invoke-interface {p2, v0}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 38
    :cond_1
    invoke-interface {p2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    return-void
.end method
