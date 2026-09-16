.class public Lcom/gpc/util/SDKTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/util/SDKTask$SDKTaskRunnable;,
        Lcom/gpc/util/SDKTask$SDKTaskResultListener;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final ERROR_EXECUTOR:Ljava/lang/String; = "10002"

.field public static final ERROR_TASK:Ljava/lang/String; = "10001"

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final SINGLE_INSTANCE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "SDKTask"

.field protected static sMainHandler:Landroid/os/Handler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSinglePoolThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sSinglePoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/gpc/util/SDKTask;->CPU_COUNT:I

    add-int/lit8 v2, v0, 0x1

    .line 2
    sput v2, Lcom/gpc/util/SDKTask;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 3
    sput v3, Lcom/gpc/util/SDKTask;->MAXIMUM_POOL_SIZE:I

    .line 5
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const v0, 0x7fffffff

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v7, Lcom/gpc/util/SDKTask;->sSinglePoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/gpc/util/SDKTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 7
    new-instance v8, Lcom/gpc/util/SDKTask$a;

    invoke-direct {v8}, Lcom/gpc/util/SDKTask$a;-><init>()V

    sput-object v8, Lcom/gpc/util/SDKTask;->sSinglePoolThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 17
    new-instance v0, Lcom/gpc/util/SDKTask$b;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask$b;-><init>()V

    sput-object v0, Lcom/gpc/util/SDKTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gpc/util/SDKTask;->sMainHandler:Landroid/os/Handler;

    .line 29
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/gpc/util/SDKTask;->SINGLE_INSTANCE_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/gpc/util/SDKTask;->CORE_POOL_SIZE:I

    sget v2, Lcom/gpc/util/SDKTask;->MAXIMUM_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/gpc/util/SDKTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/gpc/util/SDKTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/gpc/util/SDKTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private excute(Ljava/util/concurrent/Executor;Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
            "TR;>;",
            "Lcom/gpc/util/SDKTask$SDKTaskResultListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/gpc/util/SDKTask$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/gpc/util/SDKTask$c;-><init>(Lcom/gpc/util/SDKTask;Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    const-string p2, "SDKTask"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    .line 21
    const-string p1, "10002"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/gpc/util/SDKTask$SDKTaskResultListener;->onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public excuteForFrequently(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
            "TR;>;",
            "Lcom/gpc/util/SDKTask$SDKTaskResultListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/util/SDKTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1, p2}, Lcom/gpc/util/SDKTask;->excute(Ljava/util/concurrent/Executor;Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
            "TR;>;",
            "Lcom/gpc/util/SDKTask$SDKTaskResultListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/util/SDKTask;->SINGLE_INSTANCE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1, p2}, Lcom/gpc/util/SDKTask;->excute(Ljava/util/concurrent/Executor;Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public excuteInMainLooper(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/SDKTask;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
