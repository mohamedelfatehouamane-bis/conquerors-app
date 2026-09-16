.class public Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;
.super Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;
.source "SourceFile"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "sdk.device.detailed"

.field private static final TAG:Ljava/lang/String; = "SDKDeviveDetailedEvent"


# instance fields
.field protected generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;->eventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKDeviveDetailedEvent"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;->generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;

    return-void
.end method


# virtual methods
.method public eventName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sdk.device.detailed"

    return-object v0
.end method

.method public shouldGenerate(Lorg/json/JSONObject;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;->generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;->shouldGenerate(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public update(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveDetailedEvent;->generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;->generated(Lorg/json/JSONObject;)V

    return-void
.end method

.method public value(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->value(Landroid/content/Context;Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->sdksParts()Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    const-string v1, "app_sdks_integrated"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "SDKDeviveDetailedEvent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method
