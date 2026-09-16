.class public final Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector$Companion;

.field public static final TAG:Ljava/lang/String; = "GPCUnmanagedEventCollector"


# instance fields
.field private eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->Companion:Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method

.method private final getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method private final internalPush(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    invoke-direct {v0, p2, p3}, Lcom/gpc/sdk/eventcollection/bean/GPCEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->setEventId(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    invoke-direct {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;-><init>(Lcom/gpc/sdk/eventcollection/bean/GPCEvent;)V

    .line 6
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 7
    invoke-virtual {p1, p5}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 8
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object p2

    if-nez p2, :cond_1

    .line 10
    const-string p1, "GPCUnmanagedEventCollector"

    const-string p2, "EventCollection has not inited"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method


# virtual methods
.method public final deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "escalation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v2, ""

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->internalPush(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final getEventHubClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "escalation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;->serialize()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final push(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 7

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importance"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "escalation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;->serialize()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->internalPush(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final setEventHubClient(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCUnmanagedEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method
