.class public Lcom/gpc/aws/metrics/SimpleServiceMetricType;
.super Lcom/gpc/aws/metrics/SimpleMetricType;
.source "SimpleServiceMetricType.java"

# interfaces
.implements Lcom/gpc/aws/metrics/ServiceMetricType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/gpc/aws/metrics/SimpleMetricType;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gpc/aws/metrics/SimpleServiceMetricType;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/gpc/aws/metrics/SimpleServiceMetricType;->serviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gpc/aws/metrics/SimpleServiceMetricType;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gpc/aws/metrics/SimpleServiceMetricType;->name:Ljava/lang/String;

    return-object v0
.end method
