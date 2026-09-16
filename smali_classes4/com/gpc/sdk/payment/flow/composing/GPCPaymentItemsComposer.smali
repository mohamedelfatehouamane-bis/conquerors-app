.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "GPCPaymentItemsComposer"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

.field public b:I

.field public c:Lcom/gpc/sdk/utils/modules/cache/ICache;

.field public d:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

.field public e:Ljava/util/concurrent/Executor;

.field public f:Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;ILjava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->d:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    .line 3
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-direct {v0, p1, p3}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    .line 4
    iput p4, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "loadItemLimit:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "GPCPaymentItemsComposer"

    invoke-static {p3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->b()Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    move-result-object p1

    instance-of p1, p1, Lcom/gpc/sdk/payment/flow/client/google/a;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1, p2, p0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->b()Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    move-result-object p1

    instance-of p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1, p2, p0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->cacheModule()Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->cacheModule()Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/cache/CacheModule;->createItemsInStorePriceCache()Lcom/gpc/sdk/utils/modules/cache/ICache;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->c:Lcom/gpc/sdk/utils/modules/cache/ICache;

    .line 17
    :cond_2
    new-instance p1, Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->c:Lcom/gpc/sdk/utils/modules/cache/ICache;

    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/gpc/sdk/payment/flow/composing/cache/SkuDetailsListCacheStrategyByNormal;-><init>(Lcom/gpc/sdk/utils/modules/cache/ICache;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->f:Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;

    .line 18
    iput-object p5, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;Ljava/util/List;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->f:Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 10
    new-instance v0, Lcom/gpc/util/MD5;

    invoke-direct {v0}, Lcom/gpc/util/MD5;-><init>()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->d:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_V2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",loadItemLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCPaymentItemsComposer"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    div-int/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "listCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 20
    :goto_2
    iget v7, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    if-ge v6, v7, :cond_2

    mul-int v7, v7, v4

    add-int/2addr v7, v6

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    goto :goto_3

    .line 25
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "items index:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    mul-int v8, v8, v4

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "items id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    mul-int v8, v8, v4

    add-int/2addr v8, v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget v7, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b:I

    mul-int v7, v7, v4

    add-int/2addr v7, v6

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 29
    :cond_2
    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 33
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 4
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 p1, 0x0

    .line 6
    filled-new-array {p1}, [I

    move-result-object v2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    aget v0, v2, p1

    invoke-virtual {p0, v6, v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    aget p1, v2, p1

    invoke-virtual {p0, v7, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    move-object v1, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;[ILjava/util/List;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V

    invoke-virtual {p2, v9, p1, v0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "writeCache"

    const-string v1, "GPCPaymentItemsComposer"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "skuDetailsList:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 11
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    .line 14
    :try_start_0
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 19
    invoke-static {v1, v4, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 24
    :cond_2
    :try_start_1
    const-string p1, "array"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 26
    invoke-static {v1, v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->c:Lcom/gpc/sdk/utils/modules/cache/ICache;

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/utils/modules/cache/ICache;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 31
    :cond_4
    :goto_2
    const-string p1, "skuDetailsList is null."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public compose(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V

    return-void
.end method

.method public composeFromCache()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    const-string v1, "composeFromCache"

    const-string v2, "GPCPaymentItemsComposer"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->c:Lcom/gpc/sdk/utils/modules/cache/ICache;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 4
    const-string v0, "cacheM is null"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/gpc/sdk/utils/modules/cache/ICache;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    const-string v0, "cache data is null"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 12
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v1, "array"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v4, v5, :cond_3

    .line 18
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {v5}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;->createfromJson(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 21
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create details error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 26
    :try_start_2
    invoke-static {v2, v0, v5}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 30
    invoke-static {v2, v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v3
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentItemsComposer destroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPaymentItemsComposer"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->destroy()V

    :cond_0
    return-void
.end method

.method public onInitialized(Lcom/gpc/sdk/error/GPCException;)V
    .locals 0

    return-void
.end method
