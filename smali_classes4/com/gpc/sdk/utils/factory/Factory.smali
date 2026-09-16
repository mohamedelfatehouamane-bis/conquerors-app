.class public final Lcom/gpc/sdk/utils/factory/Factory;
.super Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Factory"

.field private static httpFactory:Lcom/gpc/sdk/utils/factory/IHTTPFactory;

.field private static serviceFactory:Lcom/gpc/sdk/utils/factory/IServiceFactory;

.field private static timerFactory:Lcom/gpc/sdk/utils/factory/ITimerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOAIDgenerator(Z)Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;
    .locals 5

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    const-class v1, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;

    invoke-static {v1}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;

    if-eqz v1, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Factory"

    invoke-static {v2, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    new-instance v1, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;-><init>(ZJLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized httpFactory()Lcom/gpc/sdk/utils/factory/IHTTPFactory;
    .locals 2

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory:Lcom/gpc/sdk/utils/factory/IHTTPFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/utils/factory/HTTPFactoryImpl;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/factory/HTTPFactoryImpl;-><init>()V

    sput-object v1, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory:Lcom/gpc/sdk/utils/factory/IHTTPFactory;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory:Lcom/gpc/sdk/utils/factory/IHTTPFactory;
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

.method public static declared-synchronized serviceFactory()Lcom/gpc/sdk/utils/factory/IServiceFactory;
    .locals 2

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory:Lcom/gpc/sdk/utils/factory/IServiceFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/utils/factory/ServiceFactoryImpl;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/factory/ServiceFactoryImpl;-><init>()V

    sput-object v1, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory:Lcom/gpc/sdk/utils/factory/IServiceFactory;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory:Lcom/gpc/sdk/utils/factory/IServiceFactory;
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

.method public static declared-synchronized setHttpFactory(Lcom/gpc/sdk/utils/factory/IHTTPFactory;)V
    .locals 1

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p0, Lcom/gpc/sdk/utils/factory/Factory;->httpFactory:Lcom/gpc/sdk/utils/factory/IHTTPFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setServiceFactory(Lcom/gpc/sdk/utils/factory/IServiceFactory;)V
    .locals 1

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p0, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory:Lcom/gpc/sdk/utils/factory/IServiceFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setTimerFactory(Lcom/gpc/sdk/utils/factory/ITimerFactory;)V
    .locals 1

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p0, Lcom/gpc/sdk/utils/factory/Factory;->timerFactory:Lcom/gpc/sdk/utils/factory/ITimerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized timerFactory()Lcom/gpc/sdk/utils/factory/ITimerFactory;
    .locals 2

    const-class v0, Lcom/gpc/sdk/utils/factory/Factory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/utils/factory/Factory;->timerFactory:Lcom/gpc/sdk/utils/factory/ITimerFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/utils/factory/TimerFactoryImpl;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/factory/TimerFactoryImpl;-><init>()V

    sput-object v1, Lcom/gpc/sdk/utils/factory/Factory;->timerFactory:Lcom/gpc/sdk/utils/factory/ITimerFactory;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/utils/factory/Factory;->timerFactory:Lcom/gpc/sdk/utils/factory/ITimerFactory;
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
