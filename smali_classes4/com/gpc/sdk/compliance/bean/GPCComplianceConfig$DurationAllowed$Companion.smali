.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;
    .locals 5

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "durationAllowed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;-><init>()V

    .line 6
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;

    .line 7
    const-string v2, "durationAllowedObject"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V

    .line 13
    const-string v1, "general"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->setGeneral(D)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->setGeneral(D)V

    .line 19
    :goto_0
    const-string v1, "legalHolidays"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->setLegalHolidays(D)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->setLegalHolidays(D)V

    .line 28
    :goto_1
    const-string v1, "rotation"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->setRotation(I)V

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
