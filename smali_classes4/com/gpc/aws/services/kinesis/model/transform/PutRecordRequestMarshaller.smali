.class public Lcom/gpc/aws/services/kinesis/model/transform/PutRecordRequestMarshaller;
.super Ljava/lang/Object;
.source "PutRecordRequestMarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Marshaller<",
        "Lcom/gpc/aws/Request<",
        "Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;",
        ">;",
        "Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;",
            ")",
            "Lcom/gpc/aws/Request<",
            "Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 43
    new-instance v0, Lcom/gpc/aws/DefaultRequest;

    const-string v1, "AmazonKinesis"

    invoke-direct {v0, p1, v1}, Lcom/gpc/aws/DefaultRequest;-><init>(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 44
    const-string v1, "Kinesis_20131202.PutRecord"

    .line 45
    const-string v2, "X-Amz-Target"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/gpc/aws/http/HttpMethodName;->POST:Lcom/gpc/aws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setHttpMethod(Lcom/gpc/aws/http/HttpMethodName;)V

    .line 48
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 51
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 53
    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 54
    invoke-static {v3}, Lcom/gpc/aws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v4

    .line 56
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 58
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getStreamName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 59
    const-string v5, "StreamName"

    invoke-interface {v4, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getStreamName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getData()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 62
    const-string v5, "Data"

    invoke-interface {v4, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/nio/ByteBuffer;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getPartitionKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 65
    const-string v5, "PartitionKey"

    invoke-interface {v4, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getPartitionKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 68
    const-string v5, "ExplicitHashKey"

    invoke-interface {v4, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getSequenceNumberForOrdering()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 71
    const-string v5, "SequenceNumberForOrdering"

    invoke-interface {v4, v5}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getSequenceNumberForOrdering()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 74
    :cond_4
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 75
    invoke-interface {v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->flush()V

    .line 76
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 77
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 79
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 80
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setContent(Ljava/io/InputStream;)V

    .line 81
    const-string v1, "Content-Length"

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string p1, "Content-Encoding"

    const-string v1, "gzip"

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 85
    new-instance v0, Lcom/gpc/aws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 40
    :cond_5
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(...)"

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

    .line 36
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/Request;

    move-result-object p1

    return-object p1
.end method
