.class public Lcom/gpc/sdk/bean/GPCExternalAppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private XData:Ljava/lang/String;

.field private isLocalConfig:Z

.field private raw:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->isLocalConfig:Z

    return-void
.end method


# virtual methods
.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->type:I

    return v0
.end method

.method public getXData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->XData:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->isLocalConfig:Z

    return v0
.end method

.method public setLocalConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->isLocalConfig:Z

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->raw:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->type:I

    return-void
.end method

.method public setXData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->XData:Ljava/lang/String;

    return-void
.end method
