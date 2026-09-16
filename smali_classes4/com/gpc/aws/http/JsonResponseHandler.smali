.class public Lcom/gpc/aws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lcom/gpc/aws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/http/HttpResponseHandler<",
        "Lcom/gpc/aws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final log:Lcom/gpc/aws/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TT;",
            "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/http/JsonResponseHandler;->log:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TT;",
            "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/gpc/aws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    .line 68
    iput-object p1, p0, Lcom/gpc/aws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/gpc/aws/transform/VoidJsonUnmarshaller;

    invoke-direct {p1}, Lcom/gpc/aws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/gpc/aws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/aws/http/HttpResponse;)Lcom/gpc/aws/AmazonWebServiceResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/http/HttpResponse;",
            ")",
            "Lcom/gpc/aws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    const-string v0, "Error closing json parser"

    sget-object v1, Lcom/gpc/aws/http/JsonResponseHandler;->log:Lcom/gpc/aws/logging/Log;

    const-string v2, "Parsing service response JSON"

    invoke-interface {v1, v2}, Lcom/gpc/aws/logging/Log;->trace(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "x-amz-crc32"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "{}"

    sget-object v5, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CRC32Checksum = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content encoding = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Encoding"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v2, :cond_1

    .line 110
    new-instance v5, Lcom/gpc/aws/util/CRC32ChecksumCalculatingInputStream;

    invoke-direct {v5, v3}, Lcom/gpc/aws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 118
    :cond_2
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v4}, Lcom/gpc/aws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v3

    .line 122
    :try_start_0
    new-instance v4, Lcom/gpc/aws/AmazonWebServiceResponse;

    invoke-direct {v4}, Lcom/gpc/aws/AmazonWebServiceResponse;-><init>()V

    .line 123
    new-instance v6, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-direct {v6, v3, p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;-><init>(Lcom/gpc/aws/util/json/AwsJsonReader;Lcom/gpc/aws/http/HttpResponse;)V

    .line 126
    iget-object v7, p0, Lcom/gpc/aws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    invoke-interface {v7, v6}, Lcom/gpc/aws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_4

    .line 129
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 130
    invoke-virtual {v5}, Lcom/gpc/aws/util/CRC32ChecksumCalculatingInputStream;->getCRC32Checksum()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-nez v2, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    new-instance p1, Lcom/gpc/aws/internal/CRC32MismatchException;

    const-string v1, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct {p1, v1}, Lcom/gpc/aws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_4
    :goto_1
    invoke-virtual {v4, v6}, Lcom/gpc/aws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string v5, "AWS_REQUEST_ID"

    .line 141
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v6, "x-amzn-RequestId"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 140
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance p1, Lcom/gpc/aws/ResponseMetadata;

    invoke-direct {p1, v2}, Lcom/gpc/aws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/gpc/aws/ResponseMetadata;)V

    .line 144
    const-string p1, "Done parsing service response"

    invoke-interface {v1, p1}, Lcom/gpc/aws/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-boolean p1, p0, Lcom/gpc/aws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez p1, :cond_5

    .line 149
    :try_start_1
    invoke-interface {v3}, Lcom/gpc/aws/util/json/AwsJsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    .line 151
    sget-object v1, Lcom/gpc/aws/http/JsonResponseHandler;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v1, v0, p1}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5
    return-object v4

    :catchall_0
    move-exception p1

    .line 147
    iget-boolean v1, p0, Lcom/gpc/aws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v1, :cond_6

    .line 149
    :try_start_2
    invoke-interface {v3}, Lcom/gpc/aws/util/json/AwsJsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 151
    sget-object v2, Lcom/gpc/aws/http/JsonResponseHandler;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v2, v0, v1}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 154
    :cond_6
    :goto_2
    throw p1
.end method

.method public bridge synthetic handle(Lcom/gpc/aws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/gpc/aws/http/JsonResponseHandler;->handle(Lcom/gpc/aws/http/HttpResponse;)Lcom/gpc/aws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/gpc/aws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
