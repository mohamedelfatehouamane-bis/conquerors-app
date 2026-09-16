.class public Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCDeviceIdInfo"


# instance fields
.field private deviceId:Ljava/lang/String;

.field public gaid:Ljava/lang/String;

.field public isEmulator:Z

.field public oaid:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isEmulator:Z

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCDeviceIdInfo;
    .locals 6

    .line 1
    const-string v0, "oaid"

    const-string v1, "gaid"

    const-string v2, "uuid"

    const-string v3, "is_emulator"

    new-instance v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;

    invoke-direct {v4}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;-><init>()V

    .line 4
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isEmulator:Z

    .line 10
    :cond_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    .line 14
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    .line 18
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 23
    const-string v0, "GPCDeviceIdInfo"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v4
.end method

.method public static isAbnormalId(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    return v1

    .line 9
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 11
    const-string v0, "[^0-9A-Z]+"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    .line 16
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v2, v3

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public toGuestDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isEmulator:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isAbnormalId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    const-string v1, "GPCDeviceIdInfo"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v3, "is_emulator"

    iget-boolean v4, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->isEmulator:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    invoke-static {v1, v0, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    :try_start_1
    const-string v3, "uuid"

    iget-object v4, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 13
    invoke-static {v1, v0, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    :try_start_2
    const-string v3, "gaid"

    iget-object v4, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->gaid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 22
    invoke-static {v1, v0, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    :try_start_3
    const-string v3, "oaid"

    iget-object v4, p0, Lcom/gpc/sdk/bean/GPCDeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 31
    invoke-static {v1, v0, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
