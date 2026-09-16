.class public Lcom/gpc/sdk/service/appconf/GPCAppConfData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "GPCAppConfData"

.field public static final TYPE_NORMAL:I = 0x2

.field public static final TYPE_PRIMARY:I = 0x1


# instance fields
.field private transient clientIP:Ljava/lang/String;

.field private configType:I

.field private context:Landroid/content/Context;

.field private id:I

.field private isLocalConfig:Z

.field private localTimestamp:J

.field private transient node:Ljava/lang/String;

.field private protocolNumber:Ljava/lang/String;

.field private rawString:Ljava/lang/String;

.field private source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

.field private time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

.field private updateAt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isLocalConfig:Z

    .line 16
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createAppConfig()Lcom/gpc/sdk/bean/GPCAppConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/bean/GPCAppConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCAppConfig;-><init>()V

    .line 3
    iget v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->id:I

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setId(I)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->clientIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setClientIP(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isLocalConfig:Z

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setLocalConfig(Z)V

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->node:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setNode(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->protocolNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setProtocolNumber(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setRawString(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->updateAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setUpdateAt(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;

    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;-><init>(Landroid/content/Context;Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->createPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->configType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->id:I

    return v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->localTimestamp:J

    return-wide v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->protocolNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRawString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-object v0
.end method

.method public getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-object v0
.end method

.method public getUpdateAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->updateAt:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isLocalConfig:Z

    return v0
.end method

.method public isPrimaryAppConfig()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->configType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->clientIP:Ljava/lang/String;

    return-void
.end method

.method public setConfigType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->configType:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->id:I

    return-void
.end method

.method public setLocalConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isLocalConfig:Z

    return-void
.end method

.method public setLocalTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->localTimestamp:J

    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->node:Ljava/lang/String;

    return-void
.end method

.method public setProtocolNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->protocolNumber:Ljava/lang/String;

    return-void
.end method

.method public setRawString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->rawString:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-void
.end method

.method public setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    return-void
.end method

.method public setUpdateAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->updateAt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCAppConfData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateAt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->updateAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rawString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', clientIP=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->clientIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isLocalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isLocalConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->time:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->localTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", configType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->configType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
