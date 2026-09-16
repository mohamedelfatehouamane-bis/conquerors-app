.class public Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field public static final FINE:B = 0x1t

.field public static final FINER:B = 0x2t

.field public static final FINEST:B = 0x3t

.field private static count:S

.field private static destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;


# instance fields
.field private on:Z

.field private resource:Ljava/lang/String;

.field private source:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(SLjava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-short p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    .line 47
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->resource:Ljava/lang/String;

    .line 48
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    return-void
.end method

.method public static declared-synchronized getTrace(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;
    .locals 3

    const-class v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    if-nez v1, :cond_0

    .line 27
    const-string v1, "java.io.File"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 31
    :try_start_1
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.trace.TraceFileDestination"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catch_0
    :cond_0
    :try_start_2
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    sget-short v2, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S

    invoke-direct {v1, v2, p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;-><init>(SLjava/lang/String;)V

    .line 37
    sget-short p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    sput-short p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    return v0
.end method

.method public trace(BI)V
    .locals 8

    .line 76
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method

.method public trace(BI[Ljava/lang/Object;)V
    .locals 8

    .line 81
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v3, 0x5

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method

.method public trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8

    .line 86
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v3, 0x5

    move v4, p1

    move v5, p2

    move-object v7, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method

.method public traceBreak(BI)V
    .locals 8

    .line 66
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x3

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method

.method public traceCatch(BILjava/lang/Throwable;)V
    .locals 8

    .line 71
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v3, 0x4

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method

.method public traceEntry(BI)V
    .locals 8

    .line 56
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method

.method public traceExit(BI)V
    .locals 8

    .line 61
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    :cond_0
    return-void
.end method
