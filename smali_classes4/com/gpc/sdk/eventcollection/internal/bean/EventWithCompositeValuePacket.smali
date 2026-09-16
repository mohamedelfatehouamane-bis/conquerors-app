.class public Lcom/gpc/sdk/eventcollection/internal/bean/EventWithCompositeValuePacket;
.super Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventWithCompositeValue"


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;-><init>(Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContext;Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLength()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->stringify()Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "EventWithCompositeValue"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getValueKeyName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "value"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "v4"

    return-object v0
.end method
