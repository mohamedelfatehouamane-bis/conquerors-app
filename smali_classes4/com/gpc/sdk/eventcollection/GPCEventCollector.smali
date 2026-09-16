.class public Lcom/gpc/sdk/eventcollection/GPCEventCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/GPCEventCollector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/GPCEventCollector$Companion;

.field public static final TAG:Ljava/lang/String; = "GPCEventCollector"


# instance fields
.field private eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

.field private hasInit:Z

.field private predefinedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCEventCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCEventCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->Companion:Lcom/gpc/sdk/eventcollection/GPCEventCollector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method

.method private final getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method private final internalPush(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->hasInit:Z

    const-string v1, "GPCEventCollector"

    if-nez v0, :cond_0

    .line 2
    const-string p1, "Have EventCollector initialized yet?"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    invoke-direct {v0, p2, p3}, Lcom/gpc/sdk/eventcollection/bean/GPCEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->setEventId(Ljava/lang/String;)V

    .line 10
    :cond_1
    new-instance p1, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    invoke-direct {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;-><init>(Lcom/gpc/sdk/eventcollection/bean/GPCEvent;)V

    .line 11
    invoke-virtual {p1, p4}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 12
    iget-object p3, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->predefinedEvents:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 13
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;

    .line 14
    invoke-virtual {p4}, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p4}, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->getImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object p2

    if-nez p2, :cond_4

    .line 23
    const-string p1, "EventCollection has not inited"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_4
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method


# virtual methods
.method public final deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "escalation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->internalPush(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final getEventHubClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->hasInit:Z

    if-nez v0, :cond_0

    .line 2
    const-string v0, "GPCEventCollector"

    const-string v1, "EventCollector initialize"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->predefinedEvents:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->hasInit:Z

    :cond_0
    return-void
.end method

.method public final push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final push(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "escalation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;->serialize()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, v0, p3}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->deprecatedPush(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final push(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "escalation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/gpc/sdk/eventcollection/bean/GPCEventValue;->serialize()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->internalPush(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    return-void
.end method

.method public final setEventHubClient(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCEventCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method
