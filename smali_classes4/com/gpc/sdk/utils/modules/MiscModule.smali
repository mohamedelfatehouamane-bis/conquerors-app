.class public Lcom/gpc/sdk/utils/modules/MiscModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation runtime Lcom/gpc/sdk/utils/modules/annotation/ModuleTarget;
    value = "MiscModule"
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "PushModule"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/gpc/sdk/utils/modules/MiscModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/utils/modules/MiscModule$a;-><init>(Lcom/gpc/sdk/utils/modules/MiscModule;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/MiscModule;->b:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method


# virtual methods
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

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/MiscModule;->b:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v2, "legacy_task_process"

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
    .locals 1

    .line 1
    const-string p2, "PushModule"

    const-string v0, "onPreInit"

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/MiscModule;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/MiscModule;->b:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "legacy_task_process"

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
