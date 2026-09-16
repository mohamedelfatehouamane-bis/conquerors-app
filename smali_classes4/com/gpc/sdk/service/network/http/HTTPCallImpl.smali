.class public Lcom/gpc/sdk/service/network/http/HTTPCallImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/HTTPCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/network/http/HTTPCallImpl$TaskEndRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTPCallImpl"


# instance fields
.field private futureTask:Ljava/util/concurrent/FutureTask;

.field private handler:Landroid/os/Handler;

.field private task:Lcom/gpc/sdk/service/network/http/HTTPTask;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPTask;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->task:Lcom/gpc/sdk/service/network/http/HTTPTask;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->handler:Landroid/os/Handler;

    return-void

    .line 6
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/service/network/http/HTTPCallImpl;)Lcom/gpc/sdk/service/network/http/HTTPTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->task:Lcom/gpc/sdk/service/network/http/HTTPTask;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/service/network/http/HTTPCallImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->futureTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "task cancel,mayInterruptIfRunning:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTPCallImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HTTPCallImpl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cancel futureTask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public enqueue(Lcom/gpc/sdk/service/network/http/HTTPCallback;)V
    .locals 3

    .line 1
    const-string v0, "task enqueue"

    const-string v1, "HTTPCallImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$a;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/service/network/http/HTTPCallImpl$a;-><init>(Lcom/gpc/sdk/service/network/http/HTTPCallImpl;Lcom/gpc/sdk/service/network/http/HTTPCallback;)V

    const/4 p1, 0x0

    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->futureTask:Ljava/util/concurrent/FutureTask;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "HTTPCallImpl:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", futureTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-static {p1}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute()Lcom/gpc/sdk/service/network/http/HTTPResult;
    .locals 2

    .line 1
    const-string v0, "HTTPCallImpl"

    const-string v1, "task execute"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->task:Lcom/gpc/sdk/service/network/http/HTTPTask;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/HTTPTask;->run()V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPCallImpl;->task:Lcom/gpc/sdk/service/network/http/HTTPTask;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/HTTPTask;->a()Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$d;->a()Lcom/gpc/sdk/service/network/http/HTTPResult;

    move-result-object v0

    return-object v0
.end method
