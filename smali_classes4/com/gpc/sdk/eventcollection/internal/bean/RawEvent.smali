.class public Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventId:Ljava/lang/String;

.field private final initTime:J

.field private name:Ljava/lang/String;

.field private final serverTime:J

.field private value:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->value:Lorg/json/JSONObject;

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "randomUUID().toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->eventId:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->initTime:J

    .line 11
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->generateServerTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->serverTime:J

    return-void
.end method


# virtual methods
.method public final generateServerTime()J
    .locals 5

    .line 1
    const-string v0, "AWSKinesisStream"

    .line 0
    const-string v1, "severTimestamp:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->isSynchronizedServerTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->getSeverTimestamp()J

    move-result-wide v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2

    .line 6
    :cond_0
    const-string v1, "without Async Server Time"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->serverTime:J

    return-wide v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->initTime:J

    return-wide v0
.end method

.method public final getValue()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->value:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final setEventId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->eventId:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->value:Lorg/json/JSONObject;

    return-void
.end method
