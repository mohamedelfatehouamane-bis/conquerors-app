.class final Lcom/gpc/aws/metrics/ServiceMetricCollector$1;
.super Lcom/gpc/aws/metrics/ServiceMetricCollector;
.source "ServiceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/metrics/ServiceMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/gpc/aws/metrics/ServiceMetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collectByteThroughput(Lcom/gpc/aws/metrics/ByteThroughputProvider;)V
    .locals 0

    return-void
.end method

.method public collectLatency(Lcom/gpc/aws/metrics/ServiceLatencyProvider;)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
