.class public Lcom/gpc/sdk/GPCConfigurationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCConfigurationManager"

.field private static sInstance:Lcom/gpc/sdk/GPCConfigurationManager;


# instance fields
.field private configuration:Lcom/gpc/sdk/GPCConfiguration;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/GPCConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/GPCConfiguration;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/GPCConfigurationManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;
    .locals 2

    const-class v0, Lcom/gpc/sdk/GPCConfigurationManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/GPCConfigurationManager;->sInstance:Lcom/gpc/sdk/GPCConfigurationManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/GPCConfigurationManager;

    invoke-direct {v1}, Lcom/gpc/sdk/GPCConfigurationManager;-><init>()V

    sput-object v1, Lcom/gpc/sdk/GPCConfigurationManager;->sInstance:Lcom/gpc/sdk/GPCConfigurationManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/GPCConfigurationManager;->sInstance:Lcom/gpc/sdk/GPCConfigurationManager;
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
.method public declared-synchronized configuration()Lcom/gpc/sdk/GPCConfiguration;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/GPCConfigurationManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

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
    new-instance v0, Lcom/gpc/sdk/GPCConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/GPCConfiguration;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/GPCConfigurationManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

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
    .locals 1

    .line 1
    const-string p1, "GPCConfigurationManager"

    const-string v0, "onPreInit"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/GPCConfigurationManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

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

.method public setConfiguration(Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCConfigurationManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    return-void
.end method
