.class public Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;
.super Lcom/gpc/aws/AmazonWebServiceClient;
.source "AmazonKinesisFirehoseClient.java"

# interfaces
.implements Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;


# instance fields
.field private awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

.field protected jsonErrorUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v1}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;)V
    .locals 1

    .line 145
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 187
    new-instance v0, Lcom/gpc/aws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/StaticCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 226
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 269
    new-instance v0, Lcom/gpc/aws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/gpc/aws/http/UrlHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V
    .locals 0

    .line 340
    invoke-static {p2}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    .line 342
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 344
    invoke-direct {p0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    invoke-static {p2}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V

    .line 294
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 296
    invoke-direct {p0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->jsonErrorUnmarshallers:Ljava/util/List;

    .line 349
    new-instance v1, Lcom/gpc/aws/services/kinesisfirehose/model/transform/InvalidArgumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/InvalidArgumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesisfirehose/model/transform/InvalidKMSResourceExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/InvalidKMSResourceExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesisfirehose/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesisfirehose/model/transform/ServiceUnavailableExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/ServiceUnavailableExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v0, "firehose.us-east-1.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->setEndpoint(Ljava/lang/String;)V

    .line 357
    const-string v0, "firehose"

    iput-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->endpointPrefix:Ljava/lang/String;

    .line 359
    new-instance v0, Lcom/gpc/aws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/gpc/aws/handlers/HandlerChainFactory;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/kinesisfirehose/request.handlers"

    invoke-virtual {v0, v2}, Lcom/gpc/aws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    iget-object v1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/kinesisfirehose/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/gpc/aws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/gpc/aws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/gpc/aws/Request<",
            "TY;>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Lcom/gpc/aws/http/ExecutionContext;",
            ")",
            "Lcom/gpc/aws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 533
    iget v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setTimeOffset(I)V

    .line 535
    invoke-virtual {p3}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/gpc/aws/auth/AWSCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 544
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1

    .line 549
    :cond_0
    invoke-virtual {p3, v1}, Lcom/gpc/aws/http/ExecutionContext;->setCredentials(Lcom/gpc/aws/auth/AWSCredentials;)V

    .line 550
    new-instance v0, Lcom/gpc/aws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->jsonErrorUnmarshallers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/gpc/aws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 552
    iget-object v1, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/gpc/aws/http/AmazonHttpClient;->execute(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 541
    sget-object p2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 542
    throw p1
.end method


# virtual methods
.method public getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/gpc/aws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public putRecordBatch(Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 480
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 484
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 486
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 492
    new-instance v4, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/PutRecordBatchResultJsonUnmarshaller;-><init>()V

    .line 493
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 496
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 498
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 500
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 501
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 490
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 491
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 500
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 501
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 502
    throw v0
.end method
