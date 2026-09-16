.class public Lcom/gpc/sdk/bean/GPCServerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lineId:Ljava/lang/String;

.field private serverId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCServerInfo;->lineId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/bean/GPCServerInfo;->serverId:I

    return v0
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCServerInfo;->lineId:Ljava/lang/String;

    return-void
.end method

.method public setServerId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/bean/GPCServerInfo;->serverId:I

    return-void
.end method
