.class public Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/ServerTimeModule;->syncServerTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "server time:"

    const-string v1, "NTP Server:"

    .line 2
    const-string v2, "start task"

    const-string v3, "ServerTimeModule"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-static {v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$100(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_0
    const-string v2, "start task in lock"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v2, "Sync Server Time NTP."

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/gpc/util/NTPServer;->clearCachedInfo()V

    .line 8
    new-instance v2, Lcom/gpc/util/NTPServer;

    invoke-direct {v2}, Lcom/gpc/util/NTPServer;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x1388

    .line 10
    invoke-virtual {v2, v6}, Lcom/instacart/library/truetime/TrueTime;->withConnectionTimeout(I)Lcom/instacart/library/truetime/TrueTime;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$200()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    iget v7, v7, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v6}, Lcom/gpc/util/NTPServer;->initialize(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    .line 15
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->now()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",request time:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$002(Lcom/gpc/sdk/utils/modules/ServerTimeModule;J)J

    .line 19
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->updateServerTimeNTP(JJ)V

    .line 21
    new-instance v0, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v1, "time_sync"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$100(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    :try_start_1
    const-string v1, ""

    invoke-static {v3, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    iget v0, v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    iget v1, v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->ntpServerSelector:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$100(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/ServerTimeModule$b;->a:Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    invoke-static {v1}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->access$100(Lcom/gpc/sdk/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    throw v0
.end method
