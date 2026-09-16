.class public Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/operations/migrate/notification/Notification;)V
    .locals 12

    const-string v0, "severOffsetTimestamp:"

    const-string v1, "severOffsetTimestamp:"

    const-string v2, "server time:"

    const-string v3, "server time:"

    const-string v4, "error type:"

    .line 1
    iget-object v5, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    monitor-enter v5

    if-eqz p1, :cond_7

    .line 3
    :try_start_0
    const-string v6, "primary_app_config_notification"

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {v1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 8
    const-string v1, "ServerTimeModule"

    const-string v3, "rec Primary AppConfig notify."

    invoke-static {v1, v3}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/gpc/operations/migrate/bean/AppConfig;->isLocalConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    const-string p1, "ServerTimeModule"

    const-string v0, "local time."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 30
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v1

    if-nez v1, :cond_1

    .line 31
    const-string p1, "ServerTimeModule"

    const-string v0, "Primary config time is null"

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 46
    :cond_1
    :try_start_5
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getRequestTime()J

    move-result-wide v3

    cmp-long v1, v3, v8

    if-gez v1, :cond_2

    .line 47
    const-string p1, "ServerTimeModule"

    const-string v0, "RequestTime less than 0."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    :try_start_6
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    .line 58
    :cond_2
    :try_start_7
    const-string v1, "ServerTimeModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",request time:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getRequestTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getTime()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    const-wide/16 v8, 0x3e8

    mul-long v1, v1, v8

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->getRequestTime()J

    move-result-wide v8

    invoke-virtual {v3, v1, v2, v8, v9}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->updateServerTime(JJ)V

    .line 63
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$100(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    const-string p1, "ServerTimeModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$200(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 66
    :try_start_8
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 67
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    throw p1

    .line 70
    :cond_4
    const-string v0, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 73
    :try_start_9
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/operations/helper/GPCSyncConfigration;

    if-nez v0, :cond_5

    .line 74
    const-string v0, "ServerTimeModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 92
    :try_start_a
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-void

    .line 93
    :cond_5
    :try_start_b
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/notification/Notification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/helper/GPCSyncConfigration;

    .line 95
    const-string v0, "ServerTimeModule"

    const-string v2, "rec GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1."

    invoke-static {v0, v2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->getServerTimestamp()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-gtz v0, :cond_6

    .line 98
    const-string p1, "ServerTimeModule"

    const-string v0, "RequestTime less than 0."

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 107
    :try_start_c
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    return-void

    .line 108
    :cond_6
    :try_start_d
    const-string v0, "ServerTimeModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->getServerTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",underDeviceStandbyTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->getUnderDeviceStandbyTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->getServerTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/gpc/operations/helper/GPCSyncConfigration;->getUnderDeviceStandbyTime()J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {v0, v2, v3}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$202(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;J)J

    .line 111
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$100(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    const-string p1, "ServerTimeModule"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {v1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$200(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 114
    :try_start_e
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 115
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;->access$000(Lcom/gpc/operations/migrate/utils/modules/ServerTimeModule;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 116
    throw p1

    .line 120
    :cond_7
    :goto_1
    monitor-exit v5

    return-void

    :catchall_2
    move-exception p1

    .line 121
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw p1
.end method
