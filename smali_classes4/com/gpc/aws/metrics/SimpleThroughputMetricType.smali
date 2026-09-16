.class public Lcom/gpc/aws/metrics/SimpleThroughputMetricType;
.super Lcom/gpc/aws/metrics/SimpleServiceMetricType;
.source "SimpleThroughputMetricType.java"

# interfaces
.implements Lcom/gpc/aws/metrics/ThroughputMetricType;


# instance fields
.field private final byteCountMetricType:Lcom/gpc/aws/metrics/ServiceMetricType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/gpc/aws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/gpc/aws/metrics/SimpleServiceMetricType;

    invoke-direct {p1, p3, p2}, Lcom/gpc/aws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/aws/metrics/SimpleThroughputMetricType;->byteCountMetricType:Lcom/gpc/aws/metrics/ServiceMetricType;

    return-void
.end method


# virtual methods
.method public getByteCountMetricType()Lcom/gpc/aws/metrics/ServiceMetricType;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gpc/aws/metrics/SimpleThroughputMetricType;->byteCountMetricType:Lcom/gpc/aws/metrics/ServiceMetricType;

    return-object v0
.end method
