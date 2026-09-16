.class public Lcom/gpc/sdk/utils/modules/log/LogModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LogModule"

.field protected static isLogInit:Z = false

.field protected static sIsAddLogbackAdapter:Z = true


# instance fields
.field protected observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

.field protected profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/gpc/sdk/utils/modules/log/LogModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/utils/modules/log/LogModule$a;-><init>(Lcom/gpc/sdk/utils/modules/log/LogModule;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    .line 65
    new-instance v0, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    .line 67
    new-instance v0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;-><init>()V

    .line 68
    new-instance v1, Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->setFlowLog(Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;)V

    .line 70
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->setRemoteApi(Lcom/gpc/sdk/utils/modules/log/bean/RemoteApi;)V

    return-void
.end method

.method public static setIsLogInit(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->isLogInit:Z

    return-void
.end method

.method public static setShadowIsAddLogbackAdapter(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->sIsAddLogbackAdapter:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getProfiling()Lcom/gpc/sdk/utils/modules/log/bean/Profiling;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;
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
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v2, "primary_app_config_notification"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

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
    .locals 2

    .line 1
    sget-boolean p2, Lcom/gpc/sdk/utils/modules/log/LogModule;->isLogInit:Z

    if-nez p2, :cond_1

    .line 2
    invoke-static {p1}, Lcom/gpc/util/LogUtils;->init(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/gpc/util/LogUtils;->loadDefaultLogAdapters()V

    .line 4
    sget-boolean p2, Lcom/gpc/sdk/utils/modules/log/LogModule;->sIsAddLogbackAdapter:Z

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/PathModule;->getLogStrogeDir()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;-><init>(Lcom/gpc/sdk/utils/modules/log/LogModule;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogbackAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;)V

    invoke-static {p2}, Lcom/gpc/util/LogUtils;->addLogAdapter(Lcom/gpc/sdk/jarvis/utils/log/adapter/JLogAdapter;)V

    :cond_0
    const/4 p1, 0x1

    .line 7
    sput-boolean p1, Lcom/gpc/sdk/utils/modules/log/LogModule;->isLogInit:Z

    .line 9
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "primary_app_config_notification"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->getVips()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->getVips()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/sdk/notification/GPCNotification;

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->getVips()Ljava/util/List;

    move-result-object p2

    const-string v0, "upload_vip_log"

    invoke-direct {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void

    .line 5
    :cond_0
    const-string p1, "LogModule"

    const-string p2, "should not notify vip log"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProfiling(Lcom/gpc/sdk/utils/modules/log/bean/Profiling;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    return-void
.end method
