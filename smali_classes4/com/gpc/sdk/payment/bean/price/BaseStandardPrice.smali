.class public abstract Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;


# static fields
.field public static final a:Ljava/lang/String; = "StandardPriceCache"

.field public static final b:Ljava/lang/String; = "USD"

.field public static c:Z = true


# instance fields
.field protected cacheAmount:D

.field protected cacheCurrency:Ljava/lang/String;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u7f13\u5b58\u5e01\u79cd"
    .end annotation
.end field

.field protected currencyToPriceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected currrentCurrency:Ljava/lang/String;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u5f53\u524d\u5e01\u79cd"
    .end annotation
.end field

.field protected isCacheAmountValid:Z

.field protected itemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currencyToPriceMap:Ljava/util/Map;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheCurrency:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->isCacheAmountValid:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 15
    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheAmount:D

    return-void
.end method

.method public static declared-synchronized a(ILorg/json/JSONObject;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;
    .locals 7

    const-string v0, "UNKNOWN:"

    const-class v1, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;

    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v2, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v2, p2, :cond_0

    .line 14
    new-instance p2, Lcom/gpc/sdk/payment/bean/price/StandardPriceCache;

    invoke-direct {p2}, Lcom/gpc/sdk/payment/bean/price/StandardPriceCache;-><init>()V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    if-ne v2, p2, :cond_1

    .line 16
    new-instance p2, Lcom/gpc/sdk/payment/bean/price/StandardPrice;

    invoke-direct {p2}, Lcom/gpc/sdk/payment/bean/price/StandardPrice;-><init>()V

    goto :goto_0

    .line 18
    :cond_1
    const-string v2, "StandardPriceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/gpc/sdk/payment/bean/price/StandardPriceCache;

    invoke-direct {p2}, Lcom/gpc/sdk/payment/bean/price/StandardPriceCache;-><init>()V

    .line 21
    :goto_0
    iput p0, p2, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->itemId:I

    .line 22
    const-string v0, "price_cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    const-string v0, "price_cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 27
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 28
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p2, v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->a(Ljava/util/Map;)V

    goto :goto_2

    .line 34
    :cond_3
    const-string p1, "StandardPriceCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found any price in price_cfg."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_4
    const-string p1, "StandardPriceCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response data error. not found price_cfg."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "itemId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "StandardPriceCache"

    invoke-static {p2, p0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currencyToPriceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->itemId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Not found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " price in Standard price.Please config it in platform."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StandardPriceCache"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currencyToPriceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_1

    return-wide v1

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 2

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheCurrency:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->isCacheAmountValid:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 45
    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheAmount:D

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->a()V

    .line 12
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currencyToPriceMap:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currencyToPriceMap:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->itemId:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->a()V

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string p1, ""

    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()D
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->isCacheAmountValid:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cacheAmount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheAmount:D

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->a(Ljava/lang/String;)D

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheAmount:D

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->isCacheAmountValid:Z

    return-wide v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheCurrency:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cacheCurrency:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheCurrency:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currrentCurrency:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currrentCurrency:Ljava/lang/String;

    goto :goto_4

    .line 16
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "StandardPriceCache"

    const-string v2, "USD"

    if-eqz v0, :cond_4

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 28
    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    .line 34
    :cond_4
    const-string v0, "context is null."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v0, v2

    .line 37
    :goto_3
    iget-object v3, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->currencyToPriceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->itemId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " price in Standard price."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 43
    :cond_5
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currency:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->cacheCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAmount()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/bean/price/BaseStandardPrice;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
