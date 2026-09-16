.class public abstract Lcom/gpc/aws/metrics/MetricCollector;
.super Ljava/lang/Object;
.source "MetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/metrics/MetricCollector$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/gpc/aws/metrics/MetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/gpc/aws/metrics/MetricCollector$1;

    invoke-direct {v0}, Lcom/gpc/aws/metrics/MetricCollector$1;-><init>()V

    sput-object v0, Lcom/gpc/aws/metrics/MetricCollector;->NONE:Lcom/gpc/aws/metrics/MetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRequestMetricCollector()Lcom/gpc/aws/metrics/RequestMetricCollector;
.end method

.method public abstract getServiceMetricCollector()Lcom/gpc/aws/metrics/ServiceMetricCollector;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract start()Z
.end method

.method public abstract stop()Z
.end method
