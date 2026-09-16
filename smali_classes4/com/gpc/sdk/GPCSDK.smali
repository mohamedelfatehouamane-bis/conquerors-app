.class public Lcom/gpc/sdk/GPCSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "GPCSDK"

.field public static b:Lcom/gpc/sdk/Kungfu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized kungfu()Lcom/gpc/sdk/Kungfu;
    .locals 3

    const-class v0, Lcom/gpc/sdk/GPCSDK;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;

    if-nez v1, :cond_0

    .line 2
    const-string v1, "GPCSDK"

    const-string v2, "newInstance Kungfu"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/gpc/sdk/Kungfu;

    invoke-direct {v1}, Lcom/gpc/sdk/Kungfu;-><init>()V

    sput-object v1, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized reset(Ljava/lang/String;)V
    .locals 3

    const-string v0, "reset:"

    const-class v1, Lcom/gpc/sdk/GPCSDK;

    monitor-enter v1

    .line 1
    :try_start_0
    sget-object v2, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", gameId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPCSDK"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/Kungfu;->a(Ljava/lang/String;)Z

    .line 4
    sget-object p0, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;

    invoke-virtual {p0}, Lcom/gpc/sdk/Kungfu;->b()V

    const/4 p0, 0x0

    .line 5
    sput-object p0, Lcom/gpc/sdk/GPCSDK;->b:Lcom/gpc/sdk/Kungfu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
