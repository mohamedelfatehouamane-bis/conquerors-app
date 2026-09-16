.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;
.implements Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;,
        Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "GPCNewPayment"


# instance fields
.field public a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

.field public b:Landroid/app/Activity;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

.field public f:Ljava/lang/String;

.field public g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

.field public h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

.field public i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

.field public j:Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;

.field public k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

.field public l:Ljava/lang/String;

.field public m:Lcom/gpc/sdk/payment/flow/processing/d;

.field public n:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

.field public o:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

.field public p:Lcom/gpc/sdk/payment/service/SubscriptionService;

.field public q:Lcom/gpc/sdk/payment/utils/a;

.field public r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Lcom/gpc/util/SDKTask;

.field public v:Lcom/gpc/sdk/payment/flow/cache/a;

.field public w:Z

.field public x:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

.field public y:Ljava/lang/String;

.field public z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/cache/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->s:Z

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    .line 10
    new-instance v2, Lcom/gpc/util/SDKTask;

    invoke-direct {v2}, Lcom/gpc/util/SDKTask;-><init>()V

    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->u:Lcom/gpc/util/SDKTask;

    .line 14
    iput-boolean v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->w:Z

    .line 18
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->y:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    .line 27
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    .line 28
    iput-object p5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    .line 29
    new-instance p1, Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->cacheModule()Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/cache/CacheModule;->createHttpResponsCache()Lcom/gpc/sdk/utils/modules/cache/ICache;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/gpc/sdk/service/helper/HttpReponseCacher;-><init>(Lcom/gpc/sdk/utils/modules/cache/ICache;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->x:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    .line 32
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v1

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const-string p3, "/pay/hub/get_card_list?user_id=%s&pay_method=android&game_id=%s"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/error/GPCException;)I
    .locals 0

    .line 321
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x270f

    return p1
.end method

.method public final a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/cache/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    .line 222
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getAssociatedSubscriptionItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 121
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p0, p2, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;
    .locals 4

    .line 166
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getInStorePrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GPCNewPayment"

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getPricing getInStorePrice is null."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getInStorePrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->getPriceContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getPricing getInStorePrice getPriceContract is null."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricing()Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricing;->getInStorePrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPrice;->getPriceContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    move-result-object v2

    const-string v3, "item :"

    const-string v4, "GPCNewPayment"

    if-nez v2, :cond_0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",promotionPricing is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 133
    :cond_0
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v5

    if-nez v5, :cond_1

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",promotionPricingContract is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 138
    :cond_1
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPromotionTags()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",getPromotionTags is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 143
    :cond_2
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getInStorePromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPromotionTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "found promotionTag"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getInStorePromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "not found promotionTag:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricingGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getPricingGroups is null:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 155
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getPricingGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 156
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;

    .line 158
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->getPromotionPrices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->getPromotionPrices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingGroup;->getPromotionPrices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 160
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;

    .line 162
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPromotionTags()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 163
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getInStorePromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPromotionTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getInStorePromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getOfferToken()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "found promotionTag in other promotion:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPricing;->getInStorePromotionPrice()Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;

    move-result-object v2

    invoke-interface {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;->getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subscribeOfPromotion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", promotionTag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCNewPayment"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "promotionToken:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "not found promotionTag:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string p1, "120317"

    return-object p1

    .line 71
    :cond_0
    const-string p2, "found promotionTag"

    invoke-static {v2, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance p2, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;-><init>(I)V

    .line 73
    const-string v1, "promotionToken"

    invoke-virtual {p2, v1, p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    const-string p3, "offerToken"

    invoke-virtual {p2, p3, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, v0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subscribeOfMigration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", promotionTag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", linkedProductId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCNewPayment"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "promotionToken:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "not found promotionTag:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p1, "120317"

    return-object p1

    .line 95
    :cond_2
    const-string p1, "subscribeOfMigration found promotionTag"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;-><init>(I)V

    .line 97
    const-string v4, "promotionToken"

    invoke-virtual {p1, v4, p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    const-string p3, "offerToken"

    invoke-virtual {p1, p3, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    const-string p3, "olderItemId"

    invoke-virtual {p1, p3, p4}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p5, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/util/List;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    move-result-object p3

    if-nez p3, :cond_3

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "not found oldPurchase:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string p1, "120318"

    return-object p1

    .line 107
    :cond_3
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object p3

    const-string p4, "oldPurchaseToken"

    invoke-virtual {p1, p4, p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a()Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 111
    invoke-static {}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a()Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;->getProrationMode()I

    move-result p3

    if-ltz p3, :cond_4

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ProrationMode replace to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a()Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;

    move-result-object p4

    invoke-interface {p4}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;->getProrationMode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a()Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;->getProrationMode()I

    move-result p3

    goto :goto_1

    :cond_4
    const/4 p3, 0x6

    .line 116
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "prorationMode"

    invoke-virtual {p1, p4, p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-virtual {p0, v0, p2, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 13
    const-string v0, "Destroying PaymentClient."

    const-string v1, "GPCNewPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NewPayment destroy:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 42
    const-string v0, "GPCNewPayment"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 254
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchaseStartingFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
    .locals 1

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchaseFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-static {v0, v1, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/gpc/sdk/payment/utils/a$a;

    .line 327
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/gpc/sdk/payment/utils/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->q:Lcom/gpc/sdk/payment/utils/a;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/payment/utils/a;->a(Lcom/gpc/sdk/payment/utils/a$a;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;)V
    .locals 3

    .line 223
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;-><init>()V

    .line 224
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->setDeliveryState(Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    .line 225
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->setUserId(Ljava/lang/String;)V

    const-string p2, "GPCNewPayment"

    if-eqz p3, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item purchase state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->setItem(Lcom/gpc/sdk/payment/bean/GPCGameItem;)V

    .line 231
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTransactionHandleType:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object p3, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    const-string v1, ""

    if-ne p3, p4, :cond_1

    .line 234
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p0, p3, p1, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 236
    invoke-static {p2, v1, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :cond_1
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->j:Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;

    if-eqz p3, :cond_2

    .line 242
    invoke-interface {p3, p4, p1, v0}, Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;->onGPCPurchaseFinished(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 245
    invoke-static {p2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    .line 4
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    .line 6
    new-instance p2, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-direct {p2, v0, p1, v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->o:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    .line 8
    new-instance p1, Lcom/gpc/sdk/payment/utils/a;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/gpc/sdk/payment/utils/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->q:Lcom/gpc/sdk/payment/utils/a;

    .line 10
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getSubscriptionService()Lcom/gpc/sdk/payment/service/SubscriptionService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->p:Lcom/gpc/sdk/payment/service/SubscriptionService;

    .line 12
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->h()V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 4

    .line 255
    invoke-virtual {p0, p2, p3, p4}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTransactionHandleType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCNewPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    const-string v2, ""

    if-ne v0, p1, :cond_1

    .line 261
    :try_start_0
    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-3"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    invoke-interface {v0, v3, p3, p4}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->j:Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;

    if-eqz v0, :cond_2

    .line 277
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;->onGPCPurchaseFailed(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 280
    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->j:Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    .line 31
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    .line 37
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->w:Z

    if-nez v0, :cond_1

    .line 38
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->o:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    new-instance v1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 0

    .line 23
    sget-object p3, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->FRAUD_REPAY:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    .line 24
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->p:Lcom/gpc/sdk/payment/service/SubscriptionService;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    new-instance v3, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;

    invoke-direct {v3, p0, p1, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/gpc/sdk/payment/service/SubscriptionService;->isSubscriptionAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;",
            ")V"
        }
    .end annotation

    .line 45
    const-string v0, "checkSubscription"

    const-string v1, "GPCNewPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v4

    .line 48
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-static {v3, v0, v2, v5}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v7

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkSubscription purchases size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "checkSubscription purchase"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getPurchaseId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is target Subscription. sku:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;

    invoke-direct {v2}, Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;-><init>()V

    .line 57
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/payment/service/bean/GPCSubscriptionReceiptData;->setOriginalJson(Ljava/lang/String;)V

    .line 58
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->p:Lcom/gpc/sdk/payment/service/SubscriptionService;

    new-instance v8, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;

    invoke-direct {v8, p0, p3, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;Ljava/lang/String;)V

    move-object v5, p1

    invoke-interface/range {v2 .. v8}, Lcom/gpc/sdk/payment/service/SubscriptionService;->checkSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V
    .locals 11

    const-string v0, "UserId:"

    .line 178
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "10"

    if-nez v1, :cond_1

    .line 179
    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p3, p1, p2}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->isAvailable(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 180
    const-string p1, "120303"

    const p2, 0xde6ff

    invoke-static {p1, v3, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "GPCNewPayment"

    if-eqz p1, :cond_2

    .line 185
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "buy same item: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p2, "120313"

    invoke-static {p2, v3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_4

    .line 193
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, p0

    goto/16 :goto_5

    .line 194
    :cond_4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "try to buy flow "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 199
    :try_start_0
    const-string p2, "subs"

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->l:Ljava/lang/String;

    .line 200
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-static {p2, v4, v5}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateSubItemPayload(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v8, p2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v10, p0

    goto :goto_4

    .line 202
    :cond_5
    :try_start_1
    const-string p2, "inapp"

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->l:Ljava/lang/String;

    .line 203
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-static {p2, v4, v5, v6}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 206
    :goto_2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    .line 207
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    iget-object v6, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->l:Ljava/lang/String;

    new-instance p2, Lcom/gpc/util/MD5;

    invoke-direct {p2}, Lcom/gpc/util/MD5;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p2, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, p0

    move-object v5, p1

    move-object v9, p3

    .line 209
    :try_start_2
    invoke-virtual/range {v4 .. v10}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v10, p0

    :goto_3
    move-object p1, v0

    .line 212
    :goto_4
    const-string p2, "Error launching purchase flow. Another async operation in progress."

    invoke-static {v1, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    const-string p1, "120304"

    const p2, 0xde700

    invoke-static {p1, v3, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    sget-object p2, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    invoke-virtual {p0, p1, p2, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 218
    :goto_5
    const-string p1, "out pay"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "GPCNewPayment"

    if-eqz p1, :cond_0

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 287
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processTransaction paymentClientPurchase skyu:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 290
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    new-instance v3, Lcom/gpc/sdk/payment/flow/GPCNewPayment$g;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$g;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;IILjava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz p1, :cond_1

    .line 313
    const-string p1, "manager.processTransactionImmediately purchases null"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchasePreparingFinished(Lcom/gpc/sdk/error/GPCException;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->w:Z

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayActivity"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 19
    const-string v0, "subs"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x7

    if-le p3, v1, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v1, :cond_0

    .line 22
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 315
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 319
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    move-result-object p1

    .line 320
    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->FRUAD:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/cache/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    .line 52
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;
    .locals 3

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/cache/a;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->SUB:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    const-string v1, "GPCNewPayment"

    if-nez v0, :cond_3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "memory item not found. sku:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->z:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 84
    const-string v0, "memory cacheMapping not found."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->z:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 87
    const-string p1, "cacheMapping not found."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->z:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    if-nez v0, :cond_3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cacheMapping item not found. sku:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1

    .line 99
    :cond_3
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getCategory()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fraud item found. sku:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->FRUAD:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1

    .line 104
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "subs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 106
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->SUB:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1

    .line 109
    :cond_5
    sget-object p1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->INAPP:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p1
.end method

.method public b(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subscribeOfBasic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCNewPayment"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCGameItem;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "not found offerToken."

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string p1, "120317"

    return-object p1

    .line 46
    :cond_0
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;-><init>(I)V

    .line 47
    const-string v2, "offerToken"

    invoke-virtual {v1, v2, p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->putParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, v0, p1, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    const-string v0, "GPCNewPayment"

    const-string v1, "destroy."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->s:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    .line 6
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->j:Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->n:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a()V

    .line 12
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->n:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/flow/processing/d;->a()V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->o:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a()V

    .line 20
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a()V

    .line 22
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->z:Ljava/util/HashMap;

    .line 24
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchasePreparingFinished(Lcom/gpc/sdk/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 8

    .line 56
    const-string v1, ""

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p3

    move-object v5, p3

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v5, v0

    :goto_0
    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 65
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 68
    :cond_2
    sget-object v2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {p3}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkPayFailEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 70
    const-string p2, "GPCNewPayment"

    invoke-static {p2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 2

    .line 31
    const-string v0, "GPCNewPayment"

    const-string v1, "subscribeTo"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    .line 34
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->o:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    new-instance v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;)V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 28
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p0, p2, v1, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getCategory()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getAssociatedSubscriptionItemId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getAssociatedSubscriptionItemId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_0
    new-instance p1, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 17
    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/cache/a;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    .line 6
    :cond_0
    new-instance p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;

    invoke-direct {p2, p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$d;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;)V

    return-void
.end method

.method public final d()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    const-string v0, "card_list"

    const/4 v1, 0x0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->x:Lcom/gpc/sdk/service/helper/HttpReponseCacher;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/service/helper/HttpReponseCacher;->readResponseFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 25
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 29
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 30
    invoke-static {v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->createFromJsonV2(Lorg/json/JSONObject;Z)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    .line 37
    const-string v2, "GPCNewPayment"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i:Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;->onGPCPurchaseSuccessFromPlatfrom(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/processing/d;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "GPCNewPayment"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The last  unconsumed product ID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "you have by the item just post to :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    invoke-virtual {p1, v3}, Lcom/gpc/sdk/payment/flow/processing/d;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_2
    return v2
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/gpc/sdk/GPCSDKConstant$PaymentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->k:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    const-string v0, "911107"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;)V

    return-void
.end method

.method public onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    return-void
.end method

.method public onInitialized(Lcom/gpc/sdk/error/GPCException;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->s:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "10"

    const v1, 0xde701

    const-string v2, "120309"

    invoke-static {v2, v0, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/error/GPCException;)V

    .line 7
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkPayInitFailEvent(Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 11
    :cond_0
    const-string v0, "QueryHelper startSetup Success"

    const-string v1, "GPCNewPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    const-string v0, "QueryHelper startSetup Success e.isNone()"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    new-instance v2, Lcom/gpc/sdk/payment/flow/processing/d;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->v:Lcom/gpc/sdk/payment/flow/cache/a;

    iget-object v6, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-direct/range {v2 .. v8}, Lcom/gpc/sdk/payment/flow/processing/d;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/flow/cache/a;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V

    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    .line 19
    invoke-virtual {v2, p0}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    .line 22
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->SAMSUNG:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne v0, v1, :cond_1

    .line 24
    new-instance v2, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-direct {v2, v3, v4, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->o:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    .line 25
    new-instance v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$f;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$f;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;)V

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;)V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-direct {v2, v3, v4, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->n:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    .line 35
    invoke-virtual {v2, p0}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;)V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-eq v0, v1, :cond_2

    .line 39
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/error/GPCException;)V

    :cond_2
    return-void

    .line 42
    :cond_3
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkPayInitFailEvent(Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/error/GPCException;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "QueryHelper startSetup Success e.isOccurred():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable()Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchased repaymentPurchaseEnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCNewPayment"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    const-string p1, "existFraudPurchase"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->u:Lcom/gpc/util/SDKTask;

    new-instance v1, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    new-instance p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;

    invoke-direct {p2, p0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/error/GPCException;)V

    invoke-virtual {v0, v1, p2}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public onQueryPurchasesScheduleResult(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-static {p1, p2}, Lcom/gpc/sdk/payment/utils/b;->a(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/util/List;)V

    if-eqz p2, :cond_3

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onQueryPurchasesScheduleResult:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GPCNewPayment"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable()Z

    move-result v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onQueryPurchasesScheduleResult repaymentPurchaseEnable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 15
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    move-result-object v2

    .line 16
    sget-object v3, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->FRUAD:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add to consume queue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    invoke-virtual {v2, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->n:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 0

    return-void
.end method
