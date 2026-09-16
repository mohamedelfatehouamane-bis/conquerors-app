.class public Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;
.super Ljava/lang/Object;
.source "UntagResourceRequestMarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Marshaller<",
        "Lcom/gpc/aws/Request<",
        "Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;",
        ">;",
        "Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/gpc/aws/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;",
            ")",
            "Lcom/gpc/aws/Request<",
            "Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 49
    new-instance v0, Lcom/gpc/aws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentity"

    invoke-direct {v0, p1, v1}, Lcom/gpc/aws/DefaultRequest;-><init>(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 51
    const-string v1, "AWSCognitoIdentityService.UntagResource"

    .line 52
    const-string v2, "X-Amz-Target"

    invoke-interface {v0, v2, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/gpc/aws/http/HttpMethodName;->POST:Lcom/gpc/aws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setHttpMethod(Lcom/gpc/aws/http/HttpMethodName;)V

    .line 55
    const-string v1, "/"

    .line 56
    invoke-interface {v0, v1}, Lcom/gpc/aws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 59
    invoke-static {v1}, Lcom/gpc/aws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 62
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;->getResourceArn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;->getResourceArn()Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "ResourceArn"

    invoke-interface {v2, v4}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;->getTagKeys()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {p1}, Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;->getTagKeys()Ljava/util/List;

    move-result-object p1

    .line 69
    const-string v3, "TagKeys"

    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 70
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->beginArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 73
    invoke-interface {v2, v3}, Lcom/gpc/aws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/gpc/aws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endArray()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 79
    :cond_3
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->endObject()Lcom/gpc/aws/util/json/AwsJsonWriter;

    .line 80
    invoke-interface {v2}, Lcom/gpc/aws/util/json/AwsJsonWriter;->close()V

    .line 81
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    sget-object v1, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 83
    new-instance v2, Lcom/gpc/aws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/gpc/aws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/gpc/aws/Request;->setContent(Ljava/io/InputStream;)V

    .line 84
    const-string p1, "Content-Length"

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-interface {v0}, Lcom/gpc/aws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 90
    const-string p1, "application/x-amz-json-1.1"

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 86
    new-instance v0, Lcom/gpc/aws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_5
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(UntagResourceRequest)"

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

    .line 40
    check-cast p1, Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/gpc/aws/Request;

    move-result-object p1

    return-object p1
.end method
