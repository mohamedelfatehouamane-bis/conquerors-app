.class public Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;
.super Lcom/gpc/aws/AmazonWebServiceClient;
.source "AmazonKinesisClient.java"

# interfaces
.implements Lcom/gpc/aws/services/kinesis/AmazonKinesis;


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

    .line 81
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v1}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;)V
    .locals 1

    .line 141
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/gpc/aws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/StaticCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 218
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 260
    new-instance v0, Lcom/gpc/aws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/gpc/aws/http/UrlHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V
    .locals 0

    .line 308
    invoke-static {p2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    .line 310
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 312
    invoke-direct {p0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    invoke-static {p2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V

    .line 285
    iput-object p1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 287
    invoke-direct {p0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    .line 317
    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/ExpiredIteratorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/ExpiredIteratorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/ExpiredNextTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/ExpiredNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/InvalidArgumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/InvalidArgumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/KMSAccessDeniedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/KMSAccessDeniedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/KMSDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/KMSDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/KMSInvalidStateExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/KMSInvalidStateExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/KMSNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/KMSNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/KMSOptInRequiredExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/KMSOptInRequiredExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/KMSThrottlingExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/KMSThrottlingExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/ResourceInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/ResourceInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/kinesis/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/kinesis/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v0, "kinesis.us-east-1.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->setEndpoint(Ljava/lang/String;)V

    .line 334
    const-string v0, "kinesis"

    iput-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endpointPrefix:Ljava/lang/String;

    .line 336
    new-instance v0, Lcom/gpc/aws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/gpc/aws/handlers/HandlerChainFactory;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/kinesis/request.handlers"

    invoke-virtual {v0, v2}, Lcom/gpc/aws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    iget-object v1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/kinesis/request.handler2s"

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

    .line 3333
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 3334
    iget v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setTimeOffset(I)V

    .line 3336
    invoke-virtual {p3}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v0

    .line 3338
    sget-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 3340
    :try_start_0
    iget-object v1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/gpc/aws/auth/AWSCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3342
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 3345
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3346
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3347
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1

    .line 3350
    :cond_0
    invoke-virtual {p3, v1}, Lcom/gpc/aws/http/ExecutionContext;->setCredentials(Lcom/gpc/aws/auth/AWSCredentials;)V

    .line 3351
    new-instance v0, Lcom/gpc/aws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->jsonErrorUnmarshallers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/gpc/aws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 3353
    iget-object v1, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/gpc/aws/http/AmazonHttpClient;->execute(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 3342
    sget-object p2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 3343
    throw p1
.end method


# virtual methods
.method public addTagsToStream(Lcom/gpc/aws/services/kinesis/model/AddTagsToStreamRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 383
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 387
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 389
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/AddTagsToStreamRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/AddTagsToStreamRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/AddTagsToStreamRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/AddTagsToStreamRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 395
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 396
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 398
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 399
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 393
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 394
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 398
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 399
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 400
    throw v0
.end method

.method public createStream(Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 487
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 491
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 493
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/CreateStreamRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/CreateStreamRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/CreateStreamRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 495
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 499
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 500
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 502
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 503
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 497
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 498
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 502
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 503
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 504
    throw v0
.end method

.method public createStream(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2241
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;-><init>()V

    .line 2242
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;->setStreamName(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;->setShardCount(Ljava/lang/Integer;)V

    .line 2244
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createStream(Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;)V

    return-void
.end method

.method public decreaseStreamRetentionPeriod(Lcom/gpc/aws/services/kinesis/model/DecreaseStreamRetentionPeriodRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 539
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 543
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 545
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DecreaseStreamRetentionPeriodRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DecreaseStreamRetentionPeriodRequestMarshaller;-><init>()V

    .line 546
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DecreaseStreamRetentionPeriodRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/DecreaseStreamRetentionPeriodRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 548
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 552
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 553
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 555
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 556
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 550
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 551
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 555
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 556
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 557
    throw v0
.end method

.method public deleteStream(Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 609
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 613
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 615
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DeleteStreamRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DeleteStreamRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DeleteStreamRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 617
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 621
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 622
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 624
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 625
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 619
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 620
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 624
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 625
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 626
    throw v0
.end method

.method public deleteStream(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2294
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;-><init>()V

    .line 2295
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;->setStreamName(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->deleteStream(Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;)V

    return-void
.end method

.method public describeLimits(Lcom/gpc/aws/services/kinesis/model/DescribeLimitsRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeLimitsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 657
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 661
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 663
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DescribeLimitsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeLimitsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeLimitsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/DescribeLimitsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 665
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 669
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DescribeLimitsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeLimitsResultJsonUnmarshaller;-><init>()V

    .line 670
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 673
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 675
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/DescribeLimitsResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 677
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 678
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 667
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 668
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

    .line 677
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 678
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 679
    throw v0
.end method

.method public describeStream(Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 728
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 730
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 734
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 736
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 738
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 740
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 742
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamResultJsonUnmarshaller;-><init>()V

    .line 743
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 746
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 748
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 750
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 751
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 740
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 741
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

    .line 750
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 751
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 752
    throw v0
.end method

.method public describeStream(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2345
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;-><init>()V

    .line 2346
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->setStreamName(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->describeStream(Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;

    move-result-object p1

    return-object p1
.end method

.method public describeStream(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2460
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;-><init>()V

    .line 2461
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->setStreamName(Ljava/lang/String;)V

    .line 2462
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->setLimit(Ljava/lang/Integer;)V

    .line 2463
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->setExclusiveStartShardId(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->describeStream(Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;

    move-result-object p1

    return-object p1
.end method

.method public describeStream(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2399
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;-><init>()V

    .line 2400
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->setStreamName(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;->setExclusiveStartShardId(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->describeStream(Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;

    move-result-object p1

    return-object p1
.end method

.method public describeStreamSummary(Lcom/gpc/aws/services/kinesis/model/DescribeStreamSummaryRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamSummaryResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 783
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 785
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 789
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 791
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamSummaryRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamSummaryRequestMarshaller;-><init>()V

    .line 792
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamSummaryRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/DescribeStreamSummaryRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 794
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 798
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamSummaryResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DescribeStreamSummaryResultJsonUnmarshaller;-><init>()V

    .line 799
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 802
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 804
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/DescribeStreamSummaryResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 806
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 807
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 796
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 797
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

    .line 806
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 807
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 808
    throw v0
.end method

.method public disableEnhancedMonitoring(Lcom/gpc/aws/services/kinesis/model/DisableEnhancedMonitoringRequest;)Lcom/gpc/aws/services/kinesis/model/DisableEnhancedMonitoringResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 837
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 839
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 843
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 845
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DisableEnhancedMonitoringRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DisableEnhancedMonitoringRequestMarshaller;-><init>()V

    .line 846
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/DisableEnhancedMonitoringRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/DisableEnhancedMonitoringRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 848
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 850
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 852
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/DisableEnhancedMonitoringResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/DisableEnhancedMonitoringResultJsonUnmarshaller;-><init>()V

    .line 853
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 856
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 858
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/DisableEnhancedMonitoringResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 860
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 861
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 850
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 851
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

    .line 860
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 861
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 862
    throw v0
.end method

.method public enableEnhancedMonitoring(Lcom/gpc/aws/services/kinesis/model/EnableEnhancedMonitoringRequest;)Lcom/gpc/aws/services/kinesis/model/EnableEnhancedMonitoringResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 891
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 893
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 897
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 899
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/EnableEnhancedMonitoringRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/EnableEnhancedMonitoringRequestMarshaller;-><init>()V

    .line 900
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/EnableEnhancedMonitoringRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/EnableEnhancedMonitoringRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 902
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 906
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/EnableEnhancedMonitoringResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/EnableEnhancedMonitoringResultJsonUnmarshaller;-><init>()V

    .line 907
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 910
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 912
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/EnableEnhancedMonitoringResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 914
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 915
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 904
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 905
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

    .line 914
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 915
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 916
    throw v0
.end method

.method public getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3327
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/gpc/aws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getRecords(Lcom/gpc/aws/services/kinesis/model/GetRecordsRequest;)Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1019
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1020
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1024
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1026
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/GetRecordsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1028
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1032
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/GetRecordsResultJsonUnmarshaller;-><init>()V

    .line 1033
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1036
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1038
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1040
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1041
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1030
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1031
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

    .line 1040
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1041
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1042
    throw v0
.end method

.method public getShardIterator(Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1119
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1121
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1125
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1127
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1129
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1131
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1133
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/GetShardIteratorResultJsonUnmarshaller;-><init>()V

    .line 1134
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1137
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1139
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1141
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1142
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1131
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1132
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

    .line 1141
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1142
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1143
    throw v0
.end method

.method public getShardIterator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 3162
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;-><init>()V

    .line 3163
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setStreamName(Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setShardId(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setShardIteratorType(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->getShardIterator(Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;

    move-result-object p1

    return-object p1
.end method

.method public getShardIterator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 3298
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;-><init>()V

    .line 3299
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setStreamName(Ljava/lang/String;)V

    .line 3300
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setShardId(Ljava/lang/String;)V

    .line 3301
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setShardIteratorType(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {v0, p4}, Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;->setStartingSequenceNumber(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->getShardIterator(Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;

    move-result-object p1

    return-object p1
.end method

.method public increaseStreamRetentionPeriod(Lcom/gpc/aws/services/kinesis/model/IncreaseStreamRetentionPeriodRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1180
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1182
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1186
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1188
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/IncreaseStreamRetentionPeriodRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/IncreaseStreamRetentionPeriodRequestMarshaller;-><init>()V

    .line 1189
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/IncreaseStreamRetentionPeriodRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/IncreaseStreamRetentionPeriodRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1191
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1193
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1195
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1196
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1198
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1199
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1193
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1194
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1198
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1199
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1200
    throw v0
.end method

.method public listShards(Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;)Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1239
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1243
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1245
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/ListShardsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/ListShardsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/ListShardsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1247
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1249
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1251
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/ListShardsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/ListShardsResultJsonUnmarshaller;-><init>()V

    .line 1252
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1255
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1257
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1259
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1260
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1249
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1250
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

    .line 1259
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1260
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1261
    throw v0
.end method

.method public listStreams()Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2506
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;-><init>()V

    .line 2507
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->listStreams(Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;

    move-result-object v0

    return-object v0
.end method

.method public listStreams(Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1306
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1308
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1312
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1314
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/ListStreamsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/ListStreamsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/ListStreamsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1316
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1318
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1320
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/ListStreamsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/ListStreamsResultJsonUnmarshaller;-><init>()V

    .line 1321
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1324
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1326
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1328
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1329
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1318
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1319
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

    .line 1328
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1329
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1330
    throw v0
.end method

.method public listStreams(Ljava/lang/Integer;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2602
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;-><init>()V

    .line 2603
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->setLimit(Ljava/lang/Integer;)V

    .line 2604
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->setExclusiveStartStreamName(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->listStreams(Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;

    move-result-object p1

    return-object p1
.end method

.method public listStreams(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2552
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;-><init>()V

    .line 2553
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;->setExclusiveStartStreamName(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->listStreams(Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;

    move-result-object p1

    return-object p1
.end method

.method public listTagsForStream(Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1358
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1359
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1360
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1364
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1366
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamRequestMarshaller;-><init>()V

    .line 1367
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1369
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1371
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1373
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/ListTagsForStreamResultJsonUnmarshaller;-><init>()V

    .line 1374
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1377
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1379
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1381
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1382
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1371
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1372
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

    .line 1381
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1382
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1383
    throw v0
.end method

.method public mergeShards(Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1459
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1460
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1461
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1465
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1467
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/MergeShardsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/MergeShardsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/MergeShardsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1469
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1471
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1473
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1474
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1476
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1477
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1471
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1472
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1476
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1477
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1478
    throw v0
.end method

.method public mergeShards(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2688
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;-><init>()V

    .line 2689
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->setStreamName(Ljava/lang/String;)V

    .line 2690
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->setShardToMerge(Ljava/lang/String;)V

    .line 2691
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;->setAdjacentShardToMerge(Ljava/lang/String;)V

    .line 2692
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->mergeShards(Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;)V

    return-void
.end method

.method public putRecord(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1567
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1569
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1573
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1575
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1577
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1579
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1581
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordResultJsonUnmarshaller;-><init>()V

    .line 1582
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1585
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1587
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1589
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1590
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1579
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1580
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

    .line 1589
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1590
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1591
    throw v0
.end method

.method public putRecord(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2910
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;-><init>()V

    .line 2911
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setStreamName(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setData(Ljava/nio/ByteBuffer;)V

    .line 2913
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setPartitionKey(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->putRecord(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;

    move-result-object p1

    return-object p1
.end method

.method public putRecord(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 3030
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;-><init>()V

    .line 3031
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setStreamName(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setData(Ljava/nio/ByteBuffer;)V

    .line 3033
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setPartitionKey(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {v0, p4}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->setSequenceNumberForOrdering(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->putRecord(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;

    move-result-object p1

    return-object p1
.end method

.method public putRecords(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1707
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1708
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1709
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1713
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1715
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1717
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1719
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1721
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/PutRecordsResultJsonUnmarshaller;-><init>()V

    .line 1722
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1725
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1727
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1729
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1730
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1719
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1720
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

    .line 1729
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1730
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1731
    throw v0
.end method

.method public removeTagsFromStream(Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1765
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1766
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1767
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1771
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1773
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/RemoveTagsFromStreamRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/RemoveTagsFromStreamRequestMarshaller;-><init>()V

    .line 1774
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/RemoveTagsFromStreamRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1776
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1778
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1780
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1781
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1783
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1784
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1778
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1779
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1783
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1784
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1785
    throw v0
.end method

.method public splitShard(Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1877
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1878
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1879
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1883
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1885
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/SplitShardRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/SplitShardRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/SplitShardRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1887
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1889
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1891
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1892
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1894
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1895
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1889
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1890
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1894
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1895
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1896
    throw v0
.end method

.method public splitShard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2798
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;-><init>()V

    .line 2799
    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;->setStreamName(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {v0, p2}, Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;->setShardToSplit(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v0, p3}, Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;->setNewStartingHashKey(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->splitShard(Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;)V

    return-void
.end method

.method public startStreamEncryption(Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1948
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1949
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1950
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1954
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1956
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/StartStreamEncryptionRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/StartStreamEncryptionRequestMarshaller;-><init>()V

    .line 1957
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/StartStreamEncryptionRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1959
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1961
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1963
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1964
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1966
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1967
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1961
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1962
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1966
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1967
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1968
    throw v0
.end method

.method public stopStreamEncryption(Lcom/gpc/aws/services/kinesis/model/StopStreamEncryptionRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2013
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 2014
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2015
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2019
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2021
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/StopStreamEncryptionRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/StopStreamEncryptionRequestMarshaller;-><init>()V

    .line 2022
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/StopStreamEncryptionRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/StopStreamEncryptionRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2024
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2026
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2028
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 2029
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2031
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2032
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 2026
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2027
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 2031
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2032
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 2033
    throw v0
.end method

.method public updateShardCount(Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 2119
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 2120
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 2121
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2125
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2127
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/UpdateShardCountRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/UpdateShardCountRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/kinesis/model/transform/UpdateShardCountRequestMarshaller;->marshall(Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2129
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2131
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2133
    new-instance v4, Lcom/gpc/aws/services/kinesis/model/transform/UpdateShardCountResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/kinesis/model/transform/UpdateShardCountResultJsonUnmarshaller;-><init>()V

    .line 2134
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 2137
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 2139
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2141
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2142
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 2131
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2132
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

    .line 2141
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 2142
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 2143
    throw v0
.end method
