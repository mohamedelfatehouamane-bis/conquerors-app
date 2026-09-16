.class public Lcom/gpc/operations/helper/GPCSyncConfigration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private metaConfig:Ljava/lang/String;

.field private serverTimestamp:J

.field private underDeviceStandbyTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/helper/GPCSyncConfigration;->metaConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/helper/GPCSyncConfigration;->serverTimestamp:J

    return-wide v0
.end method

.method public getUnderDeviceStandbyTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/helper/GPCSyncConfigration;->underDeviceStandbyTime:J

    return-wide v0
.end method

.method public setMetaConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/helper/GPCSyncConfigration;->metaConfig:Ljava/lang/String;

    return-void
.end method

.method public setServerTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/helper/GPCSyncConfigration;->serverTimestamp:J

    return-void
.end method

.method public setUnderDeviceStandbyTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/helper/GPCSyncConfigration;->underDeviceStandbyTime:J

    return-void
.end method
