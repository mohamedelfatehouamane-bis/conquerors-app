.class public Lcom/gpc/operations/base/RunningTimeConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "RunningTimeConfiguratio"

.field private static final ourInstance:Lcom/gpc/operations/base/RunningTimeConfiguration;


# instance fields
.field public isIntentModel:Z

.field public sSyncConfigration:Lcom/gpc/operations/helper/GPCSyncConfigration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/RunningTimeConfiguration;

    invoke-direct {v0}, Lcom/gpc/operations/base/RunningTimeConfiguration;-><init>()V

    sput-object v0, Lcom/gpc/operations/base/RunningTimeConfiguration;->ourInstance:Lcom/gpc/operations/base/RunningTimeConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/gpc/operations/base/RunningTimeConfiguration;->isIntentModel:Z

    return-void
.end method

.method public static getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/base/RunningTimeConfiguration;->ourInstance:Lcom/gpc/operations/base/RunningTimeConfiguration;

    return-object v0
.end method


# virtual methods
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/RunningTimeConfiguration;->sSyncConfigration:Lcom/gpc/operations/helper/GPCSyncConfigration;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/gpc/operations/migrate/notification/Notification;

    const-string v2, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-direct {v1, v2, v0}, Lcom/gpc/operations/migrate/notification/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->postNotification(Lcom/gpc/operations/migrate/notification/Notification;)V

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public syncConfigration(Lcom/gpc/operations/helper/GPCSyncConfigration;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/RunningTimeConfiguration;->sSyncConfigration:Lcom/gpc/operations/helper/GPCSyncConfigration;

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->isInited()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/gpc/operations/migrate/notification/Notification;

    iget-object v0, p0, Lcom/gpc/operations/base/RunningTimeConfiguration;->sSyncConfigration:Lcom/gpc/operations/helper/GPCSyncConfigration;

    const-string v1, "GPC_APIGATEWAY_CONFIGRATION_SYNCHRONIZE_V1"

    invoke-direct {p1, v1, v0}, Lcom/gpc/operations/migrate/notification/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/operations/migrate/notification/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/notification/NotificationCenter;->postNotification(Lcom/gpc/operations/migrate/notification/Notification;)V

    :cond_0
    return-void
.end method
