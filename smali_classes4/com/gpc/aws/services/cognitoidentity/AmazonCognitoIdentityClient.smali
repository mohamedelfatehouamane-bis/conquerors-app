.class public Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;
.super Lcom/gpc/aws/AmazonWebServiceClient;
.source "AmazonCognitoIdentityClient.java"

# interfaces
.implements Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;


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

    .line 94
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v1}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 197
    new-instance v0, Lcom/gpc/aws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/StaticCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 236
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 279
    new-instance v0, Lcom/gpc/aws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/gpc/aws/http/UrlHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V
    .locals 0

    .line 350
    invoke-static {p2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    .line 352
    iput-object p1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 354
    invoke-direct {p0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    invoke-static {p2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V

    .line 304
    iput-object p1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 306
    invoke-direct {p0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    .line 359
    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v0, "cognito-identity.us-east-1.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->setEndpoint(Ljava/lang/String;)V

    .line 374
    const-string v0, "cognito-identity"

    iput-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endpointPrefix:Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/gpc/aws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/gpc/aws/handlers/HandlerChainFactory;-><init>()V

    .line 377
    iget-object v1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cognitoidentity/request.handlers"

    invoke-virtual {v0, v2}, Lcom/gpc/aws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    iget-object v1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cognitoidentity/request.handler2s"

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

    .line 1708
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1709
    iget v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setTimeOffset(I)V

    .line 1711
    invoke-virtual {p3}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v0

    .line 1713
    sget-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1715
    :try_start_0
    iget-object v1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/gpc/aws/auth/AWSCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1720
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1721
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1722
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1

    .line 1725
    :cond_0
    invoke-virtual {p3, v1}, Lcom/gpc/aws/http/ExecutionContext;->setCredentials(Lcom/gpc/aws/auth/AWSCredentials;)V

    .line 1726
    new-instance v0, Lcom/gpc/aws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->jsonErrorUnmarshallers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/gpc/aws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1728
    iget-object v1, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/gpc/aws/http/AmazonHttpClient;->execute(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 1717
    sget-object p2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1718
    throw p1
.end method


# virtual methods
.method public createIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 450
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 454
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 456
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;-><init>()V

    .line 457
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 459
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 463
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/CreateIdentityPoolResultJsonUnmarshaller;-><init>()V

    .line 464
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 467
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 471
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 472
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 461
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 462
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

    .line 471
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 472
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 473
    throw v0
.end method

.method public deleteIdentities(Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 505
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 511
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 517
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller;-><init>()V

    .line 518
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 521
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 523
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 525
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 526
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 515
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 516
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

    .line 525
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 526
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 527
    throw v0
.end method

.method public deleteIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentityPoolRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 557
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 559
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 563
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 565
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentityPoolRequestMarshaller;-><init>()V

    .line 566
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DeleteIdentityPoolRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentityPoolRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 572
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 573
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 575
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 576
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 570
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 571
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 575
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 576
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 577
    throw v0
.end method

.method public describeIdentity(Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 609
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 611
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 615
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 617
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 623
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityResultJsonUnmarshaller;-><init>()V

    .line 624
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 627
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 629
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 631
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 632
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 621
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 622
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

    .line 631
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 632
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 633
    throw v0
.end method

.method public describeIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityPoolRequest;)Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 669
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 673
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 675
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityPoolRequestMarshaller;-><init>()V

    .line 676
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityPoolRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityPoolRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 678
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 682
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;-><init>()V

    .line 683
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 686
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 688
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 690
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 691
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 680
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 681
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

    .line 690
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 691
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 692
    throw v0
.end method

.method public getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1702
    iget-object v0, p0, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/gpc/aws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getCredentialsForIdentity(Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 731
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 733
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 737
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 739
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;-><init>()V

    .line 740
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 742
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 746
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;-><init>()V

    .line 747
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 750
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 752
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 754
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 755
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 744
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 745
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

    .line 754
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 755
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 756
    throw v0
.end method

.method public getId(Lcom/gpc/aws/services/cognitoidentity/model/GetIdRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetIdResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 793
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 797
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 799
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/GetIdRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 801
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 803
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 805
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;-><init>()V

    .line 806
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 809
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 811
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/GetIdResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 813
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 814
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 803
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 804
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

    .line 813
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 814
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 815
    throw v0
.end method

.method public getIdentityPoolRoles(Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 849
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 851
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 855
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 857
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesRequestMarshaller;-><init>()V

    .line 858
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 860
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 862
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 864
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;-><init>()V

    .line 865
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 868
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 870
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 872
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 873
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 862
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 863
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

    .line 872
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 873
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 874
    throw v0
.end method

.method public getOpenIdToken(Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 912
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 914
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 918
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 920
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 922
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 924
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 926
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;-><init>()V

    .line 927
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 930
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 932
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 934
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 935
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 924
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 925
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

    .line 934
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 935
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 936
    throw v0
.end method

.method public getOpenIdTokenForDeveloperIdentity(Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 990
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 994
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 996
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller;-><init>()V

    .line 997
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 999
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1001
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1003
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;-><init>()V

    .line 1004
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1007
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1009
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1011
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1012
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1001
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1002
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

    .line 1011
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1012
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1013
    throw v0
.end method

.method public listIdentities(Lcom/gpc/aws/services/cognitoidentity/model/ListIdentitiesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/ListIdentitiesResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1044
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1046
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1050
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1052
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentitiesRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentitiesRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentitiesRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/ListIdentitiesRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1054
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1056
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1058
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentitiesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentitiesResultJsonUnmarshaller;-><init>()V

    .line 1059
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1062
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1064
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/ListIdentitiesResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1066
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1067
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1056
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1057
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

    .line 1066
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1067
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1068
    throw v0
.end method

.method public listIdentityPools(Lcom/gpc/aws/services/cognitoidentity/model/ListIdentityPoolsRequest;)Lcom/gpc/aws/services/cognitoidentity/model/ListIdentityPoolsResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1102
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1106
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1108
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentityPoolsRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentityPoolsRequestMarshaller;-><init>()V

    .line 1109
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentityPoolsRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/ListIdentityPoolsRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1111
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1113
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1115
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentityPoolsResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListIdentityPoolsResultJsonUnmarshaller;-><init>()V

    .line 1116
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1119
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1121
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/ListIdentityPoolsResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1123
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1124
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1113
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1114
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

    .line 1123
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1124
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1125
    throw v0
.end method

.method public listTagsForResource(Lcom/gpc/aws/services/cognitoidentity/model/ListTagsForResourceRequest;)Lcom/gpc/aws/services/cognitoidentity/model/ListTagsForResourceResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1163
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1167
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1169
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListTagsForResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListTagsForResourceRequestMarshaller;-><init>()V

    .line 1170
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListTagsForResourceRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/ListTagsForResourceRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1172
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1174
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1176
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListTagsForResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/ListTagsForResourceResultJsonUnmarshaller;-><init>()V

    .line 1177
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1180
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1182
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/ListTagsForResourceResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1184
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1185
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1174
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1175
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

    .line 1184
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1185
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1186
    throw v0
.end method

.method public lookupDeveloperIdentity(Lcom/gpc/aws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1238
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1240
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1244
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1246
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller;-><init>()V

    .line 1247
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1249
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1251
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1253
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;-><init>()V

    .line 1254
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1257
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1259
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1261
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1262
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1251
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1252
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

    .line 1261
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1262
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1263
    throw v0
.end method

.method public mergeDeveloperIdentities(Lcom/gpc/aws/services/cognitoidentity/model/MergeDeveloperIdentitiesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1311
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1313
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1317
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1319
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller;-><init>()V

    .line 1320
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/MergeDeveloperIdentitiesRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1322
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1324
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1326
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;-><init>()V

    .line 1327
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1330
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1332
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1334
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1335
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1324
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1325
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

    .line 1334
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1335
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1336
    throw v0
.end method

.method public setIdentityPoolRoles(Lcom/gpc/aws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1368
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1370
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1374
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1376
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller;-><init>()V

    .line 1377
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1379
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1381
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1383
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1384
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1386
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1387
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1381
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1382
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1386
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1387
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1388
    throw v0
.end method

.method public tagResource(Lcom/gpc/aws/services/cognitoidentity/model/TagResourceRequest;)Lcom/gpc/aws/services/cognitoidentity/model/TagResourceResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1436
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1438
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1442
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1444
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/TagResourceRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1446
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1448
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1450
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;-><init>()V

    .line 1451
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1454
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1456
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/TagResourceResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1458
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1459
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1448
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1449
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

    .line 1458
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1459
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1460
    throw v0
.end method

.method public unlinkDeveloperIdentity(Lcom/gpc/aws/services/cognitoidentity/model/UnlinkDeveloperIdentityRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1495
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1497
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1501
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1503
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnlinkDeveloperIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnlinkDeveloperIdentityRequestMarshaller;-><init>()V

    .line 1504
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnlinkDeveloperIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/UnlinkDeveloperIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1506
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1508
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1510
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1511
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1513
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1514
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1508
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1509
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1513
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1514
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1515
    throw v0
.end method

.method public unlinkIdentity(Lcom/gpc/aws/services/cognitoidentity/model/UnlinkIdentityRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1548
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1549
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1550
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1554
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1556
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/UnlinkIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1558
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1560
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1562
    new-instance v4, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v4, v3}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1563
    invoke-direct {p0, p1, v4, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1565
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1566
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1560
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1561
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object p1, v3

    .line 1565
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1566
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1567
    throw v0
.end method

.method public untagResource(Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1594
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1595
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1596
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1600
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1602
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1604
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1606
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1608
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UntagResourceResultJsonUnmarshaller;-><init>()V

    .line 1609
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1612
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1614
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1616
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1617
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1606
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1607
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

    .line 1616
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1617
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1618
    throw v0
.end method

.method public updateIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/UpdateIdentityPoolRequest;)Lcom/gpc/aws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1653
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1654
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1655
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1659
    :try_start_0
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1661
    :try_start_1
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller;-><init>()V

    .line 1662
    invoke-virtual {v4, p1}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller;->marshall(Lcom/gpc/aws/services/cognitoidentity/model/UpdateIdentityPoolRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1664
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1666
    :try_start_3
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1668
    new-instance v4, Lcom/gpc/aws/services/cognitoidentity/model/transform/UpdateIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/gpc/aws/services/cognitoidentity/model/transform/UpdateIdentityPoolResultJsonUnmarshaller;-><init>()V

    .line 1669
    new-instance v5, Lcom/gpc/aws/http/JsonResponseHandler;

    invoke-direct {v5, v4}, Lcom/gpc/aws/http/JsonResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1672
    invoke-direct {p0, p1, v5, v0}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v3

    .line 1674
    invoke-virtual {v3}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1676
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1677
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    .line 1666
    :goto_0
    :try_start_4
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1667
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

    .line 1676
    :goto_1
    sget-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1677
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentityClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Z)V

    .line 1678
    throw v0
.end method
