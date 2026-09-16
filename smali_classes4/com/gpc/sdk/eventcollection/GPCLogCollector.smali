.class public Lcom/gpc/sdk/eventcollection/GPCLogCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/GPCLogCollector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/GPCLogCollector$Companion;

.field public static final LOG_EVENT_NAME:Ljava/lang/String; = "_.log"

.field public static final TAG:Ljava/lang/String; = "GPCLogCollector"


# instance fields
.field private eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;


# direct methods
.method public static synthetic $r8$lambda$-iYW6y0CWMz8ROcEj9ZGzLTtlkg(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->send$lambda$0(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCLogCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->Companion:Lcom/gpc/sdk/eventcollection/GPCLogCollector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method

.method private final createEventPackage(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance p1, Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    const-string v1, "_.log"

    invoke-direct {p1, v1, v0}, Lcom/gpc/sdk/eventcollection/bean/GPCEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;-><init>(Lcom/gpc/sdk/eventcollection/bean/GPCEvent;)V

    return-object v0
.end method

.method private final getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method private final send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->getClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/EventCollectionExcutor;->instance()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final send$lambda$0(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V
    .locals 1

    const-string v0, "$eventPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1
    const-string p0, "GPCEventCollector"

    const-string p1, "EventCollection has not inited"

    invoke-static {p0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->createEventPackage(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->createEventPackage(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->IMPORTANT:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method

.method public final fatal(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->createEventPackage(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method

.method public final getEventHubClient()Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-object v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->createEventPackage(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->BASIC:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method

.method public final setEventHubClient(Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->eventHubClient:Lcom/gpc/sdk/eventcollection/internal/client/EventHubClient;

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->createEventPackage(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->IMPORTANT:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/GPCLogCollector;->send(Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;)V

    return-void
.end method
