.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
        "Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "GPCNewPayment"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    const-string v0, "Purchase successful try to post to "

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v0, v4}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onPurchased:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 11
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/flow/processing/d;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto/16 :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 15
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v4, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->m:Lcom/gpc/sdk/payment/flow/processing/d;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Ljava/util/List;)V

    goto/16 :goto_2

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-3"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    const-string v0, "user cancled."

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    sget-object v4, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    invoke-virtual {v0, v1, v4, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto/16 :goto_2

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-4"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "20"

    if-eqz v0, :cond_4

    .line 23
    const-string v0, "user ANOTHER_OPERATION_RUNNING_NEED_AWAITING."

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    .line 25
    const-string v1, "120913"

    const v5, 0xde702

    invoke-static {v1, v4, v5}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    sget-object v4, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    .line 26
    invoke-virtual {v0, v1, v4, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto/16 :goto_2

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v5, "-5"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    const-string v0, "user REPEAT_PURCHASE."

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 36
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 38
    :cond_5
    const-string v0, "itemId not found."

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, v0, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->t:Ljava/lang/String;

    :cond_6
    move-object v0, v2

    .line 43
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "itemId\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    sget-object v6, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 45
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0, v4, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    goto :goto_2

    .line 47
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user PAYMENT_ERROR_FOR_PURCHASEFLOW_RESULT_FAILURE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v1, v5}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a:Lcom/gpc/sdk/error/GPCException;

    .line 50
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;)I

    move-result v1

    .line 51
    const-string v5, "120307"

    invoke-static {v5, v4, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    sget-object v4, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    .line 52
    invoke-virtual {v0, v1, v4, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 58
    :goto_2
    const-string v0, "out OnIabPurchaseFinishedListener"

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$h;->a()Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;

    move-result-object v0

    return-object v0
.end method
