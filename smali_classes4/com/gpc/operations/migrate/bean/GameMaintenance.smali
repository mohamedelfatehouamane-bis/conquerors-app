.class public Lcom/gpc/operations/migrate/bean/GameMaintenance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_MAINTENANCE:Ljava/lang/String; = "1"


# instance fields
.field private bundleURL:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private period:Lcom/gpc/operations/migrate/bean/TimePeriod;

.field private serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

.field private state:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/gpc/operations/migrate/bean/TimePeriod;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    return-void
.end method


# virtual methods
.method public getBundleURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->bundleURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Lcom/gpc/operations/migrate/bean/TimePeriod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    return-object v0
.end method

.method public getServerTime()Lcom/gpc/operations/migrate/bean/EasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->bundleURL:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->message:Ljava/lang/String;

    return-void
.end method

.method public setPeriod(Lcom/gpc/operations/migrate/bean/TimePeriod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    return-void
.end method

.method public setServerTime(Lcom/gpc/operations/migrate/bean/EasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->state:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameMaintenance{state=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bundleURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->bundleURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underMaintenance()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->state:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;->getStartAt()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;->getEndAt()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    .line 8
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;->getStartAt()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    .line 9
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;->getEndAt()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    .line 14
    :cond_2
    new-instance v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;->getStartAt()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->serverTime:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    .line 18
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/GameMaintenance;->period:Lcom/gpc/operations/migrate/bean/TimePeriod;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/TimePeriod;->getEndAt()Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_6
    return v1
.end method
