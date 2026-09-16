.class public Lcom/gpc/sdk/GPCIdsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCIdsManager"

.field private static sInstance:Lcom/gpc/sdk/GPCIdsManager;


# instance fields
.field private ADIDstr:Ljava/lang/String;

.field private OAIDstr:Ljava/lang/String;

.field private UIIDstr:Ljava/lang/String;

.field private UUIDstr:Ljava/lang/String;

.field protected configuration:Lcom/gpc/sdk/GPCConfiguration;

.field private context:Landroid/content/Context;

.field private deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

.field private hasADIDInited:Z

.field private hasInited:Z

.field private hasOAIDInited:Z

.field private lifecycleIDstr:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasADIDInited:Z

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasOAIDInited:Z

    return-void
.end method

.method private createADID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private createLifecycleID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOAID()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "createOAID"

    const-string v1, "GPCIdsManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    const-string v2, ""

    if-nez v0, :cond_0

    .line 3
    const-string v0, "configuration is null or configuration.isOAIDEnabled():false"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    const-string v0, "configuration.isOAIDEnabled():false"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "enableCollectOAID:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-static {}, Lcom/gpc/util/LogUtils;->isDebugMode()Z

    move-result v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/Factory;->getOAIDgenerator(Z)Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/gpc/sdk/GPCIdsManager;->context:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/gpc/sdk/utils/common/OAIDGenerator;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/sdk/GPCIdsManager;
    .locals 2

    const-class v0, Lcom/gpc/sdk/GPCIdsManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/GPCIdsManager;->sInstance:Lcom/gpc/sdk/GPCIdsManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/sdk/GPCIdsManager;

    invoke-direct {v1}, Lcom/gpc/sdk/GPCIdsManager;-><init>()V

    sput-object v1, Lcom/gpc/sdk/GPCIdsManager;->sInstance:Lcom/gpc/sdk/GPCIdsManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/GPCIdsManager;->sInstance:Lcom/gpc/sdk/GPCIdsManager;
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
.method public checkOAIDImport()V
    .locals 3

    const-string v0, "isOAIDEnabled is true, Please implementation SkyUnionLibs or OAID AAR !!!"

    .line 1
    const-string v1, "checkOAIDImport"

    const-string v2, "GPCIdsManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    const-string v1, "isOAIDEnabled is true."

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->isAvailableAtRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/gpc/sdk/utils/common/GPCThrowException;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/utils/common/GPCThrowException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/gpc/sdk/utils/common/GPCThrowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 13
    const-string v1, ""

    invoke-static {v2, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    new-instance v1, Lcom/gpc/sdk/utils/common/GPCThrowException;

    const-string v2, "isOAIDEnabled is true, unknow Exception"

    invoke-direct {v1, v2, v0}, Lcom/gpc/sdk/utils/common/GPCThrowException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 15
    throw v0

    .line 21
    :cond_1
    :goto_0
    const-string v0, "checkOAIDImport end"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createUIID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getUIID()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create UIID(DeviceStorage):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCIdsManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/gpc/sdk/GPCIdsManager;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setUIID(Ljava/lang/String;)V

    return-object v0
.end method

.method public createUUID()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createUUID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCIdsManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getADID()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasADIDInited:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result v0

    const-string v1, ""

    const-string v2, "GPCIdsManager"

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Please init IdsManager"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "DelayInit getADID is null"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please init IdsManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "GPCIdsManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->lifecycleIDstr:Ljava/lang/String;

    return-object v0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasOAIDInited:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result v0

    const-string v1, ""

    const-string v2, "GPCIdsManager"

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Please init IdsManager"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "DelayInit getOAID is null"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    return-object v0
.end method

.method public getUIID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please init IdsManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "GPCIdsManager"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UIIDstr:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UUIDstr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCIdsManager;->createUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UUIDstr:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UUIDstr:Ljava/lang/String;

    return-object v0
.end method

.method public isHasInited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    return v0
.end method

.method public onAsyncInit()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    iget-object v1, p0, Lcom/gpc/sdk/GPCIdsManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCIdsManager;->createUIID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UIIDstr:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UIID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/GPCIdsManager;->UIIDstr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCIdsManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/gpc/sdk/GPCIdsManager;->createLifecycleID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->lifecycleIDstr:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "lifecycle Id :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/GPCIdsManager;->lifecycleIDstr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    .line 11
    iget-object v2, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/gpc/sdk/GPCIdsManager;->createADID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    .line 13
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasADIDInited:Z

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/gpc/sdk/GPCIdsManager;->createOAID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasOAIDInited:Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OAID:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDelayedInit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/GPCIdsManager;->createADID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasADIDInited:Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCIdsManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCIdsManager;->checkOAIDImport()V

    .line 6
    invoke-direct {p0}, Lcom/gpc/sdk/GPCIdsManager;->createOAID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasOAIDInited:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UIIDstr:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->UUIDstr:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/gpc/sdk/GPCIdsManager;->lifecycleIDstr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    .line 8
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasOAIDInited:Z

    .line 9
    iput-boolean v0, p0, Lcom/gpc/sdk/GPCIdsManager;->hasADIDInited:Z

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
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreInit isOAIDEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->isOAIDEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCIdsManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPreInit isDelayInit:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    .line 5
    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/GPCIdsManager;->checkOAIDImport()V

    :cond_0
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

.method public setADIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->ADIDstr:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    return-void
.end method

.method public setHasInited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/GPCIdsManager;->hasInited:Z

    return-void
.end method

.method public setLifecycleIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->lifecycleIDstr:Ljava/lang/String;

    return-void
.end method

.method public setOAIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->OAIDstr:Ljava/lang/String;

    return-void
.end method

.method public setUIIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->UIIDstr:Ljava/lang/String;

    return-void
.end method

.method public setUUIDstr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCIdsManager;->UUIDstr:Ljava/lang/String;

    return-void
.end method
