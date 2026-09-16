.class public final Lcom/gpc/sdk/eventcollection/internal/bean/EmptyEventPacket;
.super Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

    const/16 v9, 0xe0

    const/4 v10, 0x0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, ""

    invoke-direct {v2, v3, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v5, ""

    const-string v6, ""

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;-><init>(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValueKeyName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "value"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "v4"

    return-object v0
.end method
