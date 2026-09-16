.class public Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemainingQuota"
.end annotation


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;
    .locals 6

    const-string v0, "monthly"

    const-string v1, "daily"

    .line 1
    const-string v2, "remaining_quota"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "GPCAntiAddictionResult"

    if-eqz v3, :cond_0

    .line 2
    const-string p0, "remaining_quota is null."

    invoke-static {v5, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 5
    :cond_0
    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;

    invoke-direct {v3}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;-><init>()V

    .line 7
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    const-string v1, "remaining_quota.daily is null."

    invoke-static {v5, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 12
    invoke-virtual {v3, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->setDaily(D)V

    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    const-string p0, "remaining_quota.monthly is null."

    invoke-static {v5, p0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 17
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 18
    invoke-virtual {v3, v0, v1}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->setMonthly(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 21
    const-string v0, "parseFromJson remaining_quota is error."

    invoke-static {v5, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method


# virtual methods
.method public getDaily()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->a:D

    return-wide v0
.end method

.method public getMonthly()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->b:D

    return-wide v0
.end method

.method public setDaily(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->a:D

    return-void
.end method

.method public setMonthly(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->b:D

    return-void
.end method
