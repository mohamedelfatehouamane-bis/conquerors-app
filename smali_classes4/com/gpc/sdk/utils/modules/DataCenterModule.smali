.class public Lcom/gpc/sdk/utils/modules/DataCenterModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataCenterModule"

.field protected static sessionId:Ljava/lang/String;


# instance fields
.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->dataMap:Ljava/util/Map;

    return-void
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static setSessionId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DataCenterModule"

    if-nez p0, :cond_0

    .line 1
    const-string p0, "sessionId is null. Please check it."

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/sdk/utils/modules/DataCenterModule;->sessionId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    const-string p0, "sessionId is same.Ignore."

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    sget-object v1, Lcom/gpc/sdk/utils/modules/DataCenterModule;->sessionId:Ljava/lang/String;

    .line 10
    sput-object p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->sessionId:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    const-string v2, "SDK not Inited!!"

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-static {v1, p0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    const-string v0, "DataCenterModule"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getDeviceRegisterId()Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 1

    .line 1
    const-string v0, "DeviceRegisterId"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    return-object v0
.end method

.method public getGuestDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "DeviceRegisterId"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getGuestId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "guest_id"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->dataMap:Ljava/util/Map;

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

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "put key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/DataCenterModule;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDeviceRegisterId(Lcom/gpc/sdk/bean/GPCDeviceIdInfo;)V
    .locals 1

    .line 1
    const-string v0, "DeviceRegisterId"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGuestId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "guest_id"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
