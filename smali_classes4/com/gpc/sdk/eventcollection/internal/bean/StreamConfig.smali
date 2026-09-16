.class public Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->accessKeyId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->secretKey:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->region:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->streamName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->region:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessKeyId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->region:Ljava/lang/String;

    return-void
.end method

.method public final setSecretKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public final setStreamName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->streamName:Ljava/lang/String;

    return-void
.end method
