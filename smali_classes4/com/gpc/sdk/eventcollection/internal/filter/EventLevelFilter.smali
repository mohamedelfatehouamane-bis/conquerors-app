.class public final Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter$Companion;

.field private static final TAG:Ljava/lang/String; = "EventLevelFilter"


# instance fields
.field private final eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private final igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

.field private limitLevelUse:I

.field private final proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->Companion:Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-eqz p2, :cond_0

    .line 9
    iget p1, p2, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x1ff

    :goto_0
    iput p1, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->limitLevelUse:I

    return-void
.end method


# virtual methods
.method public final getEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final getIgxIdEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-object v0
.end method

.method public final getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-object v0
.end method

.method public isAcceptable(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 7

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.device"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v2, "sdk.device.detailed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, "userIds"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 14
    iget-object v6, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-interface {v6}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventLevel:I

    iput v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->limitLevelUse:I

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getLevel()I

    move-result p1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "limitLevelUse level:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->limitLevelUse:I

    const/4 v4, 0x2

    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "toString(this, checkRadix(radix))"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EventLevelFilter"

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "packet level:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventLevelFilter;->limitLevelUse:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 29
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ret:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return v1
.end method
