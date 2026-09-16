.class public final Lcom/gpc/sdk/eventcollection/internal/client/EventHub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion;

.field private static final KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final KEY_HANDLED_USER_ID:Ljava/lang/String; = "handledUserId"

.field private static final KEY_ORIGIN_USER_ID:Ljava/lang/String; = "originUserId"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static SHAWDOW_DEFAULTCLIENT_IGNORE:Z = false

.field private static final TAG:Ljava/lang/String; = "EventHub"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

.field private final delayEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;",
            ">;"
        }
    .end annotation
.end field

.field private experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

.field private gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

.field private gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private gameId:Ljava/lang/String;

.field private gameVersionCode:Ljava/lang/String;

.field private gameVersionName:Ljava/lang/String;

.field private handledUserId:Ljava/lang/String;

.field private igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

.field private inited:Z

.field private internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

.field private ip:Ljava/lang/String;

.field private isDelayInit:Z

.field private localStorage:Lcom/gpc/util/LocalStorage;

.field private mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

.field private olderUserId:Ljava/lang/String;

.field private proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

.field private sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->Companion:Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionCode:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 25
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/GPCEventCollectionDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/GPCEventCollectionDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->delayEvents:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setSHAWDOW_DEFAULTCLIENT_IGNORE$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->SHAWDOW_DEFAULTCLIENT_IGNORE:Z

    return-void
.end method

.method private final createEventHubClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 14

    .line 1
    new-instance v7, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    invoke-direct {v7}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger;-><init>()V

    invoke-virtual {v7, v0}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;->addTrigger(Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;)V

    .line 4
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const-string v9, "context"

    if-nez v1, :cond_0

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v8

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    .line 10
    iget-object v6, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V

    .line 12
    invoke-virtual {v7, v0}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;->addTrigger(Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;)V

    .line 22
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v8

    :cond_1
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    iget-object v5, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V

    move-object v11, v4

    invoke-virtual {v7, v0}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;->addTrigger(Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;)V

    .line 25
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-direct {v0, v1, v11, v2}, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;-><init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V

    .line 26
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-direct {v1, v2, v11, v3}, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;-><init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 27
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "EventHub"

    if-eqz v11, :cond_2

    .line 32
    iget v2, v11, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    if-nez v2, :cond_2

    .line 33
    const-string v2, "usering PerformanceSnapshotFilter"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotFilter;

    invoke-direct {v2}, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotFilter;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v11, :cond_3

    .line 37
    iget v2, v11, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    if-nez v2, :cond_3

    .line 38
    const-string v2, "usering UserPreferencesFilter"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/filter/UserPreferencesFilter;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/filter/UserPreferencesFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v11, :cond_4

    .line 43
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;

    .line 44
    iget v2, v11, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    .line 45
    invoke-direct {v1, v2}, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;-><init>(I)V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_4
    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    move-object/from16 v2, p2

    if-ne v1, v2, :cond_6

    .line 54
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient;

    .line 55
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    if-nez v2, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v8, v2

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    new-instance v6, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-direct {v6, v0}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;-><init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    move-object v4, v7

    .line 61
    iget-object v7, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->ip:Ljava/lang/String;

    move-object v0, v1

    move-object v1, v8

    .line 62
    iget-object v8, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    .line 63
    iget-object v9, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionCode:Ljava/lang/String;

    .line 65
    iget-object v11, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 66
    iget-object v12, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    move-object v3, p1

    move-object/from16 v10, p4

    .line 67
    invoke-direct/range {v0 .. v12}, Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-object v0

    :cond_6
    move-object v4, v7

    .line 82
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;

    move-object v2, v1

    .line 83
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    .line 84
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    if-nez v3, :cond_7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v8, v3

    .line 85
    :goto_1
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 88
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    new-instance v7, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-direct {v7, v0}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;-><init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    move-object v0, v2

    move-object v2, v8

    .line 90
    iget-object v8, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->ip:Ljava/lang/String;

    .line 91
    iget-object v9, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    .line 92
    iget-object v10, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionCode:Ljava/lang/String;

    .line 94
    iget-object v12, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 95
    iget-object v13, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    move-object/from16 v11, p4

    move-object v5, v4

    move-object v4, p1

    .line 96
    invoke-direct/range {v0 .. v13}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-object v0
.end method

.method private final processAppConfig(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->writeData(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getClientIP()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->ip:Ljava/lang/String;

    return-void
.end method

.method private final writeData(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v0, :cond_0

    const-string v1, "config"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized delayPush(Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 2

    const-string v0, "delayPush:"

    monitor-enter p0

    :try_start_0
    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "event"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventEscalation"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventImportance"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->delayEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->inited:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->pushDelayPush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized experimentalClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "streamService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/PathModule;->getCacheRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/EventCollection/game/KinesisRecorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->createEventHubClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized gameClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "streamService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/PathModule;->getCacheRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/EventCollection/game/KinesisRecorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->createEventHubClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized generateConfig()Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->Companion:Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->verifyEventCollection(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;->create(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v0, :cond_0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final getExperimentalClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final getGameClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final getGameEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final getIgxIdEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-object v0
.end method

.method public final getInited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->inited:Z

    return v0
.end method

.method public final getInternalClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-object v0
.end method

.method public final getSdkEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final declared-synchronized initialize()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "EventHub"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->generateConfig()Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string v0, "EventHub"

    const-string v1, "AWSKinesisStreamConfig is null, Appconfig loaded?"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/AWSGameKinesisStream;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->generateGameStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gpc/sdk/eventcollection/internal/AWSGameKinesisStream;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    .line 9
    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/AWSSDKKinesisStream;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->generateSdkStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gpc/sdk/eventcollection/internal/AWSSDKKinesisStream;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    .line 11
    new-instance v3, Lcom/gpc/sdk/eventcollection/internal/AWSGameKinesisStream;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->generateSdkStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/gpc/sdk/eventcollection/internal/AWSGameKinesisStream;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->getData()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->reset()V

    .line 17
    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->setEventCollectionConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;)V

    .line 21
    :cond_1
    invoke-virtual {p0, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    .line 24
    invoke-virtual {p0, v3}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    .line 27
    invoke-virtual {p0, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    .line 30
    const-string v0, "EventHub"

    const-string v1, "EventHub flush at initialization."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onEventHubInit()V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onEventHubInit()V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onEventHubInit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized internalClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "streamService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->SDK:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/PathModule;->getCacheRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/EventCollection/sdk/KinesisRecorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->createEventHubClient(Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAsyncInit()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/gpc/util/LocalStorage;

    .line 2
    iget-object v2, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    const-string v3, "context"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    .line 3
    :cond_0
    const-string v5, "event_collection.profile"

    invoke-direct {v1, v2, v5}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    .line 7
    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    .line 11
    :cond_2
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v1, :cond_3

    const-string v2, "originUserId"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v1, :cond_4

    const-string v2, "handledUserId"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->handledUserId:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_5
    invoke-static {v1}, Lcom/gpc/util/DeviceUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAppVersionName(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_6
    invoke-static {v1}, Lcom/gpc/util/DeviceUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionCode:Ljava/lang/String;

    .line 16
    sget-boolean v1, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->SHAWDOW_DEFAULTCLIENT_IGNORE:Z

    if-nez v1, :cond_a

    .line 17
    new-instance v9, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    invoke-direct {v9}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;-><init>()V

    .line 18
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushTrigger;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushTrigger;-><init>()V

    invoke-virtual {v9, v1}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;->addTrigger(Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;)V

    .line 20
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;-><init>()V

    .line 21
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 22
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    .line 25
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-direct {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;-><init>()V

    :cond_8
    move-object/from16 v18, v1

    .line 27
    new-instance v5, Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient;

    .line 28
    iget-object v6, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    .line 29
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    goto :goto_3

    :cond_9
    move-object v7, v1

    .line 31
    :goto_3
    new-instance v11, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-direct {v11, v1}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;-><init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    .line 33
    iget-object v13, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionName:Ljava/lang/String;

    .line 34
    iget-object v14, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameVersionCode:Ljava/lang/String;

    .line 37
    iget-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    const/16 v19, 0x14

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 38
    const-string v12, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v5 .. v20}, Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    :cond_a
    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    .line 2
    const-string v1, "primary_app_config_notification"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    .line 4
    const-string v1, "main_activity_setted"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    .line 6
    const-string v1, "primary_app_config_load_failed_notification"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onDestroy()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onDestroy()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onDestroy()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onDestroy()V

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->inited:Z

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onGameIdChanged:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", current gameId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventHub"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v0, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onGameIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onGameIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onGameIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onGameIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_3
    :goto_0
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameId:Ljava/lang/String;

    return-void
.end method

.method public onInitFinish()V
    .locals 8

    .line 1
    const-string v0, "EventHub"

    .line 0
    const-string v1, "onUserIdChanged:"

    .line 1
    :try_start_0
    sget-object v2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->flushPendingSendEvent()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->handledUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current userId:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "currentUserId"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    .line 13
    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v1, :cond_4

    const-string v2, "handledUserId"

    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->olderUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 24
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 3

    .line 1
    const-string v0, "EventHub"

    const-string v1, "onNotification"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "primary_app_config_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.gpc.sdk.notification.bean.LoadedPrimaryAppConfigEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object p1

    .line 7
    const-string v0, "appConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->processAppConfig(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)V

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->initialize()V

    .line 9
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->pushDelayPush()V

    .line 10
    iput-boolean v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->inited:Z

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "main_activity_setted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->updateActivity(Landroid/app/Activity;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->updateActivity(Landroid/app/Activity;)V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->updateActivity(Landroid/app/Activity;)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->updateActivity(Landroid/app/Activity;)V

    return-void

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "primary_app_config_load_failed_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onEventHubInit()V

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->pushDelayPush()V

    .line 26
    iput-boolean v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->inited:Z

    :cond_7
    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "EventHub"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    .line 3
    const-string v1, "primary_app_config_notification"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "main_activity_setted"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    .line 6
    const-string v1, "primary_app_config_load_failed_notification"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 7
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->context:Landroid/content/Context;

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->isDelayInit()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->isDelayInit:Z

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionIdChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIGXIdChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_3

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v0, :cond_4

    const-string v1, "userId"

    invoke-virtual {v0, v1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz v0, :cond_5

    const-string v1, "originUserId"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->localStorage:Lcom/gpc/util/LocalStorage;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/LocalStorage;->remove(Ljava/lang/String;)V

    .line 21
    :cond_6
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->userId:Ljava/lang/String;

    return-void
.end method

.method public final purgeBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->purgeBuffer()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->purgeBuffer()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->purgeBuffer()V

    :cond_2
    return-void
.end method

.method public final declared-synchronized pushDelayPush()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "EventHub"

    const-string v1, "pushDelayPush"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->delayEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;

    .line 7
    sget-object v2, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getType()Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 8
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    move-result-object v3

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEventEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v4

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEventImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v2, :cond_4

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    move-result-object v3

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEventEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v4

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEventImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    .line 15
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    move-result-object v3

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEventEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v4

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->getEventImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    .line 18
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    const-string v1, "EventHub"

    const-string v2, "logGenerateOAIDTimeEvent Exception"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "EventHub"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 3
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 6
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    .line 7
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->experimentalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    .line 8
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->internalClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    .line 9
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->defaultClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method

.method public final setEventCollectionConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const-string v1, "it.mode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 4
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "sdk"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getSDKMaxRecordCount()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getSDKMaxCacheSize()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getSDKSendInternal()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getSDKEventLevel()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    .line 11
    :goto_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getSDKEventNameFilters()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    .line 12
    :goto_3
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getSDKDetaiEnable()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    .line 15
    :goto_4
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "game"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 18
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getGameMaxRecordCount()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    .line 19
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getGameMaxCacheSize()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    .line 20
    :goto_5
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getGameSendInternal()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    .line 21
    :goto_6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getGameEventLevel()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    .line 22
    :goto_7
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getGameEventNameFilters()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    .line 25
    :goto_8
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 26
    const-string v1, "Users"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 31
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentIGXIDMaxRecordCount()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    .line 32
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-nez v0, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentIGXIDMaxCacheSize()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    .line 33
    :goto_9
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentIGXIDSendInternal()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    .line 34
    :goto_a
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-nez v0, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentIGXIDEventLevel()I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    .line 35
    :goto_b
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentUserIdEventNameFilters()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    .line 36
    :goto_c
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-nez v0, :cond_e

    goto :goto_d

    :cond_e
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentIGXIDs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    .line 37
    :goto_d
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-nez v0, :cond_f

    goto :goto_e

    :cond_f
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getCurrentIGXIDSDKDetaiEnable()I

    move-result p1

    iput p1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    .line 41
    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ip:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventHub"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mode:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "limit:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setGameEventLimitConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->gameEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-void
.end method

.method public final setIgxIdEventLimitConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-void
.end method

.method public final setInited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->inited:Z

    return-void
.end method

.method public final setProxy(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-void
.end method

.method public final setSdkEventLimitConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub;->sdkEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-void
.end method
