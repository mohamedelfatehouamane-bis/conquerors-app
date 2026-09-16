.class public final Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger$Companion;

.field private static final LAST_FLUSH_TIMESTAMP:Ljava/lang/String; = "last_flush_timestamp"

.field private static final TAG:Ljava/lang/String; = "FlushingCycleTrigger"


# instance fields
.field private final context:Landroid/content/Context;

.field private final eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private final flushingCycleTriggerProfile:Lcom/gpc/util/LocalStorage;

.field private final igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

.field private final proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

.field private sendInternalUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->Companion:Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 6
    iput-object p5, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-eqz p4, :cond_0

    .line 13
    iget p3, p4, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    goto :goto_0

    :cond_0
    const/16 p3, 0x1e

    :goto_0
    iput p3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->sendInternalUse:I

    .line 14
    new-instance p3, Lcom/gpc/util/LocalStorage;

    .line 16
    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/sdk/utils/common/GPCConstant$PERSISTENCE_FILE_NAME;->EVENT_COLLECTION_FLUSHING_CYCLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-direct {p3, p1, p2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->flushingCycleTriggerProfile:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public flushed(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->flushingCycleTriggerProfile:Lcom/gpc/util/LocalStorage;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_flush_timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final getIgxIdEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-object v0
.end method

.method public final getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-object v0
.end method

.method public shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 9

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "userIds"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 4
    iget-object v4, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-interface {v4}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget p1, p1, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->sendInternal:I

    iput p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->sendInternalUse:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->flushingCycleTriggerProfile:Lcom/gpc/util/LocalStorage;

    const-string v1, "last_flush_timestamp"

    invoke-virtual {p1, v1}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 15
    const-string v3, "lastFlushTimestamp"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    iget v5, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->sendInternalUse:I

    const v6, 0xea60

    mul-int v5, v5, v6

    int-to-long v7, v5

    cmp-long v5, v3, v7

    if-lez v5, :cond_2

    const/4 v0, 0x1

    .line 19
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/FlushingCycleTrigger;->sendInternalUse:I

    mul-int p1, p1, v6

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    const-string v1, "FlushingCycleTrigger"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
