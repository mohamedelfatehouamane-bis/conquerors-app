.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;
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
    invoke-direct {p0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "paymentCap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;-><init>()V

    .line 6
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;

    .line 7
    const-string v2, "paymentCapObject"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V

    .line 14
    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->setCap(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
