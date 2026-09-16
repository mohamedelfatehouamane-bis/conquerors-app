.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback<",
        "Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->d:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    iput p3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->b:I

    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->d:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Ljava/lang/Exception;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "HuaweiPaymentClient"

    if-nez p1, :cond_0

    .line 2
    const-string p1, "queryPurchases onSuccess, but result is null!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getReturnCode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryPurchases error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getReturnCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getReturnCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppSignature()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppSignature()Ljava/util/List;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getItemList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 24
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 25
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchases itemId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget v7, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->b:I

    const/4 v8, 0x2

    if-ne v8, v7, :cond_3

    .line 30
    const-string v7, "subs"

    goto :goto_2

    :cond_3
    const-string v8, "inapp"

    if-nez v7, :cond_4

    goto :goto_1

    .line 34
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Error Type:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->b:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v7, v8

    .line 36
    :goto_2
    new-instance v8, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {v8, v7, v5, v6}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->c:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_5
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 42
    const-string v0, "queryPurchases ContinuationToken is not null!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->d:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iget v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->b:I

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getContinuationToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/lang/String;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    return-void

    .line 45
    :cond_6
    const-string p1, "queryPurchases finish!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->c:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 47
    :cond_7
    :goto_3
    const-string p1, "queryPurchases onSuccess, but getInAppPurchaseDataList is null!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;->onSuccess(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    return-void
.end method
