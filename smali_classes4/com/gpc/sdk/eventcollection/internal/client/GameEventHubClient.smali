.class public final Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient;
.super Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient$Companion;

.field private static final TAG:Ljava/lang/String; = "GameEventHubClient"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient;->Companion:Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;",
            "Lcom/gpc/sdk/eventcollection/internal/IStreamService;",
            "Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;",
            ">;",
            "Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;",
            "Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;",
            "Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct/range {p0 .. p12}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    and-int/lit8 v0, p13, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v0, p13, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_2

    move-object v6, v1

    move-object v2, p1

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v1, p0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 2
    :goto_2
    invoke-direct/range {v1 .. v13}, Lcom/gpc/sdk/eventcollection/internal/client/GameEventHubClient;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method


# virtual methods
.method public createEventPacket(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;I)Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/bean/SingleEventPacket;

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getProvider()Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;->createEventPacketContext()Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getIp()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getGameVersionName()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getGameVersionCode()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move v5, p2

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/gpc/sdk/eventcollection/internal/bean/SingleEventPacket;-><init>(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "game."

    return-object v0
.end method

.method public onEventHubInit()V
    .locals 2

    .line 1
    const-string v0, "GameEventHubClient"

    const-string v1, "onEventHubInit"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EmptyEventPacket;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EmptyEventPacket;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z

    return-void
.end method

.method public onGameIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "newGameId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGameIdChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameEventHubClient"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->flush()V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "current"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "newUserId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "newUserId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
