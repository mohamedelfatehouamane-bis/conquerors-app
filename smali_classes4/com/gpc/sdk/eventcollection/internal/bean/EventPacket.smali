.class public abstract Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

.field private final event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

.field private final gameVersionCode:Ljava/lang/String;

.field private final gameVersionName:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final level:I


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->context:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->ip:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->level:I

    .line 6
    iput-object p5, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->gameVersionName:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->gameVersionCode:Ljava/lang/String;

    return-void
.end method

.method private final createAppJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->gameVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->gameVersionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final createEventJsonObject()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->level:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gpc/util/TimeUtils;->formatTimeWithDecimalPoint3(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->ip:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->context:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lifecycle_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getServerTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "server_time"

    cmp-long v6, v3, v1

    if-nez v6, :cond_0

    .line 10
    const-string v1, "0"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getServerTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gpc/util/TimeUtils;->formatTimeWithDecimalPoint3(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getValueKeyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getValue()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final getContext()Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->context:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

    return-object v0
.end method

.method public abstract getCount()I
.end method

.method public final getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->event:Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    return-object v0
.end method

.method public final getGameVersionCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->gameVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getGameVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->gameVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLength()I
.end method

.method public final getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->level:I

    return v0
.end method

.method public abstract getValueKeyName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public final stringify()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->createEventJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->context:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->createAppJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ret.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
