.class Lcom/gpc/aws/http/conn/ClientConnectionRequestFactory$Handler;
.super Ljava/lang/Object;
.source "ClientConnectionRequestFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/http/conn/ClientConnectionRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# instance fields
.field private final orig:Lorg/apache/http/conn/ClientConnectionRequest;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/gpc/aws/http/conn/ClientConnectionRequestFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionRequest;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    :try_start_0
    const-string p1, "getConnection"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Lcom/gpc/aws/metrics/ServiceLatencyProvider;

    sget-object v0, Lcom/gpc/aws/util/AWSServiceMetrics;->HttpClientGetConnectionTime:Lcom/gpc/aws/util/AWSServiceMetrics;

    invoke-direct {p1, v0}, Lcom/gpc/aws/metrics/ServiceLatencyProvider;-><init>(Lcom/gpc/aws/metrics/ServiceMetricType;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/gpc/aws/http/conn/ClientConnectionRequestFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-static {}, Lcom/gpc/aws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/gpc/aws/metrics/ServiceMetricCollector;

    move-result-object p3

    .line 77
    invoke-virtual {p1}, Lcom/gpc/aws/metrics/ServiceLatencyProvider;->endTiming()Lcom/gpc/aws/metrics/ServiceLatencyProvider;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gpc/aws/metrics/ServiceMetricCollector;->collectLatency(Lcom/gpc/aws/metrics/ServiceLatencyProvider;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 76
    invoke-static {}, Lcom/gpc/aws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/gpc/aws/metrics/ServiceMetricCollector;

    move-result-object p3

    .line 77
    invoke-virtual {p1}, Lcom/gpc/aws/metrics/ServiceLatencyProvider;->endTiming()Lcom/gpc/aws/metrics/ServiceLatencyProvider;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gpc/aws/metrics/ServiceMetricCollector;->collectLatency(Lcom/gpc/aws/metrics/ServiceLatencyProvider;)V

    .line 78
    throw p2

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/gpc/aws/http/conn/ClientConnectionRequestFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 82
    invoke-static {}, Lcom/gpc/aws/http/conn/ClientConnectionRequestFactory;->access$000()Lcom/gpc/aws/logging/Log;

    move-result-object p2

    const-string p3, ""

    invoke-interface {p2, p3, p1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
