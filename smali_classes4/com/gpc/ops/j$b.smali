.class public Lcom/gpc/ops/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/j;->onPurchased(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable<",
        "Lcom/gpc/ops/j$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/error/GPCException;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/gpc/ops/j;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/j;Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iput-object p2, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    iput-object p3, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/gpc/ops/j$d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NewPayment"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    const-string v0, "Purchase successful try to post to "

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v4, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v0, v4}, Lcom/gpc/ops/j;->c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 7
    iget-object v0, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onPurchased:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    invoke-virtual {v1, v0}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 12
    iget-object v1, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v1, v1, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    invoke-virtual {v1, v0}, Lcom/gpc/ops/w;->c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 16
    iget-object v4, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    invoke-virtual {v4, v1}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v0, v0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    iget-object v1, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/gpc/ops/w;->a(Ljava/util/List;)V

    goto/16 :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-3"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    const-string v0, "user cancled."

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v1, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    sget-object v4, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    invoke-virtual {v0, v1, v4, v2}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto/16 :goto_2

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-4"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "20"

    if-eqz v0, :cond_4

    .line 24
    const-string v0, "user ANOTHER_OPERATION_RUNNING_NEED_AWAITING."

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    .line 26
    const-string v1, "220308"

    const v5, 0xde702

    invoke-static {v1, v4, v5}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    sget-object v4, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 27
    invoke-virtual {v0, v1, v4, v2}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto/16 :goto_2

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v5, "-5"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    const-string v0, "user REPEAT_PURCHASE."

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 36
    iget-object v0, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 37
    iget-object v4, p0, Lcom/gpc/ops/j$b;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 39
    :cond_5
    const-string v0, "itemId not found."

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v1, v0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    :cond_6
    move-object v0, v2

    .line 44
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "itemId\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v4, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v5, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    sget-object v6, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    invoke-virtual {v4, v5, v6, v0}, Lcom/gpc/ops/j;->b(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 46
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v4, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0, v4, v1}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user PAYMENT_ERROR_FOR_PURCHASEFLOW_RESULT_FAILURE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v5, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v1, v5}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/gpc/ops/j$b;->c:Lcom/gpc/ops/j;

    iget-object v1, p0, Lcom/gpc/ops/j$b;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 51
    invoke-virtual {v0, v1}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;)I

    move-result v1

    .line 52
    const-string v5, "220304"

    invoke-static {v5, v4, v1}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    sget-object v4, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 53
    invoke-virtual {v0, v1, v4, v2}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 59
    :goto_2
    const-string v0, "out OnIabPurchaseFinishedListener"

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/gpc/ops/j$b;->run()Lcom/gpc/ops/j$d;

    move-result-object v0

    return-object v0
.end method
