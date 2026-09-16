.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "guest"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;-><init>()V

    .line 7
    const-string v1, "guestObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "on"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->setOn(Z)V

    .line 10
    :cond_2
    const-string v1, "advanceNotice"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guestObject.getString(\"advanceNotice\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->setAdvanceNotice(Ljava/lang/String;)V

    .line 15
    :cond_3
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->setPeriodAllowed(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;)V

    .line 21
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->setDurationAllowed(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;)V

    .line 27
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->setPaymentCap(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;)V

    return-object v0
.end method
