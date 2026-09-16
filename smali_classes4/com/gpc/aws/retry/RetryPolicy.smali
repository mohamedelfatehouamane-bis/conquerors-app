.class public final Lcom/gpc/aws/retry/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;,
        Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;
    }
.end annotation


# instance fields
.field private final backoffStrategy:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

.field private final honorMaxErrorRetryInClientConfig:Z

.field private final maxErrorRetry:I

.field private final retryCondition:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;IZ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 81
    sget-object p1, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    :cond_0
    if-nez p2, :cond_1

    .line 84
    sget-object p2, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    :cond_1
    if-ltz p3, :cond_2

    .line 91
    iput-object p1, p0, Lcom/gpc/aws/retry/RetryPolicy;->retryCondition:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    .line 92
    iput-object p2, p0, Lcom/gpc/aws/retry/RetryPolicy;->backoffStrategy:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    .line 93
    iput p3, p0, Lcom/gpc/aws/retry/RetryPolicy;->maxErrorRetry:I

    .line 94
    iput-boolean p4, p0, Lcom/gpc/aws/retry/RetryPolicy;->honorMaxErrorRetryInClientConfig:Z

    return-void

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a non-negative value for maxErrorRetry."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBackoffStrategy()Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/gpc/aws/retry/RetryPolicy;->backoffStrategy:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    return-object v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/gpc/aws/retry/RetryPolicy;->maxErrorRetry:I

    return v0
.end method

.method public getRetryCondition()Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gpc/aws/retry/RetryPolicy;->retryCondition:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    return-object v0
.end method

.method public isMaxErrorRetryInClientConfigHonored()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/gpc/aws/retry/RetryPolicy;->honorMaxErrorRetryInClientConfig:Z

    return v0
.end method
