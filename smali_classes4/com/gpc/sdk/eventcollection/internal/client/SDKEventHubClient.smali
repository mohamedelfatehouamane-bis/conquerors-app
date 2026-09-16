.class public Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;
.super Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient$Companion;

.field private static final TAG:Ljava/lang/String; = "SDKEventHubClient"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->Companion:Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerManager"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    move-object/from16 v13, p13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 3
    invoke-direct/range {v1 .. v13}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    .line 4
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    and-int/lit8 v0, p14, 0x4

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    :goto_0
    and-int/lit8 v0, p14, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p4

    :goto_1
    and-int/lit8 v0, p14, 0x20

    if-eqz v0, :cond_2

    move-object v7, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object v1, p0

    goto :goto_2

    :cond_2
    move-object/from16 v7, p6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 2
    :goto_2
    invoke-direct/range {v1 .. v14}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method

.method private final sendDeviceEventByCondition()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->getDeviceEvent()Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->generateByCondition(Landroid/app/Activity;)Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v1

    const-string v2, "SDKEventHubClient"

    if-eqz v1, :cond_1

    .line 4
    const-string v3, "should send DeviceEvent."

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->Companion:Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;

    invoke-virtual {v3}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;->getESCALATION()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v4

    invoke-virtual {v3}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;->getIMPORTANCE()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v3

    invoke-virtual {p0, v1, v4, v3}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getValue()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->update(Lorg/json/JSONObject;)V

    .line 8
    const-string v0, "record device Event success."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    const-string v0, "record device Event error!!"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    const-string v0, "should not send DeviceEvent!"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createEventPacket(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;I)Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventWithCompositeValuePacket;

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
    invoke-direct/range {v1 .. v7}, Lcom/gpc/sdk/eventcollection/internal/bean/EventWithCompositeValuePacket;-><init>(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getDeviceEvent()Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getVipsEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SDKEventHubClient"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getVipsEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v4, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    move-result-object v4

    invoke-interface {v4}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5
    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    const-string v4, "it.userIds"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    move-result-object v7

    invoke-interface {v7}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v6, v3, v8, v9}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    const-string v0, "Is vip player"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getVipsEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetailValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 27
    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "vipsEventLimitConfig isSDKDetailValid:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 30
    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetailValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->isSDKDetail:I

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 32
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "eventLimitConfig isSDKDetailValid:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v3, v1

    :cond_4
    if-nez v3, :cond_5

    .line 45
    const-string v0, "SDKDeviveEvent"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;

    .line 47
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;

    .line 49
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getProvider()Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    move-result-object v4

    .line 51
    invoke-direct {v2, v3, v4}, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;)V

    .line 52
    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;)V

    return-object v0

    .line 60
    :cond_5
    const-string v0, "SDKDeviveDetailedEvent"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;

    .line 62
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;

    .line 64
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->getProvider()Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    move-result-object v4

    .line 66
    invoke-direct {v2, v3, v4}, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;)V

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;-><init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;)V

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sdk."

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onEventHubInit()V
    .locals 2

    .line 1
    const-string v0, "SDKEventHubClient"

    const-string v1, "onEventHubInit"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->sendDeviceEventByCondition()V

    .line 4
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

    const-string p2, "SDKEventHubClient"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->sendDeviceEvent()V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionIdChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDKEventHubClient"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->sendGameSessionEvent()V

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "newUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIGXIdChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKEventHubClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    const-string p1, "sendDeviceEvent user first login"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->sendDeviceEvent()V

    :cond_0
    return-void
.end method

.method public onUserIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "newUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUserIdChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDKEventHubClient"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->sendDeviceEvent()V

    return-void
.end method

.method public final sendDeviceEvent()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->getDeviceEvent()Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->generate(Landroid/app/Activity;)Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->Companion:Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;->getESCALATION()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v3

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;->getIMPORTANCE()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    move-result v2

    const-string v3, "SDKEventHubClient"

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getValue()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->update(Lorg/json/JSONObject;)V

    .line 6
    const-string v0, "record device Event success."

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    const-string v0, "record device Event error!!"

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendGameSessionEvent()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "sdk.game.session.created"

    invoke-direct {v0, v2, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->Companion:Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;->getESCALATION()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;->getIMPORTANCE()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Z

    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->updateActivity(Landroid/app/Activity;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;->activity:Landroid/app/Activity;

    return-void
.end method
