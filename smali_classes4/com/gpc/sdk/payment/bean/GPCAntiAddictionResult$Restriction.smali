.class public Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Restriction"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;
    .locals 7

    const-string v0, "monthly"

    const-string v1, "daily"

    const-string v2, "single"

    .line 1
    const-string v3, "restriction"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "GPCAntiAddictionResult"

    if-eqz v4, :cond_0

    .line 2
    const-string p0, "restriction is null."

    invoke-static {v6, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 5
    :cond_0
    new-instance v4, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

    invoke-direct {v4}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;-><init>()V

    .line 7
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    const-string v2, "restriction.single is null."

    invoke-static {v6, v2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 12
    invoke-virtual {v4, v2}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->setSingle(Z)V

    .line 14
    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    const-string v1, "restriction.daily is null."

    invoke-static {v6, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 18
    invoke-virtual {v4, v1}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->setDaily(Z)V

    .line 20
    :goto_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    const-string p0, "restriction.monthly is null."

    invoke-static {v6, p0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 23
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 24
    invoke-virtual {v4, p0}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->setMonthly(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 27
    const-string v0, "parseFromJson restriction is error."

    invoke-static {v6, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method


# virtual methods
.method public isDaily()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->b:Z

    return v0
.end method

.method public isMonthly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->c:Z

    return v0
.end method

.method public isSingle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->a:Z

    return v0
.end method

.method public setDaily(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->b:Z

    return-void
.end method

.method public setMonthly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->c:Z

    return-void
.end method

.method public setSingle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->a:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restriction{single="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", daily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", monthly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
