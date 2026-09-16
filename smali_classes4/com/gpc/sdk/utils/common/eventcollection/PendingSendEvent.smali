.class public final Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

.field private eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field private eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventEscalation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventImportance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    iput-object p2, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    iput-object p3, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method

.method public static synthetic copy$default(Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;ILjava/lang/Object;)Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->copy(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;
    .locals 1

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    return-object v0
.end method

.method public final component2()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object v0
.end method

.method public final component3()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-object v0
.end method

.method public final copy(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventEscalation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventImportance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    iget-object v3, p1, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    iget-object v3, p1, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    iget-object p1, p1, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    return-object v0
.end method

.method public final getEventEscalation()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object v0
.end method

.method public final getEventImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setEvent(Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    return-void
.end method

.method public final setEventEscalation(Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-void
.end method

.method public final setEventImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingSendEvent(event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->event:Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventEscalation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventEscalation:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventImportance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;->eventImportance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
