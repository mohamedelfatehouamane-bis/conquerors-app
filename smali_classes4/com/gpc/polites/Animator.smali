.class public Lcom/gpc/polites/Animator;
.super Ljava/lang/Thread;
.source "Animator.java"


# instance fields
.field private active:Z

.field private animation:Lcom/gpc/polites/Animation;

.field private lastTime:J

.field private running:Z

.field private view:Lcom/gpc/polites/GestureImageView;


# direct methods
.method public constructor <init>(Lcom/gpc/polites/GestureImageView;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/gpc/polites/Animator;->running:Z

    .line 27
    iput-boolean p2, p0, Lcom/gpc/polites/Animator;->active:Z

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/gpc/polites/Animator;->lastTime:J

    .line 32
    iput-object p1, p0, Lcom/gpc/polites/Animator;->view:Lcom/gpc/polites/GestureImageView;

    return-void
.end method


# virtual methods
.method public declared-synchronized activate()V
    .locals 2

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/polites/Animator;->lastTime:J

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 71
    :try_start_0
    iput-boolean v0, p0, Lcom/gpc/polites/Animator;->running:Z

    .line 72
    iput-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play(Lcom/gpc/polites/Animation;)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/gpc/polites/Animator;->cancel()V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/gpc/polites/Animator;->animation:Lcom/gpc/polites/Animation;

    .line 82
    invoke-virtual {p0}, Lcom/gpc/polites/Animator;->activate()V

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/gpc/polites/Animator;->running:Z

    .line 40
    :goto_0
    iget-boolean v0, p0, Lcom/gpc/polites/Animator;->running:Z

    if-eqz v0, :cond_4

    .line 42
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gpc/polites/Animator;->animation:Lcom/gpc/polites/Animation;

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-object v2, p0, Lcom/gpc/polites/Animator;->animation:Lcom/gpc/polites/Animation;

    iget-object v3, p0, Lcom/gpc/polites/Animator;->view:Lcom/gpc/polites/GestureImageView;

    iget-wide v4, p0, Lcom/gpc/polites/Animator;->lastTime:J

    sub-long v4, v0, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/gpc/polites/Animation;->update(Lcom/gpc/polites/GestureImageView;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/gpc/polites/Animator;->active:Z

    .line 45
    iget-object v2, p0, Lcom/gpc/polites/Animator;->view:Lcom/gpc/polites/GestureImageView;

    invoke-virtual {v2}, Lcom/gpc/polites/GestureImageView;->redraw()V

    .line 46
    iput-wide v0, p0, Lcom/gpc/polites/Animator;->lastTime:J

    .line 48
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/gpc/polites/Animator;->view:Lcom/gpc/polites/GestureImageView;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/gpc/polites/GestureImageView;->waitForDraw(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/gpc/polites/Animator;->active:Z

    goto :goto_2

    .line 59
    :cond_2
    monitor-enter p0

    .line 60
    :try_start_1
    iget-boolean v0, p0, Lcom/gpc/polites/Animator;->running:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 62
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catch_1
    :cond_3
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    return-void
.end method
