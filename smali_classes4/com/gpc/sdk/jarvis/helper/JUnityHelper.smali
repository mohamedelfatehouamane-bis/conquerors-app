.class public Lcom/gpc/sdk/jarvis/helper/JUnityHelper;
.super Ljava/lang/Object;
.source "JUnityHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JUnityHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceDetailValue(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 3

    .line 20
    const-string v0, "getDeviceDetailValue"

    const-string v1, "JUnityHelper"

    invoke-static {v1, v0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->value(Landroid/content/Context;Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/helper/JUnityHelper;->sdksParts(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 24
    :try_start_0
    const-string v2, "app_sdks_integrated"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getDeviceDetailValue value"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sdksParts(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->sdksParts(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method
