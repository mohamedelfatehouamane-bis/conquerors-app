.class public Lcom/gpc/operations/migrate/ConfigurationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationManager"

.field private static sInstance:Lcom/gpc/operations/migrate/ConfigurationManager;


# instance fields
.field private configuration:Lcom/gpc/operations/migrate/Configuration;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/Configuration;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/Configuration;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;
    .locals 2

    const-class v0, Lcom/gpc/operations/migrate/ConfigurationManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/migrate/ConfigurationManager;->sInstance:Lcom/gpc/operations/migrate/ConfigurationManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/operations/migrate/ConfigurationManager;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/ConfigurationManager;-><init>()V

    sput-object v1, Lcom/gpc/operations/migrate/ConfigurationManager;->sInstance:Lcom/gpc/operations/migrate/ConfigurationManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/operations/migrate/ConfigurationManager;->sInstance:Lcom/gpc/operations/migrate/ConfigurationManager;
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
.method public declared-synchronized configuration()Lcom/gpc/operations/migrate/Configuration;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration:Lcom/gpc/operations/migrate/Configuration;
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

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 2

    .line 1
    const-string v0, "ConfigurationManager"

    const-string v1, "onPreInit"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/Configuration;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setConfiguration(Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    return-void
.end method
