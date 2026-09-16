.class public Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestMarshaller;
.super Ljava/lang/Object;
.source "PutRecordsRequestMarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Marshaller<",
        "Lcom/gpc/aws/Request<",
        "Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;",
        ">;",
        "Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;)Lcom/gpc/aws/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;",
            ")",
            "Lcom/gpc/aws/Request<",
            "Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 47
    new-instance v0, Lcom/gpc/aws/DefaultRequest;

    const-string v1, "AmazonKinesis"

    invoke-direct {v0, p1, v1}, Lcom/gpc/aws/DefaultRequest;-><init>(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 49
    const-string v1, "Kinesis_20131202.PutRecords"

    .line 50
    const-string v2, "X-Amz-Target"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/gpc/aws/http/HttpMethodName;->POST:Lcom/gpc/aws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setHttpMethod(Lcom/gpc/aws/http/HttpMethodName;)V

    .line 53
    const-string v1, "/"

    .line 54
    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 58
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 59
    invoke-static {v3}, Lcom/gpc/aws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v4

    .line 60
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 62
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->getRecords()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->getRecords()Ljava/util/List;

    move-result-object v5

    .line 64
    const-string v6, "Records"

    invoke-interface {v4, v6}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;

    if-eqz v6, :cond_0

    .line 68
    invoke-static {}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestEntryJsonMarshaller;->getInstance()Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestEntryJsonMarshaller;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestEntryJsonMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequestEntry;Lcom/gpc/aws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->getStreamName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;->getStreamName()Ljava/lang/String;

    move-result-object p1

    .line 76
    const-string v5, "StreamName"

    invoke-interface {v4, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {v4, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 80
    :cond_3
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 81
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->flush()V

    .line 82
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 83
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 85
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 86
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setContent(Ljava/io/InputStream;)V

    .line 87
    const-string v1, "Content-Length"

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p1, "Content-Encoding"

    const-string v1, "gzip"

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {v0}, Lcom/gpc/aws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 94
    const-string p1, "application/x-amz-json-1.1"

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 90
    new-instance v0, Lcom/gpc/aws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 43
    :cond_5
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(PutRecordsRequest)"

    invoke-direct {p1, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1

    return-object p1
.end method
