.class public Lcom/gpc/sdk/bean/GPCTimePeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

.field private startAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndAt()Lcom/gpc/sdk/bean/GPCEasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCTimePeriod;->endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-object v0
.end method

.method public getStartAt()Lcom/gpc/sdk/bean/GPCEasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCTimePeriod;->startAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-object v0
.end method

.method public setEndAt(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCTimePeriod;->endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-void
.end method

.method public setStartAt(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCTimePeriod;->startAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCTimePeriod{startAt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/bean/GPCTimePeriod;->startAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getStringValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/bean/GPCTimePeriod;->endAt:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getStringValue()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
