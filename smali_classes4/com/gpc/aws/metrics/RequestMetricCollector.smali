.class public abstract Lcom/gpc/aws/metrics/RequestMetricCollector;
.super Ljava/lang/Object;
.source "RequestMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/metrics/RequestMetricCollector$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/gpc/aws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/gpc/aws/metrics/RequestMetricCollector$1;

    invoke-direct {v0}, Lcom/gpc/aws/metrics/RequestMetricCollector$1;-><init>()V

    sput-object v0, Lcom/gpc/aws/metrics/RequestMetricCollector;->NONE:Lcom/gpc/aws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectMetrics(Lcom/gpc/aws/Request;Lcom/gpc/aws/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/Request<",
            "*>;",
            "Lcom/gpc/aws/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
