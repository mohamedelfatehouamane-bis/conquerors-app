.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-direct {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;-><init>()V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;-><init>()V

    .line 6
    const-string v1, "textJsonObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "staged"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textJsonObject.getString(\"staged\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->setStaged(Ljava/lang/String;)V

    .line 9
    :cond_1
    const-string v1, "alert"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textJsonObject.getString(\"alert\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->setAlert(Ljava/lang/String;)V

    .line 12
    :cond_2
    const-string v1, "executed"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textJsonObject.getString(\"executed\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->setExecuted(Ljava/lang/String;)V

    .line 15
    :cond_3
    const-string v1, "restricted"

    invoke-static {p1, v1}, Lcom/gpc/util/JSONObjectExtendKt;->isNullOrEmpty(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "textJsonObject.getString(\"restricted\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->setRestricted(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method
