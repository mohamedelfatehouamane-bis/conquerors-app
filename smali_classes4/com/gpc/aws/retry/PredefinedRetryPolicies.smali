.class public Lcom/gpc/aws/retry/PredefinedRetryPolicies;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;,
        Lcom/gpc/aws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
    }
.end annotation


# static fields
.field private static final BASE_DELAY_IN_MILLISECONDS:I = 0x64

.field public static final DEFAULT:Lcom/gpc/aws/retry/RetryPolicy;

.field public static final DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

.field public static final DEFAULT_MAX_ERROR_RETRY:I = 0x3

.field public static final DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

.field public static final DYNAMODB_DEFAULT:Lcom/gpc/aws/retry/RetryPolicy;

.field public static final DYNAMODB_DEFAULT_MAX_ERROR_RETRY:I = 0xa

.field private static final MAX_BACKOFF_IN_MILLISECONDS:I = 0x4e20

.field public static final NO_RETRY_POLICY:Lcom/gpc/aws/retry/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/gpc/aws/retry/RetryPolicy;

    sget-object v1, Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;->NO_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;->NO_DELAY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/gpc/aws/retry/RetryPolicy;-><init>(Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->NO_RETRY_POLICY:Lcom/gpc/aws/retry/RetryPolicy;

    .line 77
    new-instance v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;

    invoke-direct {v0}, Lcom/gpc/aws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;-><init>()V

    sput-object v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    .line 84
    new-instance v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;

    const/16 v1, 0x4e20

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/aws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(IILcom/gpc/aws/retry/PredefinedRetryPolicies$1;)V

    sput-object v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    .line 88
    invoke-static {}, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->getDefaultRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT:Lcom/gpc/aws/retry/RetryPolicy;

    .line 89
    invoke-static {}, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->getDynamoDBDefaultRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DYNAMODB_DEFAULT:Lcom/gpc/aws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;
    .locals 5

    .line 99
    new-instance v0, Lcom/gpc/aws/retry/RetryPolicy;

    sget-object v1, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gpc/aws/retry/RetryPolicy;-><init>(Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDefaultRetryPolicyWithCustomMaxRetries(I)Lcom/gpc/aws/retry/RetryPolicy;
    .locals 4

    .line 123
    new-instance v0, Lcom/gpc/aws/retry/RetryPolicy;

    sget-object v1, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/gpc/aws/retry/RetryPolicy;-><init>(Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDynamoDBDefaultRetryPolicy()Lcom/gpc/aws/retry/RetryPolicy;
    .locals 5

    .line 112
    new-instance v0, Lcom/gpc/aws/retry/RetryPolicy;

    sget-object v1, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gpc/aws/retry/RetryPolicy;-><init>(Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDynamoDBDefaultRetryPolicyWithCustomMaxRetries(I)Lcom/gpc/aws/retry/RetryPolicy;
    .locals 4

    .line 135
    new-instance v0, Lcom/gpc/aws/retry/RetryPolicy;

    sget-object v1, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/gpc/aws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/gpc/aws/retry/RetryPolicy;-><init>(Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;Lcom/gpc/aws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method
