.class public Lcom/gpc/sdk/push/GPCPushStorageService;
.super Ljava/lang/Object;
.source "SourceFile"


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

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public isCustomHandleMessage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushStorageService;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "pushMessageHandleFlag"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setCustomHandleMessageFlag(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushStorageService;->a:Lcom/gpc/util/LocalStorage;

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
