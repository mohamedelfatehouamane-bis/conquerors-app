.class public Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;
    .locals 2

    const-class v0, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->instance:Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    invoke-direct {v1}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;-><init>()V

    sput-object v1, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->instance:Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->instance:Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->count:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->count:I

    return-void
.end method
