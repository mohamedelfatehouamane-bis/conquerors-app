.class public Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50fea4e972b1fea1L


# instance fields
.field private display:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private messageState:Ljava/lang/String;

.field private mqId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->messageState:Ljava/lang/String;

    return-object v0
.end method

.method public getMqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->mqId:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->display:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessageState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->messageState:Ljava/lang/String;

    return-void
.end method

.method public setMqId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->mqId:Ljava/lang/String;

    return-void
.end method
