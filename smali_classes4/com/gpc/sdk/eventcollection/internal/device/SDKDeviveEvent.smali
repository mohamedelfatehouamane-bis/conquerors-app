.class public Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;
.super Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;
.source "SourceFile"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "sdk.device"

.field private static final TAG:Ljava/lang/String; = "SDKDeviveEvent"


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

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;->eventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKDeviveEvent"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;->generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;

    return-void
.end method


# virtual methods
.method public deviceParts(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public eventName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sdk.device"

    return-object v0
.end method

.method public shouldGenerate(Lorg/json/JSONObject;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;->generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;->shouldGenerate(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public update(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/SDKDeviveEvent;->generativeRule:Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/EventGenerativeRule;->generated(Lorg/json/JSONObject;)V

    return-void
.end method

.method public value(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const-string p1, ""

    const-string v0, "SDKDeviveEvent"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->sdksParts()Lorg/json/JSONArray;

    move-result-object v2

    .line 4
    const-string v3, "app_sdks_integrated"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-static {v0, p1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/util/DeviceUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 11
    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v2, "app_version_name"

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/util/DeviceUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 15
    invoke-static {v0, p1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_1
    :try_start_2
    const-string v2, "device_model_name"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v2, "device_brand_name"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "android_version_name"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 23
    invoke-static {v0, p1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v1
.end method
