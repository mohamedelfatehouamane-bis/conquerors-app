.class public final Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter$Companion;

.field private static final TAG:Ljava/lang/String; = "EventNameFilter"


# instance fields
.field private final eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

.field private eventNameFiltersUse:[Ljava/lang/String;

.field private final igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

.field private final proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->Companion:Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    if-eqz p2, :cond_0

    .line 9
    iget-object p1, p2, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->eventNameFiltersUse:[Ljava/lang/String;

    return-void
.end method

.method private final matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->eventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;

    return-object v0
.end method

.method public final getIgxIdEventLimitConfig()Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    return-object v0
.end method

.method public final getProxy()Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    return-object v0
.end method

.method public isAcceptable(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 8

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;->userIds:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "userIds"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    iget-object v5, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->proxy:Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;

    invoke-interface {v5}, Lcom/gpc/sdk/eventcollection/GPCEventCollectionCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->igxIdEventLimitConfig:Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitWithIGXIDConfig;

    iget-object v0, v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventLimitConfig;->eventNameFilters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->eventNameFiltersUse:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->eventNameFiltersUse:[Ljava/lang/String;

    const-string v2, "EventNameFilter"

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-lez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->eventNameFiltersUse:[Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Pattern.matches("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/gpc/sdk/eventcollection/internal/filter/EventNameFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    const-string v5, "ret:false"

    invoke-static {v2, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v5

    .line 21
    const-string v6, ""

    invoke-static {v2, v6, v5}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26
    :cond_3
    const-string p1, "ret:true"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
