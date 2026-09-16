.class public final Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/aws/auth/AWSCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $config:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$provider$1;->$config:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$provider$1;->$config:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$provider$1;->$config:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
