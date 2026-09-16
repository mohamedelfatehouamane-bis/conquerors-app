.class public Lcom/gpc/sdk/utils/modules/DeviceIdModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/DeviceIdModule$GPCUpdateDeviceIdHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceIdModule"


# instance fields
.field private context:Landroid/content/Context;

.field private deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

.field private isDelayInit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->isDelayInit:Z

    return-void
.end method

.method private createDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->generateDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DeviceIdModule"

    if-eqz v1, :cond_2

    .line 5
    const-string v0, "revised data!!!!!"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;-><init>()V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getOAID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "oaid :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using UUID :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUID(Ljava/lang/String;)V

    .line 20
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createFromData(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/gpc/sdk/bean/GPCDeviceIdInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/gpc/sdk/utils/modules/DeviceIdModule$GPCUpdateDeviceIdHelper;->createDeviceIdInfoFromOlderData(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->fromJson(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 11
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private detectDeviceRegisterId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 6

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    const-string v1, "DeviceIdModule"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "session is valid"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->retoreDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->createDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    :cond_1
    return-object v0

    .line 43
    :cond_2
    :goto_0
    const-string v0, "session is invalid"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->retoreDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    .line 48
    iget-boolean v2, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->isDelayInit:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/gpc/util/EmulatorDetector;->with(Landroid/content/Context;)Lcom/gpc/util/EmulatorDetector;

    move-result-object v2

    .line 53
    const-string v3, "com.bluestacks"

    invoke-virtual {v2, v3}, Lcom/gpc/util/EmulatorDetector;->addPackageName(Ljava/lang/String;)Lcom/gpc/util/EmulatorDetector;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/gpc/util/EmulatorDetector;->detect()Z

    move-result v3

    .line 55
    invoke-virtual {v2}, Lcom/gpc/util/EmulatorDetector;->isKapouEmulator()Z

    move-result v2

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEmulator:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isKapouEmulator:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 61
    const-string v2, "Emulator-uuid as deviceid"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCIdsManager;->getUUID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 64
    new-instance v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;-><init>()V

    const/4 v3, 0x1

    .line 65
    iput-boolean v3, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isEmulator:Z

    .line 66
    iput-object v2, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUID(Ljava/lang/String;)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Emulator-uuid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v0

    .line 72
    :cond_5
    const-string v0, "not a emulator"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->createDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    return-object v0
.end method

.method private generateDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 4

    .line 1
    const-string v0, "cacheData is null, create a new DeviceIdInfo."

    const-string v1, "DeviceIdModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;-><init>()V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCIdsManager;->getOAID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oaid :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCIdsManager;->getUUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using UUID :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUID(Ljava/lang/String;)V

    return-object v0
.end method

.method private retoreDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getExternalStorageUDID()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getInternallStorageUDID()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "DeviceIdModule"

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    const-string v0, "UDID not exist."

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 8
    :cond_0
    invoke-direct {p0, v1}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->createFromData(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 9
    invoke-direct {p0, v0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->createFromData(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-nez v2, :cond_1

    move-object v6, v3

    goto :goto_0

    .line 15
    :cond_1
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    :goto_0
    if-nez v5, :cond_2

    move-object v7, v3

    goto :goto_1

    .line 21
    :cond_2
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    :goto_1
    if-nez v7, :cond_3

    if-nez v6, :cond_3

    .line 26
    const-string v2, "UDID data not valid."

    invoke-static {v4, v2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "External data:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Internal data:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3
    const-string v0, "old data handle"

    if-eqz v6, :cond_6

    .line 33
    const-string v1, "using Internal data"

    invoke-static {v4, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_4

    .line 37
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v6}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUIDAtExternal(Ljava/lang/String;)V

    .line 38
    const-string v1, "External not exist"

    invoke-static {v4, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "External exist:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_2
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v6}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUIDAtInternal(Ljava/lang/String;)V

    :cond_5
    return-object v6

    .line 52
    :cond_6
    const-string v1, "using External data"

    invoke-static {v4, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v7}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUIDAtInternal(Ljava/lang/String;)V

    .line 57
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v7}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUIDAtExternal(Ljava/lang/String;)V

    :cond_7
    return-object v7
.end method


# virtual methods
.method public getDeviceStorage()Lcom/gpc/sdk/utils/common/GPCDeviceStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->detectDeviceRegisterId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    const-string v1, "DeviceIdModule"

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setDeviceRegisterId(Lcom/gpc/sdk/bean/GPCDeviceIdInfo;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK.sharedInstance().getDeviceRegisterId():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getGuestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setGuestId(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getGuestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setGuestId(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    const-string v0, "SDK.sharedInstance().getDeviceRegisterId() is null"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isDelayInit "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->isDelayInit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDelayedInit()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->isDelayInit:Z

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "onDelayedInit"

    const-string v1, "DeviceIdModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getDeviceRegisterId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->createDeviceId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK.sharedInstance().getDeviceRegisterId():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setDeviceRegisterId(Lcom/gpc/sdk/bean/GPCDeviceIdInfo;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getGuestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setGuestId(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->getGuestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setGuestId(Ljava/lang/String;)V

    :cond_1
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

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->isDelayInit:Z

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

.method public resetDeviceRegisterIdWithUUID()V
    .locals 7

    const-string v0, "SDK.sharedInstance().getDeviceRegisterId():"

    const-string v1, "uuid="

    .line 1
    const-string v2, "resetDeviceRegisterIdWithUUID"

    const-string v3, "DeviceIdModule"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCIdsManager;->createUUID()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/GPCIdsManager;->setUUIDstr(Ljava/lang/String;)V

    .line 5
    new-instance v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    invoke-direct {v4}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;-><init>()V

    const/4 v5, 0x0

    .line 6
    iput-boolean v5, v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isEmulator:Z

    .line 7
    iput-object v2, v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v4}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setDeviceUID(Ljava/lang/String;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setDeviceRegisterId(Lcom/gpc/sdk/bean/GPCDeviceIdInfo;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    const-string v1, ""

    invoke-static {v3, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public resetGuestIdWithUUID()V
    .locals 4

    const-string v0, "uuid="

    .line 1
    const-string v1, "resetGuestIdWithUUID"

    const-string v2, "DeviceIdModule"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->createUUID()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/GPCDeviceStorage;->setGuestId(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->setGuestId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    const-string v1, ""

    invoke-static {v2, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setDeviceStorage(Lcom/gpc/sdk/utils/common/GPCDeviceStorage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/DeviceIdModule;->deviceStorage:Lcom/gpc/sdk/utils/common/GPCDeviceStorage;

    return-void
.end method
