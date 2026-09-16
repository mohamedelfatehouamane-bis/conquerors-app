.class public Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;


# static fields
.field private static final DEVICE_EVENT_INFO_MD5:Ljava/lang/String; = "device_event_info_md5"

.field private static final DEVICE_EVENT_LAST_SEND_TIMESTAMP:Ljava/lang/String; = "device_event_last_send_timestamp"

.field private static final IS_NOT_FIRST_SEND_DEVICE_INFO:Ljava/lang/String; = "is_not_first_send_device_info"

.field private static final TAG:Ljava/lang/String; = "GeneralGenerater"


# instance fields
.field protected context:Landroid/content/Context;

.field protected deviceEventProfile:Lcom/gpc/util/LocalStorage;

.field protected md5:Ljava/lang/String;

.field protected provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    .line 4
    new-instance p2, Lcom/gpc/util/LocalStorage;

    const-string v0, "device_event_info.profile"

    invoke-direct {p2, p1, v0}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public generated(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-string v0, "GeneralGenerater"

    const-string v1, "udpate sdk.device"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->getDeviceInfoMD5(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->md5:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->md5:Ljava/lang/String;

    const-string v1, "device_event_info_md5"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "device_event_last_send_timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    const-string v0, "is_not_first_send_device_info"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getDeviceInfoMD5(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;->getUIID()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;->getADID()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    invoke-virtual {v2}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;->getUDID()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->provider:Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;

    invoke-virtual {v3}, Lcom/gpc/sdk/eventcollection/internal/packet/EventPacketContextProvider;->getOAID()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/gpc/util/MD5;

    invoke-direct {v4}, Lcom/gpc/util/MD5;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public shouldGenerate(Lorg/json/JSONObject;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    const-string v1, "is_not_first_send_device_info"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GeneralGenerater"

    if-nez v0, :cond_0

    .line 3
    const-string v3, "sdk.device send for First."

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    const-string v4, "device_event_last_send_timestamp"

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    .line 10
    const-string v0, "sdk.device send for More than one day."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->getDeviceInfoMD5(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->md5:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    const-string v3, "device_event_info_md5"

    invoke-virtual {p1, v3}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/device/GeneralGenerativeRule;->md5:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    const-string p1, "sdk.device send for context changed."

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method
