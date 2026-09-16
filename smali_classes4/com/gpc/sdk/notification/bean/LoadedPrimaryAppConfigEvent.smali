.class public Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private primaryAppConfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

.field private requestTime:J

.field private time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->primaryAppConfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    return-object v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->requestTime:J

    return-wide v0
.end method

.method public getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-object v0
.end method

.method public setPrimaryAppConfig(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->primaryAppConfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->requestTime:J

    return-void
.end method

.method public setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-void
.end method
