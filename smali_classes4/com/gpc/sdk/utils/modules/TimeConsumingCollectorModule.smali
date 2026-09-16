.class public Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;,
        Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeConsumingCollectorModule"


# instance fields
.field private maps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TimeConsumingCollectorModule"

    const-string v1, "key contains:"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance v1, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public step(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->start(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;

    .line 8
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    const-string p2, "TimeConsumingCollectorModule"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;->maps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;

    .line 7
    iget-wide v0, p1, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    move-exception p1

    .line 10
    const-string v2, "TimeConsumingCollectorModule"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method
