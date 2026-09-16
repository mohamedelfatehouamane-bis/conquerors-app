.class public final Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient;
.super Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient$Companion;

.field public static final TAG:Ljava/lang/String; = "DefaultEventHubClient"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient;->Companion:Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;",
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
            "Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    const-string v1, "context"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mode"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "triggerManager"

    move-object/from16 v7, p4

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "provider"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proxy"

    move-object/from16 v15, p12

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "stream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v6, Lcom/gpc/sdk/eventcollection/internal/AWSDefaultKinesisStream;

    invoke-direct {v6, v0}, Lcom/gpc/sdk/eventcollection/internal/AWSDefaultKinesisStream;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 4
    invoke-direct/range {v2 .. v15}, Lcom/gpc/sdk/eventcollection/internal/client/SDKEventHubClient;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/IStreamService;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    and-int/lit8 v0, p14, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object/from16 v6, p5

    :goto_1
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 2
    invoke-direct/range {v1 .. v14}, Lcom/gpc/sdk/eventcollection/internal/client/DefaultEventHubClient;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;Lcom/gpc/sdk/eventcollection/internal/trigger/UploadingTrigger;Ljava/util/ArrayList;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    return-void
.end method
