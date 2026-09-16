.class public Lcom/gpc/aws/metrics/MetricFilterInputStream;
.super Lcom/gpc/aws/internal/SdkFilterInputStream;
.source "MetricFilterInputStream.java"


# instance fields
.field private final helper:Lcom/gpc/aws/metrics/ByteThroughputHelper;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcom/gpc/aws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    new-instance p2, Lcom/gpc/aws/metrics/ByteThroughputHelper;

    invoke-direct {p2, p1}, Lcom/gpc/aws/metrics/ByteThroughputHelper;-><init>(Lcom/gpc/aws/metrics/ThroughputMetricType;)V

    iput-object p2, p0, Lcom/gpc/aws/metrics/MetricFilterInputStream;->helper:Lcom/gpc/aws/metrics/ByteThroughputHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/gpc/aws/metrics/MetricFilterInputStream;->helper:Lcom/gpc/aws/metrics/ByteThroughputHelper;

    invoke-virtual {v0}, Lcom/gpc/aws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 57
    iget-object v0, p0, Lcom/gpc/aws/metrics/MetricFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 58
    invoke-virtual {p0}, Lcom/gpc/aws/metrics/MetricFilterInputStream;->abortIfNeeded()V

    return-void
.end method

.method public final isMetricActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/gpc/aws/metrics/MetricFilterInputStream;->abortIfNeeded()V

    .line 46
    iget-object v0, p0, Lcom/gpc/aws/metrics/MetricFilterInputStream;->helper:Lcom/gpc/aws/metrics/ByteThroughputHelper;

    invoke-virtual {v0}, Lcom/gpc/aws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/gpc/aws/metrics/MetricFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 49
    iget-object p2, p0, Lcom/gpc/aws/metrics/MetricFilterInputStream;->helper:Lcom/gpc/aws/metrics/ByteThroughputHelper;

    invoke-virtual {p2, p1, v0, v1}, Lcom/gpc/aws/metrics/ByteThroughputHelper;->increment(IJ)V

    :cond_0
    return p1
.end method
