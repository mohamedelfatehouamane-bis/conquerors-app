.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;
    .locals 8

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "stagedPaymentCap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_2

    .line 10
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stage"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 14
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;->getStages()Ljava/util/Map;

    move-result-object v5

    .line 15
    sget-object v6, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage$Companion;

    .line 16
    const-string v7, "stageObject"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
