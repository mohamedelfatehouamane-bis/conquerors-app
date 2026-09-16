.class public Lcom/gpc/operations/migrate/IdsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "IdsManager"

.field private static sInstance:Lcom/gpc/operations/migrate/IdsManager;


# instance fields
.field private ADIDstr:Ljava/lang/String;

.field private OAIDstr:Ljava/lang/String;

.field private UIIDstr:Ljava/lang/String;

.field private UUIDstr:Ljava/lang/String;

.field protected configuration:Lcom/gpc/operations/migrate/Configuration;

.field private context:Landroid/content/Context;

.field private hasInited:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/operations/migrate/IdsManager;
    .locals 2

    const-class v0, Lcom/gpc/operations/migrate/IdsManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/migrate/IdsManager;->sInstance:Lcom/gpc/operations/migrate/IdsManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/operations/migrate/IdsManager;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/IdsManager;-><init>()V

    sput-object v1, Lcom/gpc/operations/migrate/IdsManager;->sInstance:Lcom/gpc/operations/migrate/IdsManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/operations/migrate/IdsManager;->sInstance:Lcom/gpc/operations/migrate/IdsManager;
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
.method public getUIID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please init IdsManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "IdsManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/IdsManager;->UIIDstr:Ljava/lang/String;

    return-object v0
.end method

.method public isHasInited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

    return v0
.end method

.method public onAsyncInit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/migrate/IdsManager;->UIIDstr:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/gpc/operations/migrate/IdsManager;->ADIDstr:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/gpc/operations/migrate/IdsManager;->UUIDstr:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/gpc/operations/migrate/IdsManager;->OAIDstr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreInit isOAIDEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/Configuration;->isOAIDEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdsManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/IdsManager;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/IdsManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setADIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/IdsManager;->ADIDstr:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/IdsManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    return-void
.end method

.method public setHasInited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/IdsManager;->hasInited:Z

    return-void
.end method

.method public setOAIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/IdsManager;->OAIDstr:Ljava/lang/String;

    return-void
.end method

.method public setUIIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/IdsManager;->UIIDstr:Ljava/lang/String;

    return-void
.end method

.method public setUUIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/IdsManager;->UUIDstr:Ljava/lang/String;

    return-void
.end method
