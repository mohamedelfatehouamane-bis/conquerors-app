.class public Lcom/gpc/sdk/bean/GPCAppConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCAppConfig"

.field private static final serialVersionUID:J = 0x3bef98e0deddfe1aL


# instance fields
.field private transient clientIP:Ljava/lang/String;

.field private id:I

.field private isLocalConfig:Z

.field private transient node:Ljava/lang/String;

.field private protocolNumber:Ljava/lang/String;

.field private rawString:Ljava/lang/String;

.field private source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

.field private updateAt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->isLocalConfig:Z

    return-void
.end method


# virtual methods
.method public getClientIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->id:I

    return v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->protocolNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRawString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-object v0
.end method

.method public getUpdateAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->updateAt:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->isLocalConfig:Z

    return v0
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->clientIP:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->id:I

    return-void
.end method

.method public setLocalConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->isLocalConfig:Z

    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->node:Ljava/lang/String;

    return-void
.end method

.method public setProtocolNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->protocolNumber:Ljava/lang/String;

    return-void
.end method

.method public setRawString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->rawString:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->source:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-void
.end method

.method public setUpdateAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCAppConfig;->updateAt:Ljava/lang/String;

    return-void
.end method
