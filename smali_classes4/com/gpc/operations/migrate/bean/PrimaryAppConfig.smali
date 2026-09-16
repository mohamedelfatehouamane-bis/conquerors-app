.class public Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;
.super Lcom/gpc/operations/migrate/bean/AppConfig;
.source "SourceFile"


# instance fields
.field private announcements:Lcom/gpc/operations/migrate/bean/GameAnnouncements;

.field private appRatingStatus:Ljava/lang/String;

.field private gameFlags:Ljava/lang/Integer;

.field private informType:Ljava/lang/String;

.field private maintenance:Lcom/gpc/operations/migrate/bean/GameMaintenance;

.field private metaData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/bean/AppConfig;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->gameFlags:Ljava/lang/Integer;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->informType:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->appRatingStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnnouncements()Lcom/gpc/operations/migrate/bean/GameAnnouncements;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->announcements:Lcom/gpc/operations/migrate/bean/GameAnnouncements;

    return-object v0
.end method

.method public getAppRatingStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->appRatingStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getGameFlags()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->gameFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInformType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->informType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenance()Lcom/gpc/operations/migrate/bean/GameMaintenance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->maintenance:Lcom/gpc/operations/migrate/bean/GameMaintenance;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->metaData:Ljava/lang/String;

    return-object v0
.end method

.method public setAnnouncements(Lcom/gpc/operations/migrate/bean/GameAnnouncements;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->announcements:Lcom/gpc/operations/migrate/bean/GameAnnouncements;

    return-void
.end method

.method public setAppRatingStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->appRatingStatus:Ljava/lang/String;

    return-void
.end method

.method public setGameFlags(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->gameFlags:Ljava/lang/Integer;

    return-void
.end method

.method public setInformType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->informType:Ljava/lang/String;

    return-void
.end method

.method public setMaintenance(Lcom/gpc/operations/migrate/bean/GameMaintenance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->maintenance:Lcom/gpc/operations/migrate/bean/GameMaintenance;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;->metaData:Ljava/lang/String;

    return-void
.end method
