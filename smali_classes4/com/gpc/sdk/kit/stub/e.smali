.class public Lcom/gpc/sdk/kit/stub/e;
.super Lcom/gpc/sdk/kit/stub/a;
.source "SourceFile"


# static fields
.field public static c:Lcom/gpc/sdk/kit/stub/e;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/kit/stub/a;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/gpc/sdk/kit/stub/e;->b:Z

    return-void
.end method

.method public static declared-synchronized b()Lcom/gpc/sdk/kit/stub/e;
    .locals 2

    const-class v0, Lcom/gpc/sdk/kit/stub/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/kit/stub/e;->c:Lcom/gpc/sdk/kit/stub/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/kit/stub/e;

    invoke-direct {v1}, Lcom/gpc/sdk/kit/stub/e;-><init>()V

    sput-object v1, Lcom/gpc/sdk/kit/stub/e;->c:Lcom/gpc/sdk/kit/stub/e;

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/sdk/kit/stub/e;->c:Lcom/gpc/sdk/kit/stub/e;
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


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/PathModule;->getTempDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/kunfu-log-temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/gpc/sdk/kit/stub/a;->onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V

    .line 2
    iget-boolean p1, p0, Lcom/gpc/sdk/kit/stub/e;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/gpc/sdk/kit/stub/e;->b:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/gpc/sdk/kit/stub/e;->b:Z

    return-void
.end method

.method public onStartUp(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 0

    return-void
.end method
