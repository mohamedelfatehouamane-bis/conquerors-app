.class public Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;
.super Lcom/gpc/sdk/bean/GPCAppConfig;
.source "SourceFile"


# instance fields
.field private announcements:Lcom/gpc/sdk/bean/GPCGameAnnouncements;

.field private appRatingStatus:Ljava/lang/String;

.field private gameFlags:Ljava/lang/Integer;

.field private informType:Ljava/lang/String;

.field private maintenance:Lcom/gpc/sdk/bean/GPCGameMaintenance;

.field private metaData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/bean/GPCAppConfig;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->gameFlags:Ljava/lang/Integer;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->informType:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->appRatingStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnnouncements()Lcom/gpc/sdk/bean/GPCGameAnnouncements;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->announcements:Lcom/gpc/sdk/bean/GPCGameAnnouncements;

    return-object v0
.end method

.method public getAppRatingStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->appRatingStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getGameFlags()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->gameFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInformType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->informType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenance()Lcom/gpc/sdk/bean/GPCGameMaintenance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->maintenance:Lcom/gpc/sdk/bean/GPCGameMaintenance;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->metaData:Ljava/lang/String;

    return-object v0
.end method

.method public setAnnouncements(Lcom/gpc/sdk/bean/GPCGameAnnouncements;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->announcements:Lcom/gpc/sdk/bean/GPCGameAnnouncements;

    return-void
.end method

.method public setAppRatingStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->appRatingStatus:Ljava/lang/String;

    return-void
.end method

.method public setGameFlags(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->gameFlags:Ljava/lang/Integer;

    return-void
.end method

.method public setInformType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->informType:Ljava/lang/String;

    return-void
.end method

.method public setMaintenance(Lcom/gpc/sdk/bean/GPCGameMaintenance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->maintenance:Lcom/gpc/sdk/bean/GPCGameMaintenance;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->metaData:Ljava/lang/String;

    return-void
.end method
