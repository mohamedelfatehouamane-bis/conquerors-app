.class public Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;,
        Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;,
        Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "GPCAntiAddictionResult"


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

.field public b:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;

.field public c:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;
    .locals 3

    .line 1
    const-string v0, "GPCAntiAddictionResult"

    :try_start_0
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;

    invoke-direct {v1}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;-><init>()V

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->a:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

    .line 5
    invoke-static {v2}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->b:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;

    .line 6
    invoke-static {v2}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->c:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;

    .line 8
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 12
    const-string v1, "parseFromJson AntiAddiction is error."

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRemainingQuota()Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->c:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;

    return-object v0
.end method

.method public getRestriction()Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->a:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

    return-object v0
.end method

.method public getUsedQuota()Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->b:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;

    return-object v0
.end method

.method public setRemainingQuota(Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->c:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;

    return-void
.end method

.method public setRestriction(Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->a:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

    return-void
.end method

.method public setUsedQuota(Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->b:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCAntiAddictionResult{restriction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->a:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$Restriction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usedQuota="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->b:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$UsedQuota;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remainingQuota="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->c:Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult$RemainingQuota;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
