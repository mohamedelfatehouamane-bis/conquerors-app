.class public final Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger$Companion;

.field private static final RECORD_COUNT:Ljava/lang/String; = "record_count"

.field private static final TAG:Ljava/lang/String; = "VolumeTrigger"


# instance fields
.field private final cacheDir:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private final igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

.field private maxCacheSizeUse:I

.field private maxRecordCountUse:I

.field private final proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

.field private recordCount:I

.field private final volumeTriggerProfile:Lcom/gpc/util/LocalStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->Companion:Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->cacheDir:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    .line 6
    iput-object p5, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 7
    iput-object p6, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const/4 p3, 0x1

    if-eqz p5, :cond_0

    .line 17
    iget p4, p5, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    :goto_0
    iput p4, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxRecordCountUse:I

    if-eqz p5, :cond_1

    .line 18
    iget p3, p5, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    :cond_1
    iput p3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxCacheSizeUse:I

    .line 20
    new-instance p3, Lcom/gpc/util/LocalStorage;

    .line 22
    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/sdk/utils/common/GPCConstant$PERSISTENCE_FILE_NAME;->EVENT_COLLECTION_VOLUME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-direct {p3, p1, p2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->volumeTriggerProfile:Lcom/gpc/util/LocalStorage;

    .line 27
    const-string p1, "record_count"

    invoke-virtual {p3, p1}, Lcom/gpc/util/LocalStorage;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "volumeTriggerProfile.readInt(RECORD_COUNT)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->recordCount:I

    return-void
.end method

.method private final isReachMaxCacheSize(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getLength()I

    move-result p1

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->cacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "VolumeTrigger"

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    array-length v1, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v7, v0, v6

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cache length."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, p1

    add-long/2addr v4, v0

    .line 18
    iget p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxCacheSizeUse:I

    const/high16 v0, 0x100000

    mul-int p1, p1, v0

    int-to-long v0, p1

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method


# virtual methods
.method public flushed(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->recordCount:I

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->volumeTriggerProfile:Lcom/gpc/util/LocalStorage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "record_count"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final getCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->cacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final getIgxIdEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-object v0
.end method

.method public final getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-object v0
.end method

.method public shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 6

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4
    iget-object v5, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-interface {v5}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v2, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxRecordCount:I

    iput v2, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxRecordCountUse:I

    .line 6
    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->maxCacheSize:I

    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxCacheSizeUse:I

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_2
    :goto_2
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->recordCount:I

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->recordCount:I

    .line 15
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->volumeTriggerProfile:Lcom/gpc/util/LocalStorage;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "record_count"

    invoke-virtual {v2, v3, v0}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cache:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VolumeTrigger"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "maxRecordCountUse:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxRecordCountUse:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->recordCount:I

    iget v3, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->maxRecordCountUse:I

    if-lt v0, v3, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->isReachMaxCacheSize(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_3
    const/4 v1, 0x1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "recordCount:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/trigger/VolumeTrigger;->recordCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
