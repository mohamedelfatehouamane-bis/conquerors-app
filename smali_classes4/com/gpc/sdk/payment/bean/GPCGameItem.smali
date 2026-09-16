.class public Lcom/gpc/sdk/payment/bean/GPCGameItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/bean/GPCGameItem$Flag;,
        Lcom/gpc/sdk/payment/bean/GPCGameItem$Type;,
        Lcom/gpc/sdk/payment/bean/GPCGameItem$Category;
    }
.end annotation


# instance fields
.field private associatedSubscriptionItemId:Ljava/lang/Integer;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u6d88\u8017\u7c7b\u8ba1\u65f6\u5546\u54c1\u5173\u8054\u7684\u8ba2\u9605ID"
    .end annotation
.end field

.field private category:I
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u5546\u54c1\u5206\u7c7b"
    .end annotation
.end field

.field private creditRate:D
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u83b7\u5f97\u5230\u7684\u79ef\u5206"
    .end annotation
.end field

.field private details:Lcom/gpc/sdk/payment/bean/GPCGameItemDetails;

.field private flag:I
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u5546\u54c1\u7684\u9500\u552e\u72b6\u6001"
    .end annotation
.end field

.field private freePoints:Ljava/lang/Integer;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u8d60\u9001\u7684\u514d\u8d39\u70b9\u6570"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u5546\u54c1 ID"
        isNotNull = true
    .end annotation
.end field

.field private point:Ljava/lang/Integer;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u5546\u54c1\u539f\u59cb\u70b9\u6570\uff08\u4e0d\u5305\u542b\u8d60\u9001\uff09"
    .end annotation
.end field

.field private price:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

.field private pricingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private promotionPrice:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

.field private promotionTag:Ljava/lang/String;

.field private promotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;",
            ">;"
        }
    .end annotation
.end field

.field private purchase:Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u663e\u793a\u540d\u79f0"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/gpc/sdk/annotation/FiledDocItem;
        description = "\u5546\u54c1\u7c7b\u578b\uff081-\u6d88\u8017\u7c7b\u5546\u54c1\uff0c2-\u8ba2\u9605\u7c7b\u5546\u54c1\uff09"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;-><init>()V

    .line 3
    const-string v1, "pc_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->id:Ljava/lang/Integer;

    .line 4
    const-string v1, "pc_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->title:Ljava/lang/String;

    .line 5
    const-string v1, "pc_point"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->point:Ljava/lang/Integer;

    .line 6
    const-string v1, "pc_free_point"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->freePoints:Ljava/lang/Integer;

    .line 7
    const-string v1, "pc_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->type:I

    .line 8
    const-string v1, "pc_category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->category:I

    .line 9
    const-string v1, "pc_flag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->flag:I

    .line 11
    const-string v1, "sc_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->associatedSubscriptionItemId:Ljava/lang/Integer;

    .line 15
    :cond_0
    const-string v1, "pc_credit_rate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->creditRate:D

    .line 17
    invoke-static {p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->createFromJSON(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->purchase:Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    .line 18
    iget-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getType()I

    move-result v2

    sget-object v3, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    invoke-static {v1, v2, p0, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->create(IILorg/json/JSONObject;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v1

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->price:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    .line 19
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    iput-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionPrice:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    .line 21
    const-string v1, "promotion_tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionTag:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static createFromJsonV2(Lorg/json/JSONObject;Z)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;-><init>()V

    .line 2
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setId(Ljava/lang/Integer;)V

    .line 3
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setTitle(Ljava/lang/String;)V

    .line 4
    const-string v1, "point"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPoint(Ljava/lang/Integer;)V

    .line 6
    const-string v1, "category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setType(I)V

    .line 7
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setCategory(I)V

    .line 9
    const-string v1, "flag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setFlag(I)V

    .line 14
    :cond_0
    const-string v1, "present_list"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 18
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 19
    invoke-static {v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;->getFreePoints()I

    move-result v6

    add-int/2addr v4, v6

    .line 21
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPromotions(Ljava/util/List;)V

    move v3, v4

    .line 26
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setFreePoints(Ljava/lang/Integer;)V

    .line 28
    const-string v1, "related_sc_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setAssociatedSubscriptionItemId(Ljava/lang/Integer;)V

    .line 32
    :cond_3
    const-string v1, "credit_rate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setCreditRate(D)V

    .line 35
    :cond_4
    invoke-static {p0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;->createFromJsonV2(Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;)V

    if-eqz p1, :cond_5

    .line 40
    sget-object p1, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    goto :goto_1

    .line 42
    :cond_5
    sget-object p1, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceCache:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    .line 44
    :goto_1
    iget-object v1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getType()I

    move-result v2

    invoke-static {v1, v2, p0, p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->create(IILorg/json/JSONObject;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->price:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    .line 45
    new-instance p1, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    sget-object v1, Lcom/gpc/sdk/payment/GPCGameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/sdk/payment/GPCGameItemPriceSource;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;-><init>(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;Lcom/gpc/sdk/payment/GPCGameItemPriceSource;)V

    iput-object p1, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionPrice:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    .line 47
    const-string p1, "promotion_tag"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionTag:Ljava/lang/String;

    :cond_6
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAssociatedSubscriptionItemId()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->associatedSubscriptionItemId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCategory()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->category:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCreditRate()D
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->creditRate:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDetails()Lcom/gpc/sdk/payment/bean/GPCGameItemDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->details:Lcom/gpc/sdk/payment/bean/GPCGameItemDetails;

    return-object v0
.end method

.method public declared-synchronized getFlag()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->flag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFreePoints()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->freePoints:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getId()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->id:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPoint()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->point:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->price:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    return-object v0
.end method

.method public getPricingGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->pricingGroups:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionPrice:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    return-object v0
.end method

.method public getPromotionTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotions:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getPurchase()Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->purchase:Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->title:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAssociatedSubscriptionItemId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->associatedSubscriptionItemId:Ljava/lang/Integer;

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->category:I

    return-void
.end method

.method public setCreditRate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->creditRate:D

    return-void
.end method

.method public setDetails(Lcom/gpc/sdk/payment/bean/GPCGameItemDetails;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->details:Lcom/gpc/sdk/payment/bean/GPCGameItemDetails;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->flag:I

    return-void
.end method

.method public setFreePoints(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->freePoints:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setPoint(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->point:Ljava/lang/Integer;

    return-void
.end method

.method public setPricingGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->pricingGroups:Ljava/util/List;

    return-void
.end method

.method public setPromotionPrice(Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionPrice:Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    return-void
.end method

.method public setPromotionTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotionTag:Ljava/lang/String;

    return-void
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItemPromotion;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotions:Ljava/util/List;

    return-void
.end method

.method public setPurchase(Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->purchase:Lcom/gpc/sdk/payment/bean/GPCGameItemPurchase;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCGameItem{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", associatedSubscriptionItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->associatedSubscriptionItemId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->point:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freePoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->freePoints:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creditRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->creditRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->price:Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promotions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/payment/bean/GPCGameItem;->promotions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
