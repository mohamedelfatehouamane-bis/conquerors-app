.class public Lcom/gpc/sdk/push/GPCPushNotificationProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final EXPIRE_TIMESTAMP:J = 0x5265c00L

.field private static final GAMEID:Ljava/lang/String; = "game_id"

.field private static final PUSH_MESSAGE_HANDLE_FLAG:Ljava/lang/String; = "pushMessageHandleFlag"

.field private static final PUSH_NOTIFICATION_PROFILE_NAME:Ljava/lang/String; = "gpcsdk_push_storage_message"

.field private static final REGID:Ljava/lang/String; = "regId"

.field private static final REGISTER_TIMESTAMP:Ljava/lang/String; = "last_register_timestamp"

.field private static final TAG:Ljava/lang/String; = "GPCPushNotificationProfile"

.field private static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# instance fields
.field private storage:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "gpcsdk_push_storage_message"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method private currentRegisterTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "last_register_timestamp"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized setRegisterTimestamp(J)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_register_timestamp"

    invoke-virtual {v0, p2, p1}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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


# virtual methods
.method public currentAppVersion()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public currentGameId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "game_id"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentRegId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentUserId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCustomHandleMessage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "pushMessageHandleFlag"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExpire()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentTimeMillis - currentRegisterTimestamp() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->currentRegisterTimestamp()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCPushNotificationProfile"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->currentRegisterTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized setAppVersion(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized setCustomHandleMessageFlag(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "pushMessageHandleFlag"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized setGameId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GameId:"

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "game_id"

    invoke-virtual {v1, v2, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "game_id"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCPushNotificationProfile"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized setRegId(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "regId"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public storePushNotificationInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->setUserId(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->setRegId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->setGameId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p4}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->setAppVersion(I)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->setRegisterTimestamp(J)V

    return-void
.end method
