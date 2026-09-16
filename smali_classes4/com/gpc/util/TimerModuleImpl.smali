.class public Lcom/gpc/util/TimerModuleImpl;
.super Ljava/util/TimerTask;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gpc/util/TimerModuleImpl;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/TimerModuleImpl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gpc/util/TimerModuleImpl;->runnable:Ljava/lang/Runnable;

    .line 2
    iget-object p1, p0, Lcom/gpc/util/TimerModuleImpl;->timer:Ljava/util/Timer;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
