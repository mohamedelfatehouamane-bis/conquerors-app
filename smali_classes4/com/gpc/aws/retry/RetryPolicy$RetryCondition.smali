.class public interface abstract Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/retry/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetryCondition"
.end annotation


# static fields
.field public static final NO_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Lcom/gpc/aws/retry/RetryPolicy$RetryCondition$1;

    invoke-direct {v0}, Lcom/gpc/aws/retry/RetryPolicy$RetryCondition$1;-><init>()V

    sput-object v0, Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;->NO_RETRY_CONDITION:Lcom/gpc/aws/retry/RetryPolicy$RetryCondition;

    return-void
.end method


# virtual methods
.method public abstract shouldRetry(Lcom/gpc/aws/AmazonWebServiceRequest;Lcom/gpc/aws/AmazonClientException;I)Z
.end method
