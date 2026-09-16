.class public Lcom/gpc/sdk/utils/modules/LegacyTaskModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyTaskModule"


# instance fields
.field private legacyTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

.field private taskPersistence:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->legacyTasks:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/utils/modules/LegacyTaskModule$a;-><init>(Lcom/gpc/sdk/utils/modules/LegacyTaskModule;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/modules/LegacyTaskModule;)Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->taskPersistence:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;

    return-object p0
.end method

.method private process()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->legacyTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "legacyTask:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LegacyTaskModule"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    new-instance v2, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v3, "legacy_task_process"

    invoke-direct {v2, v3, v1}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getLegacyTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->legacyTasks:Ljava/util/List;

    return-object v0
.end method

.method public getTaskPersistence()Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->taskPersistence:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->legacyTasks:Ljava/util/List;

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->taskPersistence:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v2, "legacy_task_finish"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->process()V

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/util/FileUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    const-string v0, "LegacyTaskModule"

    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    new-instance p2, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;

    invoke-direct {p2, p1}, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->taskPersistence:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "legacy_task_finish"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

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

.method public setLegacyTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->legacyTasks:Ljava/util/List;

    return-void
.end method

.method public setTaskPersistence(Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/LegacyTaskModule;->taskPersistence:Lcom/gpc/sdk/utils/modules/legacytask/LegacyTaskPersistence;

    return-void
.end method
