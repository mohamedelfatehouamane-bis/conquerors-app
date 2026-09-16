.class public Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appConfig:Lcom/gpc/sdk/bean/GPCAppConfig;

.field private time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppConfig()Lcom/gpc/sdk/bean/GPCAppConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;->appConfig:Lcom/gpc/sdk/bean/GPCAppConfig;

    return-object v0
.end method

.method public getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-object v0
.end method

.method public setAppConfig(Lcom/gpc/sdk/bean/GPCAppConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;->appConfig:Lcom/gpc/sdk/bean/GPCAppConfig;

    return-void
.end method

.method public setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/notification/bean/LoadedAppConfigEvent;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-void
.end method
