.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "periodAllowed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;-><init>()V

    .line 6
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;

    .line 7
    const-string v2, "timeAllowdObject"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V

    .line 13
    const-string v1, "from"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeAllowdObject.getString(\"from\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->setFrom(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "0:00"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->setFrom(Ljava/lang/String;)V

    .line 18
    :goto_0
    const-string v1, "to"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "timeAllowdObject.getString(\"to\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->setTo(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_1
    const-string p1, "24:00"

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->setTo(Ljava/lang/String;)V

    .line 23
    :goto_1
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
