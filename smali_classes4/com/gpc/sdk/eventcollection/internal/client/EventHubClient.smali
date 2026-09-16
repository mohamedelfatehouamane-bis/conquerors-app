.class public abstract Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient$Companion;

.field public static final PREFIX_GAME:Ljava/lang/String; = "game."

.field public static final PREFIX_SDK:Ljava/lang/String; = "sdk."

.field private static final TAG:Ljava/lang/String; = "EventHubClient"


# instance fields
.field private context:Landroid/content/Context;

.field private eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;",
            ">;"
        }
    .end annotation
.end field

.field private gameVersionCode:Ljava/lang/String;

.field private gameVersionName:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

.field private provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

.field private proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

.field private stream:Lcom/gpc/sdk/eventcollection/internal/IStreamService;

.field private triggerManager:Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

.field private vipsEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->Companion:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient$Companion;

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->stream:Lcom/gpc/sdk/eventcollection/internal/IStreamService;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->triggerManager:Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    .line 6
    iput-object p5, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->filters:Ljava/util/ArrayList;

    .line 7
    iput-object p6, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    .line 8
    iput-object p7, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->ip:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->gameVersionName:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->gameVersionCode:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 12
    iput-object p11, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->vipsEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    .line 13
    iput-object p12, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    and-int/lit8 v0, p13, 0x2

    if-eqz v0, :cond_0

    .line 14
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

    .line 15
    :goto_2
    invoke-direct/range {v1 .. v13}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method

.method private final isEventDiscard(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->filters:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;

    .line 3
    invoke-interface {v1, p1}, Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;->isAcceptable(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public abstract createEventPacket(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;I)Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;
.end method

.method public final flush()V
    .locals 2

    .line 1
    const-string v0, "EventHubClient"

    const-string v1, "flush"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->stream:Lcom/gpc/sdk/eventcollection/internal/IStreamService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gpc/sdk/eventcollection/internal/IStreamService;->flush()V

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final getFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->filters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getGameVersionCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->gameVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getGameVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->gameVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public final getProvider()Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    return-object v0
.end method

.method public final getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-object v0
.end method

.method public final getTriggerManager()Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->triggerManager:Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    return-object v0
.end method

.method public final getVipsEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->vipsEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public abstract onEventHubInit()V
.end method

.method public abstract onGameIdChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final purgeBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->stream:Lcom/gpc/sdk/eventcollection/internal/IStreamService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gpc/sdk/eventcollection/internal/IStreamService;->purgeBuffer()V

    :cond_0
    return-void
.end method

.method public final send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V
    .locals 3

    const-string v0, "eventPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->getEvent()Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "EventHubClient"

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "event name is null."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->getImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    const-string p1, "event importance is null, Please predefined event or set event importance!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->getEvent()Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    move-result-object v0

    const-string v1, "eventPackage.event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->getEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v1

    const-string v2, "eventPackage.escalation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->getImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object p1

    const-string v2, "eventPackage.importance"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    return-void
.end method

.method public send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventEscalation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importanceGPC"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventHubClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    sget-object v2, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Close:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 14
    const-string p1, "mode is close!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 18
    :cond_0
    invoke-virtual {p3}, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->getValue()I

    move-result p3

    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->getValue()I

    move-result p2

    add-int/2addr p3, p2

    .line 20
    invoke-virtual {p0, p1, p3}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->createEventPacket(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;I)Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->isEventDiscard(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getPrefix()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p3, v3, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->setName(Ljava/lang/String;)V

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "write event: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->stringify()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->stream:Lcom/gpc/sdk/eventcollection/internal/IStreamService;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/gpc/sdk/eventcollection/internal/IStreamService;->write(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V

    .line 29
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v3
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->context:Landroid/content/Context;

    return-void
.end method

.method public final setEventLimitConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-void
.end method

.method public final setFilters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->filters:Ljava/util/ArrayList;

    return-void
.end method

.method public final setGameVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->gameVersionCode:Ljava/lang/String;

    return-void
.end method

.method public final setGameVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->gameVersionName:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setProvider(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    return-void
.end method

.method public final setProxy(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-void
.end method

.method public final setTriggerManager(Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->triggerManager:Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    return-void
.end method

.method public final setVipsEventLimitConfig(Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->vipsEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-void
.end method

.method public final shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 3

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->triggerManager:Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;->shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->mode:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    sget-object v2, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->flush()V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->triggerManager:Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;->flushed(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
