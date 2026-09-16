.class public Lcom/gpc/sdk/eventcollection/internal/trigger/PerformanceSnapshotTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceSnapshotTrig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushed(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "_.performance_snapshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    const-string p1, "PerformanceSnapshotTrig"

    const-string v0, "performance_snapshot flushed"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->CountAdded()V

    :cond_0
    return-void
.end method

.method public shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
