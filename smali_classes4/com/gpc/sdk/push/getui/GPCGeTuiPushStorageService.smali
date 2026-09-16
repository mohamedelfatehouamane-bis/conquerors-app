.class public Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final storagePushName:Ljava/lang/String; = "getui_push_message"


# instance fields
.field public a:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "getui_push_message"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public currentGameId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentRegId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentUserId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setGameId(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gameId"

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

.method public declared-synchronized setRegId(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, ""

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

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
    iget-object v0, p0, Lcom/gpc/sdk/push/getui/GPCGeTuiPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "userId"

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
