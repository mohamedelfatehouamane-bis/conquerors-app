.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Ljava/lang/String;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
    .locals 3

    const-string v0, "on"

    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;

    invoke-direct {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;-><init>()V

    .line 4
    invoke-static {v1, v0}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->setOn(Z)V

    .line 10
    :cond_1
    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->setRealNameConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;)V

    .line 17
    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig$Companion;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->setVerifyingConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;)V

    .line 24
    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->setMinorsComplianceConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;)V

    .line 30
    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->setGuestComplianceConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    const-string v0, "GPCComplianceConfig"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
