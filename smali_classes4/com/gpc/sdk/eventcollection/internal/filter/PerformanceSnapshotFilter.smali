.class public Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceSnapshotFilt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAcceptable(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
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
    const-string p1, "PerformanceSnapshotFilt"

    const-string v0, "performance_snapshot event off."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
