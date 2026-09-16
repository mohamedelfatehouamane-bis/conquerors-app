.class public Lcom/gpc/aws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field private static final HEADER_SDK_RETRY_INFO:Ljava/lang/String; = "aws-sdk-retry"

.field private static final HEADER_SDK_TRANSACTION_ID:Ljava/lang/String; = "aws-sdk-invocation-id"

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_STATUS_MULTIPLE_CHOICES:I = 0x12c

.field private static final HTTP_STATUS_OK:I = 0xc8

.field private static final HTTP_STATUS_REQ_TOO_LONG:I = 0x19d

.field private static final HTTP_STATUS_SERVICE_UNAVAILABLE:I = 0x1f7

.field private static final HTTP_STATUS_TEMP_REDIRECT:I = 0x133

.field private static final REQUEST_LOG:Lcom/gpc/aws/logging/Log;

.field private static final TIME_MILLISEC:I = 0x3e8

.field static final log:Lcom/gpc/aws/logging/Log;


# instance fields
.field final config:Lcom/gpc/aws/ClientConfiguration;

.field final httpClient:Lcom/gpc/aws/http/HttpClient;

.field private final requestFactory:Lcom/gpc/aws/http/HttpRequestFactory;

.field private final requestMetricCollector:Lcom/gpc/aws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/gpc/aws/logging/Log;

    .line 85
    const-class v0, Lcom/gpc/aws/http/AmazonHttpClient;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/gpc/aws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/gpc/aws/http/UrlHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/gpc/aws/http/AmazonHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/gpc/aws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/gpc/aws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/http/AmazonHttpClient;->requestFactory:Lcom/gpc/aws/http/HttpRequestFactory;

    .line 142
    iput-object p1, p0, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    .line 143
    iput-object p2, p0, Lcom/gpc/aws/http/AmazonHttpClient;->httpClient:Lcom/gpc/aws/http/HttpClient;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/gpc/aws/http/AmazonHttpClient;->requestMetricCollector:Lcom/gpc/aws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;Lcom/gpc/aws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/gpc/aws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/gpc/aws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/http/AmazonHttpClient;->requestFactory:Lcom/gpc/aws/http/HttpRequestFactory;

    .line 162
    iput-object p1, p0, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    .line 163
    iput-object p2, p0, Lcom/gpc/aws/http/AmazonHttpClient;->httpClient:Lcom/gpc/aws/http/HttpClient;

    .line 164
    iput-object p3, p0, Lcom/gpc/aws/http/AmazonHttpClient;->requestMetricCollector:Lcom/gpc/aws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v0, Lcom/gpc/aws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/gpc/aws/http/UrlHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/gpc/aws/http/AmazonHttpClient;-><init>(Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/HttpClient;Lcom/gpc/aws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method static createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 783
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 785
    const-string v1, " + 15"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 788
    :cond_0
    const-string v1, " - 15"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 790
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/gpc/aws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/gpc/aws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->Exception:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->incrementCounter(Lcom/gpc/aws/metrics/MetricType;)V

    .line 483
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->Exception:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0, p1}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    return-object p1
.end method

.method private isRequestSuccessful(Lcom/gpc/aws/http/HttpResponse;)Z
    .locals 1

    .line 617
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static isTemporaryRedirect(Lcom/gpc/aws/http/HttpResponse;)Z
    .locals 2

    .line 610
    invoke-virtual {p0}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v1, "Location"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private pauseBeforeNextRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Lcom/gpc/aws/AmazonClientException;ILcom/gpc/aws/retry/RetryPolicy;)J
    .locals 2

    add-int/lit8 p3, p3, -0x2

    .line 754
    invoke-virtual {p4}, Lcom/gpc/aws/retry/RetryPolicy;->getBackoffStrategy()Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;->delayBeforeNextRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Lcom/gpc/aws/AmazonClientException;I)J

    move-result-wide p1

    .line 757
    sget-object p4, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {p4}, Lcom/gpc/aws/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retriable error detected, will retry in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, attempt number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 763
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 766
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 767
    new-instance p2, Lcom/gpc/aws/AmazonClientException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private shouldRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/gpc/aws/AmazonClientException;ILcom/gpc/aws/retry/RetryPolicy;)Z
    .locals 2

    add-int/lit8 p4, p4, -0x1

    .line 579
    iget-object v0, p0, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/gpc/aws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    if-ltz v0, :cond_0

    .line 585
    invoke-virtual {p5}, Lcom/gpc/aws/retry/RetryPolicy;->isMaxErrorRetryInClientConfigHonored()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    :cond_0
    invoke-virtual {p5}, Lcom/gpc/aws/retry/RetryPolicy;->getMaxErrorRetry()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    if-lt p4, v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_4

    .line 595
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result p2

    if-nez p2, :cond_4

    .line 596
    sget-object p1, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {p1}, Lcom/gpc/aws/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 597
    const-string p2, "Content not repeatable"

    invoke-interface {p1, p2}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 604
    :cond_4
    invoke-virtual {p5}, Lcom/gpc/aws/retry/RetryPolicy;->getRetryCondition()Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    move-result-object p2

    invoke-interface {p2, p1, p3, p4}, Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;->shouldRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Lcom/gpc/aws/AmazonClientException;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method afterError(Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Ljava/util/List;Lcom/gpc/aws/AmazonClientException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/Response<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/gpc/aws/handlers/RequestHandler2;",
            ">;",
            "Lcom/gpc/aws/AmazonClientException;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/handlers/RequestHandler2;

    .line 226
    invoke-virtual {v0, p1, p2, p4}, Lcom/gpc/aws/handlers/RequestHandler2;->afterError(Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method afterResponse(Lcom/gpc/aws/Request;Ljava/util/List;Lcom/gpc/aws/Response;Lcom/gpc/aws/util/TimingInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/gpc/aws/handlers/RequestHandler2;",
            ">;",
            "Lcom/gpc/aws/Response<",
            "TT;>;",
            "Lcom/gpc/aws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .line 234
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gpc/aws/handlers/RequestHandler2;

    .line 235
    invoke-virtual {p4, p1, p3}, Lcom/gpc/aws/handlers/RequestHandler2;->afterResponse(Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonServiceException;",
            ">;",
            "Lcom/gpc/aws/http/ExecutionContext;",
            ")",
            "Lcom/gpc/aws/Response<",
            "TT;>;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 208
    invoke-virtual {p0, p1, p4}, Lcom/gpc/aws/http/AmazonHttpClient;->requestHandler2s(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/ExecutionContext;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-virtual {p4}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v1

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gpc/aws/http/AmazonHttpClient;->executeHelper(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;

    move-result-object p2
    :try_end_0
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :try_start_1
    invoke-virtual {v1}, Lcom/gpc/aws/util/AWSRequestMetrics;->getTimingInfo()Lcom/gpc/aws/util/TimingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/aws/util/TimingInfo;->endTiming()Lcom/gpc/aws/util/TimingInfo;

    move-result-object p3

    .line 215
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/gpc/aws/http/AmazonHttpClient;->afterResponse(Lcom/gpc/aws/Request;Ljava/util/List;Lcom/gpc/aws/Response;Lcom/gpc/aws/util/TimingInfo;)V
    :try_end_1
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    const/4 p2, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gpc/aws/http/AmazonHttpClient;->afterError(Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;Ljava/util/List;Lcom/gpc/aws/AmazonClientException;)V

    .line 219
    throw p3

    .line 205
    :cond_0
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string p2, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {p1, p2}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method executeHelper(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/Response;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonServiceException;",
            ">;",
            "Lcom/gpc/aws/http/ExecutionContext;",
            ")",
            "Lcom/gpc/aws/Response<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 281
    invoke-virtual {v8}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object v9

    .line 286
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-interface {v7}, Lcom/gpc/aws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-interface {v7}, Lcom/gpc/aws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/gpc/aws/http/AmazonHttpClient;->setUserAgent(Lcom/gpc/aws/Request;)V

    .line 292
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aws-sdk-invocation-id"

    invoke-interface {v7, v2, v0}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 301
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 302
    new-instance v11, Ljava/util/HashMap;

    invoke-interface {v7}, Lcom/gpc/aws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 304
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 305
    invoke-virtual {v12}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 306
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->mark(I)V

    .line 309
    :cond_0
    invoke-virtual {v8}, Lcom/gpc/aws/http/ExecutionContext;->getCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v13

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    add-int/lit8 v14, v0, 0x1

    move/from16 v18, v2

    .line 316
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    move-wide/from16 v19, v3

    int-to-long v3, v14

    invoke-virtual {v9, v2, v3, v4}, Lcom/gpc/aws/util/AWSRequestMetrics;->setCounter(Lcom/gpc/aws/metrics/MetricType;J)V

    const/4 v2, 0x1

    if-le v14, v2, :cond_1

    .line 318
    invoke-interface {v7, v10}, Lcom/gpc/aws/Request;->setParameters(Ljava/util/Map;)V

    .line 319
    invoke-interface {v7, v11}, Lcom/gpc/aws/Request;->setHeaders(Ljava/util/Map;)V

    .line 320
    invoke-interface {v7, v12}, Lcom/gpc/aws/Request;->setContent(Ljava/io/InputStream;)V

    :cond_1
    if-eqz v15, :cond_2

    .line 322
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    if-nez v3, :cond_2

    .line 323
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/gpc/aws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 326
    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/gpc/aws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 330
    :cond_2
    const-string v3, "Cannot close the response content."

    if-le v14, v2, :cond_3

    .line 331
    :try_start_0
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_27
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v2

    iget-object v4, v1, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    .line 336
    invoke-virtual {v4}, Lcom/gpc/aws/ClientConfiguration;->getRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;

    move-result-object v4

    .line 333
    invoke-direct {v1, v2, v5, v14, v4}, Lcom/gpc/aws/http/AmazonHttpClient;->pauseBeforeNextRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Lcom/gpc/aws/AmazonClientException;ILcom/gpc/aws/retry/RetryPolicy;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 340
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 341
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 342
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_27
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 338
    :try_start_3
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 339
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_28
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_27
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v8, v3

    goto/16 :goto_28

    :catch_0
    move-exception v0

    move-object v8, v3

    move v5, v14

    move-wide/from16 v22, v19

    move-object/from16 v19, v6

    move-object/from16 v20, v10

    goto/16 :goto_24

    :cond_3
    move-wide/from16 v4, v19

    .line 345
    :cond_4
    :goto_1
    :try_start_4
    const-string v2, "aws-sdk-retry"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_27
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    move-object/from16 v19, v6

    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v2, v0}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_28
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_27
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    if-nez v19, :cond_5

    .line 350
    :try_start_6
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gpc/aws/http/ExecutionContext;->getSignerByURI(Ljava/net/URI;)Lcom/gpc/aws/auth/Signer;

    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_28
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_27
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v6

    goto :goto_2

    :cond_5
    move-object/from16 v2, v19

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    .line 353
    :try_start_7
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_28
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_27
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 355
    :try_start_8
    invoke-interface {v2, v7, v13}, Lcom/gpc/aws/auth/Signer;->sign(Lcom/gpc/aws/Request;Lcom/gpc/aws/auth/AWSCredentials;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 357
    :try_start_9
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v6, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v6}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 358
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_28
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_27
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 361
    :cond_6
    :goto_3
    :try_start_a
    sget-object v0, Lcom/gpc/aws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/gpc/aws/logging/Log;

    invoke-interface {v0}, Lcom/gpc/aws/logging/Log;->isDebugEnabled()Z

    move-result v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_28
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_27
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    if-eqz v6, :cond_7

    .line 362
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_28
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_27
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v19, v2

    :try_start_c
    const-string v2, "Sending Request: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_28
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_27
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    :cond_7
    move-object/from16 v19, v2

    .line 365
    :goto_4
    :try_start_d
    iget-object v0, v1, Lcom/gpc/aws/http/AmazonHttpClient;->requestFactory:Lcom/gpc/aws/http/HttpRequestFactory;

    iget-object v2, v1, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    invoke-virtual {v0, v7, v2, v8}, Lcom/gpc/aws/http/HttpRequestFactory;->createHttpRequest(Lcom/gpc/aws/Request;Lcom/gpc/aws/ClientConfiguration;Lcom/gpc/aws/http/ExecutionContext;)Lcom/gpc/aws/http/HttpRequest;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_28
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_27
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 369
    :try_start_e
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_28
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_27
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 371
    :try_start_f
    iget-object v0, v1, Lcom/gpc/aws/http/AmazonHttpClient;->httpClient:Lcom/gpc/aws/http/HttpClient;

    invoke-interface {v0, v2}, Lcom/gpc/aws/http/HttpClient;->execute(Lcom/gpc/aws/http/HttpRequest;)Lcom/gpc/aws/http/HttpResponse;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 373
    :try_start_10
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 376
    invoke-direct {v1, v6}, Lcom/gpc/aws/http/AmazonHttpClient;->isRequestSuccessful(Lcom/gpc/aws/http/HttpResponse;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1f
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_1e
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v0, :cond_9

    .line 377
    :try_start_11
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v6}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v16
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object/from16 v17, v2

    :try_start_12
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 382
    invoke-interface/range {p2 .. p2}, Lcom/gpc/aws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object/from16 v20, v10

    move-object/from16 v10, p2

    .line 383
    :try_start_13
    invoke-virtual {v1, v7, v10, v6, v8}, Lcom/gpc/aws/http/AmazonHttpClient;->handleResponse(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponse;Lcom/gpc/aws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move/from16 v16, v2

    .line 386
    :try_start_14
    new-instance v2, Lcom/gpc/aws/Response;

    invoke-direct {v2, v0, v6}, Lcom/gpc/aws/Response;-><init>(Ljava/lang/Object;Lcom/gpc/aws/http/HttpResponse;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-nez v16, :cond_8

    if-eqz v6, :cond_8

    .line 467
    :try_start_15
    invoke-virtual {v6}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 468
    invoke-virtual {v6}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 471
    sget-object v4, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v4, v3, v0}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-object v2

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v8, v3

    move/from16 v2, v16

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v8, v3

    move/from16 v2, v16

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move/from16 v16, v2

    :goto_6
    move-object v2, v0

    move-object v8, v3

    move/from16 v18, v16

    goto :goto_a

    :catch_5
    move-exception v0

    move/from16 v16, v2

    move-object v8, v3

    :goto_7
    move-object/from16 v16, v6

    goto/16 :goto_20

    :catch_6
    move-exception v0

    move/from16 v16, v2

    move-object v8, v3

    :goto_8
    move-object/from16 v16, v6

    goto/16 :goto_22

    :catch_7
    move-exception v0

    move/from16 v16, v2

    :goto_9
    move-object v8, v3

    move-wide/from16 v22, v4

    move v5, v14

    move/from16 v18, v16

    move-object/from16 v16, v6

    goto/16 :goto_25

    :catch_8
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v8, v3

    :goto_a
    move-object/from16 v16, v6

    goto/16 :goto_28

    :catch_9
    move-exception v0

    move-object v8, v3

    move-object/from16 v16, v6

    goto/16 :goto_1f

    :catch_a
    move-exception v0

    move-object v8, v3

    move-object/from16 v16, v6

    goto/16 :goto_21

    :catch_b
    move-exception v0

    move-object/from16 v17, v2

    :goto_b
    move-object/from16 v20, v10

    move-object/from16 v10, p2

    move-object v8, v3

    move-wide/from16 v22, v4

    move-object/from16 v16, v6

    move v5, v14

    goto/16 :goto_25

    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v20, v10

    move-object/from16 v10, p2

    .line 387
    :try_start_16
    invoke-static {v6}, Lcom/gpc/aws/http/AmazonHttpClient;->isTemporaryRedirect(Lcom/gpc/aws/http/HttpResponse;)Z

    move-result v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1f
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_1e
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    if-eqz v0, :cond_a

    .line 394
    :try_start_17
    invoke-virtual {v6}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    sget-object v2, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    move-object/from16 v21, v3

    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-wide/from16 v22, v4

    :try_start_19
    const-string v4, "Redirecting to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 397
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    const/4 v2, 0x0

    .line 398
    invoke-interface {v7, v2}, Lcom/gpc/aws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 399
    invoke-interface {v7, v2}, Lcom/gpc/aws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 400
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v6}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 401
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_e
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move v5, v14

    move/from16 v2, v18

    move-object/from16 v8, v21

    const/4 v4, 0x0

    move-object v14, v6

    goto/16 :goto_11

    :catch_c
    move-exception v0

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_c

    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    goto :goto_e

    :catch_f
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object/from16 v21, v3

    :goto_c
    move-object v2, v0

    move-object/from16 v16, v6

    move-object/from16 v8, v21

    goto/16 :goto_28

    :catch_10
    move-exception v0

    move-object/from16 v21, v3

    :goto_d
    move-object/from16 v16, v6

    move/from16 v2, v18

    move-object/from16 v8, v21

    goto/16 :goto_20

    :catch_11
    move-exception v0

    move-object/from16 v21, v3

    :goto_e
    move-object/from16 v16, v6

    move/from16 v2, v18

    move-object/from16 v8, v21

    goto/16 :goto_22

    :catch_12
    move-exception v0

    move-object/from16 v21, v3

    :goto_f
    move-wide/from16 v22, v4

    :goto_10
    move-object/from16 v16, v6

    move v5, v14

    move-object/from16 v8, v21

    goto/16 :goto_25

    :cond_a
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    .line 404
    :try_start_1a
    invoke-interface/range {p3 .. p3}, Lcom/gpc/aws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v16
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move-object/from16 v2, p3

    .line 405
    :try_start_1b
    invoke-virtual {v1, v7, v2, v6}, Lcom/gpc/aws/http/AmazonHttpClient;->handleErrorResponse(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponse;)Lcom/gpc/aws/AmazonServiceException;

    move-result-object v4

    .line 407
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/gpc/aws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 408
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/gpc/aws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v4}, Lcom/gpc/aws/AmazonServiceException;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 411
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v2

    .line 412
    invoke-virtual/range {v17 .. v17}, Lcom/gpc/aws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v3

    iget-object v0, v1, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    .line 415
    invoke-virtual {v0}, Lcom/gpc/aws/ClientConfiguration;->getRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_17
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    move v5, v14

    move-object/from16 v8, v21

    move-object v14, v6

    move-object v6, v0

    .line 411
    :try_start_1c
    invoke-direct/range {v1 .. v6}, Lcom/gpc/aws/http/AmazonHttpClient;->shouldRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/gpc/aws/AmazonClientException;ILcom/gpc/aws/retry/RetryPolicy;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 426
    invoke-static {v4}, Lcom/gpc/aws/retry/RetryUtils;->isClockSkewError(Lcom/gpc/aws/AmazonServiceException;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 427
    invoke-virtual {v1, v14, v4}, Lcom/gpc/aws/http/AmazonHttpClient;->parseClockSkewOffset(Lcom/gpc/aws/http/HttpResponse;Lcom/gpc/aws/AmazonServiceException;)I

    move-result v0

    .line 428
    invoke-static {v0}, Lcom/gpc/aws/SDKGlobalConfiguration;->setGlobalTimeOffset(I)V

    .line 430
    :cond_b
    invoke-virtual {v1, v7, v4}, Lcom/gpc/aws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/gpc/aws/Request;Ljava/lang/Exception;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_1c} :catch_14
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    move/from16 v2, v16

    :goto_11
    if-nez v2, :cond_c

    if-eqz v14, :cond_c

    .line 467
    :try_start_1d
    invoke-virtual {v14}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 468
    invoke-virtual {v14}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13

    goto :goto_12

    :catch_13
    move-exception v0

    .line 471
    sget-object v3, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v3, v8, v0}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_c
    :goto_12
    move-object/from16 v16, v14

    const/4 v14, 0x0

    goto/16 :goto_27

    .line 416
    :cond_d
    :try_start_1e
    throw v4
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/Error; {:try_start_1e .. :try_end_1e} :catch_14
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_13

    :catch_14
    move-exception v0

    goto :goto_14

    :catch_15
    move-exception v0

    goto :goto_15

    :catch_16
    move-exception v0

    goto :goto_16

    :catchall_9
    move-exception v0

    move-object v14, v6

    move-object/from16 v8, v21

    :goto_13
    move-object v2, v0

    move/from16 v18, v16

    goto :goto_18

    :catch_17
    move-exception v0

    move-object v14, v6

    move-object/from16 v8, v21

    :goto_14
    move/from16 v2, v16

    move-object/from16 v16, v14

    goto/16 :goto_20

    :catch_18
    move-exception v0

    move-object v14, v6

    move-object/from16 v8, v21

    :goto_15
    move/from16 v2, v16

    move-object/from16 v16, v14

    goto/16 :goto_22

    :catch_19
    move-exception v0

    move v5, v14

    move-object/from16 v8, v21

    move-object v14, v6

    :goto_16
    move/from16 v18, v16

    goto :goto_1c

    :catchall_a
    move-exception v0

    move-object v14, v6

    move-object/from16 v8, v21

    goto :goto_17

    :catch_1a
    move-exception v0

    move-object v14, v6

    move-object/from16 v8, v21

    goto :goto_19

    :catch_1b
    move-exception v0

    move-object v14, v6

    move-object/from16 v8, v21

    goto :goto_1a

    :catch_1c
    move-exception v0

    move v5, v14

    move-object/from16 v8, v21

    goto :goto_1b

    :catch_1d
    move-exception v0

    move-object v8, v3

    move-wide/from16 v22, v4

    move v5, v14

    goto :goto_1b

    :catchall_b
    move-exception v0

    move-object v8, v3

    move-object v14, v6

    :goto_17
    move-object v2, v0

    :goto_18
    move-object/from16 v16, v14

    goto/16 :goto_28

    :catch_1e
    move-exception v0

    move-object v8, v3

    move-object v14, v6

    :goto_19
    move-object/from16 v16, v14

    goto :goto_1f

    :catch_1f
    move-exception v0

    move-object v8, v3

    move-object v14, v6

    :goto_1a
    move-object/from16 v16, v14

    goto :goto_21

    :catch_20
    move-exception v0

    move-object/from16 v17, v2

    move-object v8, v3

    move-wide/from16 v22, v4

    move-object/from16 v20, v10

    move v5, v14

    move-object/from16 v10, p2

    :goto_1b
    move-object v14, v6

    :goto_1c
    move-object/from16 v16, v14

    goto/16 :goto_25

    :catchall_c
    move-exception v0

    move-object/from16 v17, v2

    move-object v8, v3

    move-wide/from16 v22, v4

    move-object/from16 v20, v10

    move v5, v14

    move-object/from16 v10, p2

    .line 373
    :try_start_1f
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 374
    throw v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_22
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_1f} :catch_21
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    :catch_21
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_21

    :catch_23
    move-exception v0

    goto :goto_25

    :catch_24
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_1d

    :catch_25
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_1d

    :catch_26
    move-exception v0

    :goto_1d
    move-object v8, v3

    move-wide/from16 v22, v4

    goto :goto_23

    :catchall_d
    move-exception v0

    move-object v8, v3

    :goto_1e
    move-object v2, v0

    goto/16 :goto_28

    :catch_27
    move-exception v0

    move-object v8, v3

    :goto_1f
    move/from16 v2, v18

    .line 456
    :goto_20
    :try_start_20
    invoke-direct {v1, v0, v9}, Lcom/gpc/aws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/gpc/aws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :catch_28
    move-exception v0

    move-object v8, v3

    :goto_21
    move/from16 v2, v18

    .line 454
    :goto_22
    invoke-direct {v1, v0, v9}, Lcom/gpc/aws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/gpc/aws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    :catchall_e
    move-exception v0

    move/from16 v18, v2

    goto :goto_1e

    :catch_29
    move-exception v0

    move-object v8, v3

    move-wide/from16 v22, v4

    move-object/from16 v19, v6

    :goto_23
    move-object/from16 v20, v10

    move v5, v14

    :goto_24
    move-object/from16 v10, p2

    .line 433
    :goto_25
    :try_start_21
    sget-object v2, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v2}, Lcom/gpc/aws/logging/Log;->isDebugEnabled()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    const-string v4, "Unable to execute HTTP request: "

    if-eqz v3, :cond_e

    .line 434
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 436
    :cond_e
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->Exception:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->incrementCounter(Lcom/gpc/aws/metrics/MetricType;)V

    .line 437
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->Exception:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9, v2, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 438
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 440
    new-instance v2, Lcom/gpc/aws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v2

    .line 442
    invoke-interface {v7}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v2

    .line 443
    invoke-virtual/range {v17 .. v17}, Lcom/gpc/aws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v3

    iget-object v6, v1, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    .line 446
    invoke-virtual {v6}, Lcom/gpc/aws/ClientConfiguration;->getRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;

    move-result-object v6

    .line 442
    invoke-direct/range {v1 .. v6}, Lcom/gpc/aws/http/AmazonHttpClient;->shouldRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/gpc/aws/AmazonClientException;ILcom/gpc/aws/retry/RetryPolicy;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 452
    invoke-virtual {v1, v7, v0}, Lcom/gpc/aws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/gpc/aws/Request;Ljava/lang/Exception;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    if-nez v18, :cond_f

    if-eqz v16, :cond_f

    .line 467
    :try_start_23
    invoke-virtual/range {v16 .. v16}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 468
    invoke-virtual/range {v16 .. v16}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2a

    goto :goto_26

    :catch_2a
    move-exception v0

    .line 471
    sget-object v2, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v2, v8, v0}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_f
    :goto_26
    move/from16 v2, v18

    :goto_27
    move-object v0, v4

    move-object/from16 v6, v19

    move-wide/from16 v3, v22

    move v8, v5

    move-object v5, v0

    move v0, v8

    move-object/from16 v8, p4

    move-object/from16 v10, v20

    goto/16 :goto_0

    .line 447
    :cond_10
    :try_start_24
    throw v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :catchall_f
    move-exception v0

    goto/16 :goto_1e

    :goto_28
    if-nez v18, :cond_11

    if-eqz v16, :cond_11

    .line 467
    :try_start_25
    invoke-virtual/range {v16 .. v16}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 468
    invoke-virtual/range {v16 .. v16}, Lcom/gpc/aws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2b

    goto :goto_29

    :catch_2b
    move-exception v0

    .line 471
    sget-object v3, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    invoke-interface {v3, v8, v0}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 474
    :cond_11
    :goto_29
    throw v2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/gpc/aws/http/AmazonHttpClient;->shutdown()V

    .line 824
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRequestMetricCollector()Lcom/gpc/aws/metrics/RequestMetricCollector;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/gpc/aws/http/AmazonHttpClient;->requestMetricCollector:Lcom/gpc/aws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public getResponseMetadataForRequest(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method handleErrorResponse(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponse;)Lcom/gpc/aws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonServiceException;",
            ">;",
            "Lcom/gpc/aws/http/HttpResponse;",
            ")",
            "Lcom/gpc/aws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Received error response: "

    .line 695
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 699
    :try_start_0
    invoke-interface {p2, p3}, Lcom/gpc/aws/http/HttpResponseHandler;->handle(Lcom/gpc/aws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/AmazonServiceException;

    .line 700
    sget-object v2, Lcom/gpc/aws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/gpc/aws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/aws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/16 v0, 0x19d

    if-ne v1, v0, :cond_0

    .line 705
    new-instance p2, Lcom/gpc/aws/AmazonServiceException;

    const-string p3, "Request entity too large"

    invoke-direct {p2, p3}, Lcom/gpc/aws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/gpc/aws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2, v0}, Lcom/gpc/aws/AmazonServiceException;->setStatusCode(I)V

    .line 708
    sget-object v0, Lcom/gpc/aws/AmazonServiceException$ErrorType;->Client:Lcom/gpc/aws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, v0}, Lcom/gpc/aws/AmazonServiceException;->setErrorType(Lcom/gpc/aws/AmazonServiceException$ErrorType;)V

    .line 709
    invoke-virtual {p2, p3}, Lcom/gpc/aws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f7

    if-ne v1, v0, :cond_1

    .line 710
    const-string v2, "Service Unavailable"

    .line 711
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    new-instance p2, Lcom/gpc/aws/AmazonServiceException;

    const-string p3, "Service unavailable"

    invoke-direct {p2, p3}, Lcom/gpc/aws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/gpc/aws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2, v0}, Lcom/gpc/aws/AmazonServiceException;->setStatusCode(I)V

    .line 715
    sget-object v0, Lcom/gpc/aws/AmazonServiceException$ErrorType;->Service:Lcom/gpc/aws/AmazonServiceException$ErrorType;

    invoke-virtual {p2, v0}, Lcom/gpc/aws/AmazonServiceException;->setErrorType(Lcom/gpc/aws/AmazonServiceException$ErrorType;)V

    .line 716
    invoke-virtual {p2, p3}, Lcom/gpc/aws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 728
    :goto_0
    invoke-virtual {p2, v1}, Lcom/gpc/aws/AmazonServiceException;->setStatusCode(I)V

    .line 729
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/aws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Lcom/gpc/aws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p2

    .line 717
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 718
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 720
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to unmarshall error response ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "). Response Code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Response Text: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Response Headers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    new-instance p3, Lcom/gpc/aws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method handleResponse(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/HttpResponseHandler;Lcom/gpc/aws/http/HttpResponse;Lcom/gpc/aws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/http/HttpResponseHandler<",
            "Lcom/gpc/aws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/gpc/aws/http/HttpResponse;",
            "Lcom/gpc/aws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    const-string p1, ", Response Text: "

    .line 0
    const-string v0, "Received successful response: "

    const-string v1, "Unable to unmarshall response metadata. Response Code: "

    .line 644
    :try_start_0
    invoke-virtual {p4}, Lcom/gpc/aws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/gpc/aws/util/AWSRequestMetrics;

    move-result-object p4

    .line 646
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->startEvent(Lcom/gpc/aws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/gpc/aws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    invoke-interface {p2, p3}, Lcom/gpc/aws/http/HttpResponseHandler;->handle(Lcom/gpc/aws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :try_start_2
    sget-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v2}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    if-eqz p2, :cond_1

    .line 660
    sget-object v1, Lcom/gpc/aws/http/AmazonHttpClient;->REQUEST_LOG:Lcom/gpc/aws/logging/Log;

    invoke-interface {v1}, Lcom/gpc/aws/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", AWS Request ID: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p2}, Lcom/gpc/aws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-interface {v1, v0}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 664
    :cond_0
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2}, Lcom/gpc/aws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics;->addProperty(Lcom/gpc/aws/metrics/MetricType;Ljava/lang/Object;)V

    .line 666
    invoke-virtual {p2}, Lcom/gpc/aws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 654
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    .line 650
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p4, v0}, Lcom/gpc/aws/util/AWSRequestMetrics;->endEvent(Lcom/gpc/aws/metrics/MetricType;)V

    .line 651
    throw p2
    :try_end_2
    .catch Lcom/gpc/aws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 672
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Unable to unmarshall response ("

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "). Response Code: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/gpc/aws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    new-instance p3, Lcom/gpc/aws/AmazonClientException;

    invoke-direct {p3, p1, p2}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 670
    throw p1

    :catch_2
    move-exception p1

    .line 668
    throw p1
.end method

.method parseClockSkewOffset(Lcom/gpc/aws/http/HttpResponse;Lcom/gpc/aws/AmazonServiceException;)I
    .locals 3

    .line 795
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 798
    invoke-virtual {p1}, Lcom/gpc/aws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 802
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/gpc/aws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 804
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/gpc/aws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/aws/http/AmazonHttpClient;->getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 805
    :try_start_3
    invoke-static {p1}, Lcom/gpc/aws/util/DateUtils;->parseCompressedISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 817
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 818
    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v1

    .line 811
    :goto_2
    sget-object v0, Lcom/gpc/aws/http/AmazonHttpClient;->log:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse clock skew offset from response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method requestHandler2s(Lcom/gpc/aws/Request;Lcom/gpc/aws/http/ExecutionContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/http/ExecutionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/gpc/aws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Lcom/gpc/aws/http/ExecutionContext;->getRequestHandler2s()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 248
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/aws/handlers/RequestHandler2;

    .line 251
    instance-of v3, v2, Lcom/gpc/aws/handlers/CredentialsRequestHandler;

    if-eqz v3, :cond_1

    .line 252
    move-object v3, v2

    check-cast v3, Lcom/gpc/aws/handlers/CredentialsRequestHandler;

    .line 253
    invoke-virtual {p2}, Lcom/gpc/aws/http/ExecutionContext;->getCredentials()Lcom/gpc/aws/auth/AWSCredentials;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/aws/handlers/CredentialsRequestHandler;->setCredentials(Lcom/gpc/aws/auth/AWSCredentials;)V

    .line 255
    :cond_1
    invoke-virtual {v2, p1}, Lcom/gpc/aws/handlers/RequestHandler2;->beforeRequest(Lcom/gpc/aws/Request;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method resetRequestAfterError(Lcom/gpc/aws/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 499
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :try_start_0
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 511
    :catch_0
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {p1, v0, p2}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 503
    :cond_1
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Encountered an exception and stream is not resettable"

    invoke-direct {p1, v0, p2}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method setUserAgent(Lcom/gpc/aws/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/gpc/aws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 523
    invoke-interface {p1}, Lcom/gpc/aws/Request;->getOriginalRequest()Lcom/gpc/aws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v1}, Lcom/gpc/aws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/gpc/aws/RequestClientOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    sget-object v2, Lcom/gpc/aws/RequestClientOptions$Marker;->USER_AGENT:Lcom/gpc/aws/RequestClientOptions$Marker;

    invoke-virtual {v1, v2}, Lcom/gpc/aws/RequestClientOptions;->getClientMarker(Lcom/gpc/aws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {v0, v1}, Lcom/gpc/aws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_0
    sget-object v1, Lcom/gpc/aws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/gpc/aws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/gpc/aws/http/AmazonHttpClient;->config:Lcom/gpc/aws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/gpc/aws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/aws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_1
    const-string v1, "User-Agent"

    invoke-interface {p1, v1, v0}, Lcom/gpc/aws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/gpc/aws/http/AmazonHttpClient;->httpClient:Lcom/gpc/aws/http/HttpClient;

    invoke-interface {v0}, Lcom/gpc/aws/http/HttpClient;->shutdown()V

    return-void
.end method
