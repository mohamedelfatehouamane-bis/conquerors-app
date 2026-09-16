.class public final Lcom/gpc/aws/http/impl/client/SdkHttpRequestRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "SdkHttpRequestRetryHandler.java"


# static fields
.field public static final Singleton:Lcom/gpc/aws/http/impl/client/SdkHttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/gpc/aws/http/impl/client/SdkHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/gpc/aws/http/impl/client/SdkHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/gpc/aws/http/impl/client/SdkHttpRequestRetryHandler;->Singleton:Lcom/gpc/aws/http/impl/client/SdkHttpRequestRetryHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    const-class p2, Lcom/gpc/aws/util/AWSRequestMetrics;

    .line 44
    const-string p2, "AWSRequestMetrics"

    invoke-interface {p3, p2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/aws/util/AWSRequestMetrics;

    if-eqz p2, :cond_0

    .line 46
    sget-object p3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, p3}, Lcom/gpc/aws/util/AWSRequestMetrics;->incrementCounter(Lcom/gpc/aws/metrics/MetricType;)V

    :cond_0
    return p1
.end method
