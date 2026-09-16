.class public Lcom/gpc/sdk/eventcollection/internal/device/DailyGenerativeRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;


# static fields
.field private static final DEVICE_EVENT_LAST_SEND_TIMESTAMP:Ljava/lang/String; = "daily_device_event_last_send_timestamp"

.field private static final TAG:Ljava/lang/String; = "DailyGenerate"


# instance fields
.field protected context:Landroid/content/Context;

.field protected deviceEventProfile:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/DailyGenerativeRule;->context:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "device_event_info.profile"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/DailyGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public generated(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/DailyGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "daily_device_event_last_send_timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public shouldGenerate(Lorg/json/JSONObject;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/DailyGenerativeRule;->deviceEventProfile:Lcom/gpc/util/LocalStorage;

    const-string v0, "daily_device_event_last_send_timestamp"

    invoke-virtual {p1, v0}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 4
    const-string p1, "DailyGenerate"

    const-string v0, "sdk.device send for Daily."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
