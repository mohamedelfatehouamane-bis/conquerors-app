.class public Lcom/gpc/sdk/utils/modules/DeviceIdModule$GPCUpdateDeviceIdHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/DeviceIdModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPCUpdateDeviceIdHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeviceIdInfoFromOlderData(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :catch_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    const/4 v3, 0x0

    .line 10
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 11
    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 12
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 13
    aget-object v5, v4, v0

    const/4 v6, 0x1

    .line 14
    aget-object v4, v4, v6

    .line 16
    const-string v6, "uuid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 20
    :cond_0
    const-string v6, "gaid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    invoke-direct {p0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createNewFormatDeviceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->toGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
