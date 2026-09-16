.class public Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/filter/EventFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceSnapshotFilt"

.field private static sCount:I


# instance fields
.field public timesCap:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->timesCap:I

    return-void
.end method

.method public static declared-synchronized CountAdded()V
    .locals 3

    const-string v0, "performance_snapshot sCount:"

    const-class v1, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;

    monitor-enter v1

    .line 1
    :try_start_0
    sget v2, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->sCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->sCount:I

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->sCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PerformanceSnapshotFilt"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getCount()I
    .locals 2

    const-class v0, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->sCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public isAcceptable(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "_.performance_snapshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->getCount()I

    move-result p1

    iget v1, p0, Lcom/gpc/sdk/eventcollection/internal/filter/PerformanceSnapshotTimesCapFilter;->timesCap:I

    if-ge p1, v1, :cond_0

    return v0

    .line 6
    :cond_0
    const-string p1, "PerformanceSnapshotFilt"

    const-string v0, "performance_snapshot come up to timesCap."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method
