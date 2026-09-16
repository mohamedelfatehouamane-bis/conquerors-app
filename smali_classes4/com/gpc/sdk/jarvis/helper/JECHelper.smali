.class public Lcom/gpc/sdk/jarvis/helper/JECHelper;
.super Ljava/lang/Object;
.source "JECHelper.java"


# static fields
.field private static final NA:Ljava/lang/String; = "N/A"

.field private static final TAG:Ljava/lang/String; = "JECHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, ""

    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "app_id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v2, "app_store_id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "app_version_name"

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "app_version_code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 83
    const-string v1, "JECHelper"

    invoke-static {v1, v0, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static deviceParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 199
    const-string v0, "device_model_name"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "device_brand_name"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->isEmulator(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "device_is_emulator"

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 202
    invoke-static {p1, v0, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 204
    invoke-static {p1, v0, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 206
    :goto_0
    const-string p0, "device_platform_name"

    const-string v0, "android"

    invoke-static {p1, p0, v0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static hardwareParts(Landroid/content/Context;Landroid/app/Activity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 92
    const-string v0, "JECHelper"

    :try_start_0
    const-string v1, "battery_capacity_number"

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getBatteryCapacity(Landroid/content/Context;)D

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 95
    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getCPUNumCores()I

    move-result v1

    .line 96
    const-string v2, "cpu_cores_number"

    invoke-static {p2, v2, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 97
    const-string v1, "cpu_basic_frequency_number"

    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getCPUMaxFreqKHz()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 98
    const-string v1, "cpu_name"

    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getCPUName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "ram_size_number"

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 102
    const-string v1, "onboard_storage_size_number"

    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getSystemTotalStorageSize()J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 103
    const-string v1, "external_storage_size_number"

    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getExternalTotalStorageSize()J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 107
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getSystemScreenWidth(Landroid/app/Activity;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 110
    invoke-static {p1}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getSystemScreenHeight(Landroid/app/Activity;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {v1, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 113
    invoke-static {v1, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 115
    :goto_0
    const-string v3, "screen_logical_resolution_value"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 119
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 120
    const-string v3, "screen_physical_resolution_value"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v1, "screen_size_number"

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getScreenSize(Landroid/content/Context;)D

    move-result-wide v3

    invoke-static {p2, v1, v3, v4}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 123
    const-string v1, "screen_dpi_number"

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getScreenDensityDpi(Landroid/content/Context;)I

    move-result p0

    invoke-static {p2, v1, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    if-eqz p1, :cond_3

    .line 126
    sget-object p0, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils;->Companion:Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;->isNotchScreen(Landroid/app/Activity;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const-string v1, "screen_cutouts_value"

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 128
    :try_start_1
    invoke-static {p2, v1, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 129
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 130
    sget-object v1, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils;->Companion:Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;->getNotchScreenRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 133
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 134
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 135
    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p0, p1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 138
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 139
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 140
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONArray;I)V

    .line 142
    :goto_1
    const-string p1, "screen_cutouts_safe_inset_value"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p2

    :cond_2
    const/4 p0, 0x0

    .line 144
    invoke-static {p2, v1, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object p2

    .line 147
    :cond_3
    const-string p0, "activity is null."

    invoke-static {v0, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 151
    const-string p1, ""

    invoke-static {v0, p1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static preferenceParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 159
    const-string v0, ""

    const-string v1, "JECHelper"

    :try_start_0
    const-string v2, "user_locale_identifier"

    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JNetworkUtils;->getCellularType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 164
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 165
    const-string v4, "type"

    invoke-static {v3, v4, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    const-string p0, "user_cellulars"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    :try_start_2
    invoke-static {v1, v0, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 173
    invoke-static {v1, v0, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected static put(Lorg/json/JSONArray;I)V
    .locals 2

    if-gez p1, :cond_0

    .line 213
    const-string p1, "N/A"

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method protected static put(Lorg/json/JSONObject;Ljava/lang/String;D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_0

    .line 265
    const-string p2, "N/A"

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static put(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 2

    if-gez p2, :cond_0

    .line 248
    const-string p2, "N/A"

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static put(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 257
    const-string p2, "N/A"

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 236
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    const-string p2, "N/A"

    .line 240
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "key:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JECHelper"

    invoke-static {p2, p1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 229
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "key:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JECHelper"

    invoke-static {p2, p1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 221
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "key:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JECHelper"

    invoke-static {p2, p1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sdksParts(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 3

    .line 65
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v1}, Lcom/gpc/sdk/jarvis/utils/JSDKMetaUtil;->getSDKMetas(Landroid/content/Context;Lcom/gpc/sdk/jarvis/utils/JSDKMeta;)Ljava/util/List;

    move-result-object p0

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JSDKMetaUtil;->getJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 70
    const-string v1, "JECHelper"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static softwareParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 181
    :try_start_0
    const-string v0, "android_version_name"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "android_version_code"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 184
    invoke-static {}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->isDeviceRooted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android_is_rooted"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 185
    :try_start_1
    invoke-static {p1, v1, v0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    invoke-static {p1, v1, v0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 190
    :goto_0
    const-string v0, "opengl_es_version_name"

    invoke-static {p0}, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getGLEsVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 192
    const-string v0, "JECHelper"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static value(Landroid/content/Context;Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 4

    .line 33
    const-string v0, ""

    const-string v1, "JECHelper"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    :try_start_0
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->appParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 38
    invoke-static {v1, v0, v3}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    :try_start_1
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->deviceParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 44
    invoke-static {v1, v0, v3}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :goto_1
    :try_start_2
    invoke-static {p0, p1, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->hardwareParts(Landroid/content/Context;Landroid/app/Activity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 49
    invoke-static {v1, v0, p1}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_2
    :try_start_3
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->preferenceParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 54
    invoke-static {v1, v0, p1}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_3
    :try_start_4
    invoke-static {p0, v2}, Lcom/gpc/sdk/jarvis/helper/JECHelper;->softwareParts(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 59
    invoke-static {v1, v0, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v2
.end method
