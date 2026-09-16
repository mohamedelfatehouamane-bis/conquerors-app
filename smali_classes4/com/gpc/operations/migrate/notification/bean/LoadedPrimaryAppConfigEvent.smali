.class public Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private primaryAppConfig:Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;

.field private requestTime:J

.field private time:Lcom/gpc/operations/migrate/bean/EasternStandardTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrimaryAppConfig()Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->primaryAppConfig:Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;

    return-object v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->requestTime:J

    return-wide v0
.end method

.method public getTime()Lcom/gpc/operations/migrate/bean/EasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->time:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    return-object v0
.end method

.method public setPrimaryAppConfig(Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->primaryAppConfig:Lcom/gpc/operations/migrate/bean/PrimaryAppConfig;

    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->requestTime:J

    return-void
.end method

.method public setTime(Lcom/gpc/operations/migrate/bean/EasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/notification/bean/LoadedPrimaryAppConfigEvent;->time:Lcom/gpc/operations/migrate/bean/EasternStandardTime;

    return-void
.end method
