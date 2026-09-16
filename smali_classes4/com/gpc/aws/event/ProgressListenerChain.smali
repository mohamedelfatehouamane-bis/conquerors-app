.class public Lcom/gpc/aws/event/ProgressListenerChain;
.super Ljava/lang/Object;
.source "ProgressListenerChain.java"

# interfaces
.implements Lcom/gpc/aws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;
    }
.end annotation


# static fields
.field private static final log:Lcom/gpc/aws/logging/Log;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/aws/event/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final progressEventFilter:Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/gpc/aws/event/ProgressListenerChain;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/event/ProgressListenerChain;->log:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method public varargs constructor <init>(Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/gpc/aws/event/ProgressListener;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 63
    invoke-virtual {p0, v2}, Lcom/gpc/aws/event/ProgressListenerChain;->addProgressListener(Lcom/gpc/aws/event/ProgressListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/gpc/aws/event/ProgressListenerChain;->progressEventFilter:Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;

    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Progress Listeners cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Lcom/gpc/aws/event/ProgressListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/gpc/aws/event/ProgressListenerChain;-><init>(Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/gpc/aws/event/ProgressListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lcom/gpc/aws/event/ProgressListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/aws/event/ProgressListener;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public progressChanged(Lcom/gpc/aws/event/ProgressEvent;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerChain;->progressEventFilter:Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1}, Lcom/gpc/aws/event/ProgressListenerChain$ProgressEventFilter;->filter(Lcom/gpc/aws/event/ProgressEvent;)Lcom/gpc/aws/event/ProgressEvent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/aws/event/ProgressListener;

    .line 105
    :try_start_0
    invoke-interface {v1, p1}, Lcom/gpc/aws/event/ProgressListener;->progressChanged(Lcom/gpc/aws/event/ProgressEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 107
    sget-object v2, Lcom/gpc/aws/event/ProgressListenerChain;->log:Lcom/gpc/aws/logging/Log;

    const-string v3, "Couldn\'t update progress listener"

    invoke-interface {v2, v3, v1}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lcom/gpc/aws/event/ProgressListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 83
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerChain;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
