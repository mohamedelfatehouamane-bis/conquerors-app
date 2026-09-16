.class public Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID:I = -0x1

.field public static final MAX_LEVEL:I = 0x1ff

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EventLimitConfig"


# instance fields
.field public eventLevel:I

.field public eventNameFilters:[Ljava/lang/String;

.field public isPerformanceSnapshot:I

.field public isSDKDetail:I

.field public isUserPreferences:I

.field public maxCacheSize:I

.field public maxRecordCount:I

.field public name:Ljava/lang/String;

.field public performanceSnapshotTimesCap:I

.field public sendInternal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    .line 4
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    .line 5
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    .line 6
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    .line 7
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    .line 8
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    .line 9
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    .line 10
    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    .line 13
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generate(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9

    const-string v0, "timesCap"

    const-string v1, "game-user_preferences"

    const-string v2, "game-performance_snapshot"

    const-string v3, "sdk-device-detailed"

    const-string v4, "events"

    const-string v5, "levels"

    const-string v6, "edges"

    const-string v7, "discarded"

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1, v7}, Lcom/gpc/util/JsonParserUtils;->getStringArrayFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_1

    .line 7
    invoke-static {p1, v6}, Lcom/gpc/util/JsonParserUtils;->getIntArrayFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    array-length v6, p2

    if-lez v6, :cond_1

    .line 9
    aget v6, p2, v8

    iput v6, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    .line 10
    aget v6, p2, v7

    iput v6, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    const/4 v6, 0x2

    .line 11
    aget p2, p2, v6

    iput p2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    .line 14
    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 15
    invoke-static {p1, v5}, Lcom/gpc/util/JsonParserUtils;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    .line 18
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 19
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "on"

    if-nez p2, :cond_4

    .line 21
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 22
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    invoke-static {p2, v4}, Lcom/gpc/util/JsonParserUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 25
    iput v7, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    goto :goto_0

    .line 27
    :cond_3
    iput v8, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    .line 32
    :cond_4
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 33
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 34
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 35
    invoke-static {p2, v4}, Lcom/gpc/util/JsonParserUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    iput v7, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    goto :goto_1

    .line 39
    :cond_5
    iput v8, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    .line 43
    :cond_6
    :goto_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 44
    invoke-static {p2, v0}, Lcom/gpc/util/JsonParserUtils;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_7

    .line 46
    iput p2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    .line 51
    :cond_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 54
    invoke-static {p1, v4}, Lcom/gpc/util/JsonParserUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 56
    iput v7, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    return-void

    .line 58
    :cond_8
    iput v8, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    const-string p2, "EventLimitConfig"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public isEventLevelValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEventNameFiltersValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/collection/Arrays;->isValid([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMaxCacheSizeValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMaxRecordCountValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPerformanceSnapshotTimesCapValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->performanceSnapshotTimesCap:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPerformanceSnapshotValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isPerformanceSnapshot:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSDKDetailValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSendInternalValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserPreferencesValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isUserPreferences:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{eventNameFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxRecordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
