.class public final Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private IGXID:Ljava/lang/String;

.field private adid:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private lifecycleId:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private uiid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->IGXID:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->gameId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->uiid:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->udid:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->adid:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->oaid:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->sessionId:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->lifecycleId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x20

    const-string v0, ""

    if-eqz p10, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_2

    move-object p9, v0

    goto :goto_0

    :cond_2
    move-object p9, p8

    :goto_0
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 13
    invoke-direct/range {p1 .. p9}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->adid:Ljava/lang/String;

    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIGXID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->IGXID:Ljava/lang/String;

    return-object v0
.end method

.method public final getLifecycleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->lifecycleId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public final getUiid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->uiid:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->adid:Ljava/lang/String;

    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->gameId:Ljava/lang/String;

    return-void
.end method

.method public final setIGXID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->IGXID:Ljava/lang/String;

    return-void
.end method

.method public final setLifecycleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->lifecycleId:Ljava/lang/String;

    return-void
.end method

.method public final setOaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->oaid:Ljava/lang/String;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setUdid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->udid:Ljava/lang/String;

    return-void
.end method

.method public final setUiid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->uiid:Ljava/lang/String;

    return-void
.end method

.method public final toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->IGXID:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->gameId:Ljava/lang/String;

    const-string v2, "game_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->uiid:Ljava/lang/String;

    const-string v2, "uiid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->udid:Ljava/lang/String;

    const-string v2, "udid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->adid:Ljava/lang/String;

    const-string v2, "adid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->oaid:Ljava/lang/String;

    const-string v2, "oaid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;->sessionId:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
