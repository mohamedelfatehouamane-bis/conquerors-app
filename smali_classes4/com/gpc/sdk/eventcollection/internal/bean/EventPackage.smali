.class public Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected escalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field protected event:Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

.field protected importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/bean/GPCEvent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    .line 7
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->escalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 8
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->event:Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    return-void
.end method


# virtual methods
.method public getEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->escalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object v0
.end method

.method public getEvent()Lcom/gpc/sdk/eventcollection/bean/GPCEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->event:Lcom/gpc/sdk/eventcollection/bean/GPCEvent;

    return-object v0
.end method

.method public getImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-object v0
.end method

.method public setEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->escalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-void
.end method

.method public setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventPackage;->importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method
