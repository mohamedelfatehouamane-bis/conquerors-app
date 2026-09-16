.class public Lcom/gpc/operations/migrate/bean/DeviceIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceIdInfo"


# instance fields
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
    iput-boolean v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->isEmulator:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/bean/DeviceIdInfo;
    .locals 6

    .line 1
    const-string v0, "oaid"

    const-string v1, "gaid"

    const-string v2, "uuid"

    const-string v3, "is_emulator"

    new-instance v4, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;

    invoke-direct {v4}, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;-><init>()V

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

    iput-boolean p0, v4, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->isEmulator:Z

    .line 10
    :cond_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->uuid:Ljava/lang/String;

    .line 14
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->gaid:Ljava/lang/String;

    .line 18
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->gaid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 23
    const-string v0, "DeviceIdInfo"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v4
.end method


# virtual methods
.method public toGuestDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->isEmulator:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->uuid:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->gaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->gaid:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->oaid:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    const-string v1, "DeviceIdInfo"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v3, "is_emulator"

    iget-boolean v4, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->isEmulator:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    invoke-static {v1, v0, v3}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->uuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    :try_start_1
    const-string v3, "uuid"

    iget-object v4, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 13
    invoke-static {v1, v0, v3}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->gaid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    :try_start_2
    const-string v3, "gaid"

    iget-object v4, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->gaid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 22
    invoke-static {v1, v0, v3}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    :try_start_3
    const-string v3, "oaid"

    iget-object v4, p0, Lcom/gpc/operations/migrate/bean/DeviceIdInfo;->oaid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 31
    invoke-static {v1, v0, v3}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
