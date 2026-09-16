.class public Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x1

.field public static final DEFAULT_LEVEL:I = 0x1ff

.field public static final DEFAULT_RECORD_COUNT:I = 0x1

.field public static final DEFAULT_SEND_INTERNAL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "EventCollectionConfig"


# instance fields
.field private common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

.field private currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field public mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

.field private sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 3
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "common"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 5
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "sdk"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 6
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "current SDK Version"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 7
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "game"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 8
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v1, "current Game Version"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 9
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const-string v1, "current Users"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 13
    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    .line 14
    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    const/16 v2, 0x1e

    .line 15
    iput v2, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    const/16 v2, 0x1ff

    .line 16
    iput v2, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    const/4 v2, 0x0

    .line 17
    iput v2, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    .line 18
    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    const/16 v2, 0x32

    .line 19
    iput v2, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    .line 20
    iput v1, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;-><init>()V

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->generate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private generate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "ec"

    invoke-static {p1, v0}, Lcom/gpc/util/DataInterchangeFormatUtils;->getValueByKeyFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "v1"

    invoke-static {v0, v1}, Lcom/gpc/util/DataInterchangeFormatUtils;->getValueByKeyFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p1, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getMode(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v0, "global"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->generate(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v0, "sdk"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->generate(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sdk-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/VersionUtil;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->generate(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    const-string v0, "game"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->generate(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "game-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->generate(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const-string p2, "user"

    invoke-virtual {p1, v1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->generate(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private static getFlags(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    const-string p0, "flags"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "sdk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    const-string v0, "EventCollectionConfig"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static getMode(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->getFlags(Ljava/lang/String;)I

    move-result p0

    .line 5
    :try_start_0
    const-string v0, "streams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    const-string v0, "EventCollectionConfig"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    .line 15
    sget-object p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->OnlyRecord:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object p0

    .line 19
    :cond_2
    :goto_1
    sget-object p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Close:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object p0
.end method


# virtual methods
.method public getCurrentIGXIDEventLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0
.end method

.method public getCurrentIGXIDMaxCacheSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0
.end method

.method public getCurrentIGXIDMaxRecordCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0
.end method

.method public getCurrentIGXIDSDKDetaiEnable()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetailValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    return v0
.end method

.method public getCurrentIGXIDSendInternal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0
.end method

.method public getCurrentIGXIDs()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserIdEventNameFilters()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventNameFiltersValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0
.end method

.method public getGameEventLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0
.end method

.method public getGameEventNameFilters()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventNameFiltersValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventNameFiltersValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0
.end method

.method public getGameMaxCacheSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0
.end method

.method public getGameMaxRecordCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0
.end method

.method public getGameSendInternal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0
.end method

.method public getPerformanceSnapshotEnable()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshotValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    return v0
.end method

.method public getPerformanceSnapshotTimesCapEnable()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshotTimesCapValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    return v0
.end method

.method public getSDKDetaiEnable()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetailValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetailValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetailValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    return v0
.end method

.method public getSDKEventLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventLevelValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    return v0
.end method

.method public getSDKEventNameFilters()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventNameFiltersValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isEventNameFiltersValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    return-object v0
.end method

.method public getSDKMaxCacheSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxCacheSizeValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    return v0
.end method

.method public getSDKMaxRecordCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isMaxRecordCountValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    return v0
.end method

.method public getSDKSendInternal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSendInternalValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    return v0
.end method

.method public getUserPreferencesEnable()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferencesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->defaultConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->common:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->sdk:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentSDKVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->game:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentGameVersion:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;->currentIGXID:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
