.class public Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;
.super Lcom/gpc/aws/AmazonWebServiceClient;
.source "AWSSecurityTokenServiceClient.java"

# interfaces
.implements Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;


# instance fields
.field private awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

.field protected final exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "Lcom/gpc/aws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v1}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    new-instance v0, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;)V
    .locals 1

    .line 239
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 281
    new-instance v0, Lcom/gpc/aws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/StaticCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 320
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 363
    new-instance v0, Lcom/gpc/aws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/gpc/aws/http/UrlHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V
    .locals 0

    .line 434
    invoke-static {p2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    .line 158
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 436
    iput-object p1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 438
    invoke-direct {p0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    invoke-static {p2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/AmazonWebServiceClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V

    .line 158
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 388
    iput-object p1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    .line 390
    invoke-direct {p0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->init()V

    return-void
.end method

.method private static adjustClientConfiguration(Lcom/gpc/aws/ClientConfiguration;)Lcom/gpc/aws/ClientConfiguration;
    .locals 0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/ExpiredTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/IDPCommunicationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/InvalidAuthorizationMessageExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/InvalidAuthorizationMessageExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/services/securitytoken/model/transform/RegionDisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/gpc/aws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/gpc/aws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v0, "sts.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->setEndpoint(Ljava/lang/String;)V

    .line 454
    const-string v0, "sts"

    iput-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endpointPrefix:Ljava/lang/String;

    .line 456
    new-instance v0, Lcom/gpc/aws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/gpc/aws/handlers/HandlerChainFactory;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/securitytoken/request.handlers"

    invoke-virtual {v0, v2}, Lcom/gpc/aws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    iget-object v1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/securitytoken/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/gpc/aws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
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
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TX;",
            "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
            ">;",
            "Lcom/gpc/aws/http/ExecutionContext;",
            ")",
            "Lcom/gpc/aws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 1800
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1801
    iget v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/gpc/aws/Request;->setTimeOffset(I)V

    .line 1802
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v0

    .line 1804
    iget-object v1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->awsCredentialsProvider:Lcom/gpc/aws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/gpc/aws/auth/AWSCredentialsProvider;->getCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1

    .line 1805
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1806
    invoke-virtual {v0}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v1

    .line 1809
    :cond_0
    invoke-virtual {p3, v1}, Lcom/gpc/aws/http/ExecutionContext;->setCredentials(Lcom/gpc/aws/auth/AWSCredentials;)V

    .line 1811
    new-instance v0, Lcom/gpc/aws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/gpc/aws/http/StaxResponseHandler;-><init>(Lcom/gpc/aws/transform/Unmarshaller;)V

    .line 1812
    new-instance p2, Lcom/gpc/aws/http/DefaultErrorResponseHandler;

    iget-object v1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {p2, v1}, Lcom/gpc/aws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1814
    iget-object v1, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/gpc/aws/http/AmazonHttpClient;->execute(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public assumeRole(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 657
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 661
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 663
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 664
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 665
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 668
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 667
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 668
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 669
    throw v0
.end method

.method public assumeRoleWithSAML(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithSAMLRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 872
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 874
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 878
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithSAMLRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithSAMLRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithSAMLRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithSAMLRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 880
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 881
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithSAMLResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithSAMLResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 883
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 886
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 885
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 886
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 887
    throw v0
.end method

.method public assumeRoleWithWebIdentity(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1126
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1128
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1132
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;-><init>()V

    .line 1133
    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1135
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 1136
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 1138
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1141
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1140
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1141
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 1142
    throw v0
.end method

.method public decodeAuthorizationMessage(Lcom/gpc/aws/services/securitytoken/model/DecodeAuthorizationMessageRequest;)Lcom/gpc/aws/services/securitytoken/model/DecodeAuthorizationMessageResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1224
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1226
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1230
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/DecodeAuthorizationMessageRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/DecodeAuthorizationMessageRequestMarshaller;-><init>()V

    .line 1231
    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/DecodeAuthorizationMessageRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/DecodeAuthorizationMessageRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1233
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 1234
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/DecodeAuthorizationMessageResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/DecodeAuthorizationMessageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 1236
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/DecodeAuthorizationMessageResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1238
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1239
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1238
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1239
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 1240
    throw v0
.end method

.method public getAccessKeyInfo(Lcom/gpc/aws/services/securitytoken/model/GetAccessKeyInfoRequest;)Lcom/gpc/aws/services/securitytoken/model/GetAccessKeyInfoResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1290
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1291
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1292
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1296
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetAccessKeyInfoRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetAccessKeyInfoRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/GetAccessKeyInfoRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/GetAccessKeyInfoRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1298
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 1299
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetAccessKeyInfoResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetAccessKeyInfoResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 1301
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/GetAccessKeyInfoResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1304
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1303
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1304
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 1305
    throw v0
.end method

.method public getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1794
    iget-object v0, p0, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->client:Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/gpc/aws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getCallerIdentity()Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1769
    new-instance v0, Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;-><init>()V

    .line 1770
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->getCallerIdentity(Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityResult;

    move-result-object v0

    return-object v0
.end method

.method public getCallerIdentity(Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1341
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1343
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1347
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1349
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 1350
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 1352
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1355
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1354
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1355
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 1356
    throw v0
.end method

.method public getFederationToken(Lcom/gpc/aws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/gpc/aws/services/securitytoken/model/GetFederationTokenResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1508
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1509
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1513
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1515
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 1516
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 1518
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/GetFederationTokenResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1520
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1521
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1520
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1521
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 1522
    throw v0
.end method

.method public getSessionToken()Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1734
    new-instance v0, Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-direct {v0}, Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenRequest;-><init>()V

    .line 1735
    invoke-virtual {p0, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->getSessionToken(Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken(Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonServiceException;,
            Lcom/gpc/aws/AmazonClientException;
        }
    .end annotation

    .line 1621
    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->createExecutionContext(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/http/ExecutionContext;

    move-result-object v0

    .line 1622
    invoke-virtual {v0}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 1623
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V

    const/4 v2, 0x0

    .line 1627
    :try_start_0
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;-><init>()V

    invoke-virtual {v3, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/gpc/aws/Request;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1629
    :try_start_1
    invoke-interface {p1, v1}, Lcom/gpc/aws/Request;->setAWSRequestMetrics(Lcom/gpc/aws/util/AWSRequestMetrics;)V

    .line 1630
    new-instance v3, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;

    invoke-direct {v3}, Lcom/gpc/aws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, p1, v3, v0}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->invoke(Lcom/gpc/aws/Request;Lcom/gpc/aws/transform/Unmarshaller;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object v2

    .line 1632
    invoke-virtual {v2}, Lcom/gpc/aws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1635
    invoke-virtual {p0, v1, p1, v2}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 1634
    :goto_0
    sget-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 1635
    invoke-virtual {p0, v1, v2, p1}, Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenServiceClient;->endClientExecution(Lcom/gpc/aws/util/AWSRequestMetrics;Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    .line 1636
    throw v0
.end method
