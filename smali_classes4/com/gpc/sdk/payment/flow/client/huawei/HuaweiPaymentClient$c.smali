.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback<",
        "Lcom/huawei/hms/iap/entity/ProductInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

.field public final synthetic b:I

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    iput p3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Ljava/lang/Exception;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

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

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "HuaweiPaymentClient"

    if-nez p1, :cond_0

    .line 2
    const-string p1, "querySkuDetails onSuccess, but result is null!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getReturnCode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "querySkuDetails error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getReturnCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getReturnCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getProductInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    .line 15
    const-string p1, "querySkuDetails onSuccess, but getProductInfoList is null!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getProductInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/iap/entity/ProductInfo;

    .line 24
    iget v3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->b:I

    const/4 v4, 0x2

    if-ne v4, v3, :cond_3

    .line 25
    const-string v3, "subs"

    goto :goto_2

    :cond_3
    const-string v4, "inapp"

    if-nez v3, :cond_4

    goto :goto_1

    .line 29
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error Type:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v3, v4

    .line 31
    :goto_2
    new-instance v4, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;

    invoke-direct {v4, v3, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;-><init>(Ljava/lang/String;Lcom/huawei/hms/iap/entity/ProductInfo;)V

    .line 32
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/iap/entity/ProductInfoResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;->onSuccess(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V

    return-void
.end method
