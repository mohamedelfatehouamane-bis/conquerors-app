.class public Lcom/gpc/aws/http/StaxResponseHandler;
.super Ljava/lang/Object;
.source "StaxResponseHandler.java"

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
.field private static final XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private static final log:Lcom/gpc/aws/logging/Log;


# instance fields
.field private responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TT;",
            "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/http/StaxResponseHandler;->log:Lcom/gpc/aws/logging/Log;

    .line 55
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/http/StaxResponseHandler;->XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "Couldn\'t initialize XmlPullParserFactory"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/gpc/aws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TT;",
            "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/gpc/aws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Lcom/gpc/aws/transform/VoidStaxUnmarshaller;

    invoke-direct {p1}, Lcom/gpc/aws/transform/VoidStaxUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/gpc/aws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/aws/http/HttpResponse;)Lcom/gpc/aws/AmazonWebServiceResponse;
    .locals 6
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

    .line 88
    sget-object v0, Lcom/gpc/aws/http/StaxResponseHandler;->log:Lcom/gpc/aws/logging/Log;

    const-string v1, "Parsing service response XML"

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->trace(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "<eof/>"

    sget-object v3, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    :cond_0
    sget-object v2, Lcom/gpc/aws/http/StaxResponseHandler;->XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/gpc/aws/AmazonWebServiceResponse;

    invoke-direct {v1}, Lcom/gpc/aws/AmazonWebServiceResponse;-><init>()V

    .line 97
    new-instance v3, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    .line 98
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 99
    const-string v2, "ResponseMetadata/RequestId"

    const/4 v4, 0x2

    const-string v5, "AWS_REQUEST_ID"

    invoke-virtual {v3, v2, v4, v5}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    const-string v2, "requestId"

    invoke-virtual {v3, v2, v4, v5}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/gpc/aws/http/StaxResponseHandler;->registerAdditionalMetadataExpressions(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)V

    .line 105
    iget-object v2, p0, Lcom/gpc/aws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    invoke-interface {v2, v3}, Lcom/gpc/aws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/gpc/aws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v3}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->getMetadata()Ljava/util/Map;

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    const-string v3, "x-amzn-RequestId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 113
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    new-instance p1, Lcom/gpc/aws/ResponseMetadata;

    invoke-direct {p1, v2}, Lcom/gpc/aws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, p1}, Lcom/gpc/aws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/gpc/aws/ResponseMetadata;)V

    .line 118
    const-string p1, "Done parsing service response"

    invoke-interface {v0, p1}, Lcom/gpc/aws/logging/Log;->trace(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic handle(Lcom/gpc/aws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/gpc/aws/http/StaxResponseHandler;->handle(Lcom/gpc/aws/http/HttpResponse;)Lcom/gpc/aws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)V
    .locals 0

    return-void
.end method
