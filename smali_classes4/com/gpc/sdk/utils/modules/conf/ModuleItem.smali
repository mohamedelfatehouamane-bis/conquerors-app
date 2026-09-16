.class public Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;,
        Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;,
        Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;,
        Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleItem"


# instance fields
.field private agreementSigningItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;

.field private appConfItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

.field private eventCollectionItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

.field private paymentItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
    .locals 7

    const-string v0, "agreement_signing"

    const-string v1, "event_collection"

    const-string v2, "payment"

    const-string v3, "appconf"

    .line 1
    new-instance v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    invoke-direct {v4}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;-><init>()V

    const/4 v5, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    move-result-object v3

    iput-object v3, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->appConfItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    if-nez v3, :cond_0

    return-object v5

    .line 11
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    move-result-object v2

    iput-object v2, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->paymentItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    .line 14
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    move-result-object v1

    iput-object v1, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->eventCollectionItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    .line 17
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->agreementSigningItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v4

    :cond_4
    return-object v5

    :catch_0
    move-exception p0

    .line 21
    const-string v0, "ModuleItem"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method


# virtual methods
.method public getAgreementSigningItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->agreementSigningItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;

    return-object v0
.end method

.method public getAppConf()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->appConfItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    return-object v0
.end method

.method public getEventCollectionItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->eventCollectionItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    return-object v0
.end method

.method public getPaymentItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->paymentItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    return-object v0
.end method

.method public setAgreementSigningItem(Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->agreementSigningItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;

    return-void
.end method

.method public setAppConf(Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->appConfItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    return-void
.end method

.method public setEventCollectionItem(Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->eventCollectionItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    return-void
.end method

.method public setPaymentItem(Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->paymentItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    return-void
.end method
