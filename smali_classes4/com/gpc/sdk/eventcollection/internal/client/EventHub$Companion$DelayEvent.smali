.class public final Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayEvent"
.end annotation


# instance fields
.field private event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

.field private eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field private eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

.field private type:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventEscalation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventImportance"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->type:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method


# virtual methods
.method public final getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    return-object v0
.end method

.method public final getEventEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object v0
.end method

.method public final getEventImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-object v0
.end method

.method public final getType()Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->type:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    return-object v0
.end method

.method public final setEvent(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    return-void
.end method

.method public final setEventEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-void
.end method

.method public final setEventImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method

.method public final setType(Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/client/EventHub$Companion$DelayEvent;->type:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    return-void
.end method
