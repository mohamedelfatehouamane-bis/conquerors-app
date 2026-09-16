.class public final Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;

.field private static final TAG:Ljava/lang/String; = "AWSKinesisStreamConfig"


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private gameRegion:Ljava/lang/String;

.field private gameStreamName:Ljava/lang/String;

.field private sdkRegion:Ljava/lang/String;

.field private sdkStreamName:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->Companion:Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateGameStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->accessKeyId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setAccessKeyId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->secretKey:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setSecretKey(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameRegion:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setRegion(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameStreamName:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setStreamName(Ljava/lang/String;)V

    return-object v0
.end method

.method public final generateSdkStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->accessKeyId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setAccessKeyId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->secretKey:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setSecretKey(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkRegion:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setRegion(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkStreamName:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setStreamName(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGameRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameRegion:Ljava/lang/String;

    return-object v0
.end method

.method public final getGameStreamName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameStreamName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkRegion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkStreamName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkStreamName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public final setGameRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameRegion:Ljava/lang/String;

    return-void
.end method

.method public final setGameStreamName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameStreamName:Ljava/lang/String;

    return-void
.end method

.method public final setSdkRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkRegion:Ljava/lang/String;

    return-void
.end method

.method public final setSdkStreamName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkStreamName:Ljava/lang/String;

    return-void
.end method

.method public final setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "accessKeyId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsecretKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->secretKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsdkRegion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsdkStreamName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->sdkStreamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ngameRegion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ngameStreamName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/AWSKinesisStreamConfig;->gameStreamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
