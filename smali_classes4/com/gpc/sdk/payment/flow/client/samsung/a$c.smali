.class public Lcom/gpc/sdk/payment/flow/client/samsung/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnConsumePurchasedItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/samsung/a;->consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/samsung/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->c:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumePurchasedItems(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;",
            ">;)V"
        }
    .end annotation

    const-string p2, "120906"

    const-string v0, "20"

    if-eqz p1, :cond_2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Samsung pay consume errorVO.getErrorCode():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungPaymentClient"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    const/16 v2, -0x442

    if-ne v1, v2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p1

    .line 9
    const-string v1, "120909"

    invoke-static {v1, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 10
    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p1

    .line 17
    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 18
    invoke-interface {v1, p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    .line 24
    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 25
    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method
