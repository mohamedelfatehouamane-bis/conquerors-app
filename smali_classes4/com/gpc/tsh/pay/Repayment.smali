.class public Lcom/gpc/tsh/pay/Repayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/IRepayment;
.implements Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/Repayment$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "Repayment"


# instance fields
.field public a:Lcom/gpc/tsh/pay/RepaymentCompatProxy;

.field public b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

.field public c:Lcom/gpc/ops/j;

.field public d:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

.field public e:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Z

.field public h:Z

.field public i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

.field public j:Lcom/gpc/ops/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/gpc/tsh/pay/RepaymentDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/tsh/pay/RepaymentDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->a:Lcom/gpc/tsh/pay/RepaymentCompatProxy;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/Repayment;->g:Z

    .line 14
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/Repayment;->h:Z

    return-void
.end method


# virtual methods
.method public OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Repayment"

    const-string p2, "PurchaseFailedDueToThePendingPurchaseOfTheSameItem"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    const-string p2, "220205"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, v0}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onTransactionPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/tsh/pay/Repayment;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gpc/tsh/pay/Repayment;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    const-string v0, "Repayment"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/Repayment;->g:Z

    .line 5
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/Repayment;->h:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->j:Lcom/gpc/ops/p;

    .line 8
    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->c:Lcom/gpc/ops/j;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/gpc/ops/j;->a()V

    .line 10
    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->c:Lcom/gpc/ops/j;

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->d:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->b()V

    .line 15
    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->d:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->e:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a()V

    .line 20
    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->e:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    :cond_2
    return-void
.end method

.method public initialize(Landroid/app/Activity;Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;)V
    .locals 6

    .line 1
    const-string v0, "initialize"

    const-string v1, "Repayment"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/gpc/tsh/pay/Repayment;->g:Z

    if-eqz v0, :cond_0

    .line 3
    const-string p1, "Do not repeatedly call initialize !"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    const-string p1, "Do not call initialize while it is initializing now !"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iput-object p2, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    .line 12
    new-instance p2, Lcom/gpc/ops/p;

    sget-object v2, Lcom/gpc/tsh/pay/bean/PaymentType;->GOOGLE_PLAY:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-direct {p2, v2}, Lcom/gpc/ops/p;-><init>(Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p2, p0, Lcom/gpc/tsh/pay/Repayment;->j:Lcom/gpc/ops/p;

    .line 13
    iget-object p2, p0, Lcom/gpc/tsh/pay/Repayment;->a:Lcom/gpc/tsh/pay/RepaymentCompatProxy;

    invoke-interface {p2}, Lcom/gpc/tsh/pay/RepaymentCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v0, Lcom/gpc/ops/j;

    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object p2

    invoke-interface {p2}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/gpc/tsh/pay/Repayment;->j:Lcom/gpc/ops/p;

    move-object v1, p1

    move-object v4, v3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/gpc/ops/j;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/ops/p;)V

    move-object v3, v4

    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->c:Lcom/gpc/ops/j;

    .line 15
    new-instance v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    iget-object v5, p0, Lcom/gpc/tsh/pay/Repayment;->j:Lcom/gpc/ops/p;

    const-string v4, "android"

    invoke-direct/range {v0 .. v5}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/ops/p;)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->d:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    .line 16
    new-instance p1, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    invoke-direct {p1, v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->e:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    .line 17
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->c:Lcom/gpc/ops/j;

    invoke-virtual {p1, p0}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Repayment"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->c:Lcom/gpc/ops/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/ops/j;->a(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onGPCPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    const-string p3, "Repayment"

    const-string v0, "onGPCPurchaseFailed"

    invoke-static {p3, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 3
    sget-object p1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const-string p3, "10"

    if-ne p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    const-string p2, "220204"

    invoke-static {p2, p3}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onGatewayFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void

    .line 8
    :cond_0
    sget-object p1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    if-ne p2, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    const-string p2, "220203"

    invoke-static {p2, p3}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onTransactionPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    const-string p2, "220202"

    invoke-static {p2, p3}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onTransactionPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCPurchaseFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V
    .locals 1

    .line 1
    const-string p1, "onGPCPurchaseFinished"

    const-string p2, "Repayment"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GPCPaymentGatewayResult:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->deliveryState()Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onTransactionPurchaseFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCPurchasePreparingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    const-string v0, "Repayment"

    const-string v1, "onGPCPurchasePreparingFinished"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gpc/tsh/pay/Repayment;->g:Z

    .line 4
    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-boolean v0, p0, Lcom/gpc/tsh/pay/Repayment;->h:Z

    return-void

    .line 9
    :cond_0
    iput-boolean v2, p0, Lcom/gpc/tsh/pay/Repayment;->h:Z

    .line 10
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    return-void
.end method

.method public onGPCPurchaseStartingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 1
    const-string p1, "Repayment"

    const-string v0, "onGPCPurchaseStartingFinished"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    const-string v0, "220201"

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, v0, v1}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onRepaymentFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCPurchaseSuccessFromPlatfrom(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    const-string p1, "Repayment"

    const-string v0, "onGPCPurchaseSuccessFromPlatfrom"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-interface {p1, v0, v1}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onTransactionPurchasePurchased(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/tsh/pay/bean/GPCGameItem;)V
    .locals 0

    return-void
.end method

.method public queryProducts(Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;)V
    .locals 2

    .line 1
    const-string v0, "Repayment"

    const-string v1, "queryProducts"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/tsh/pay/Repayment$a;

    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment;->e:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    invoke-direct {v0, v1, p1}, Lcom/gpc/tsh/pay/Repayment$a;-><init>(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->d:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    invoke-virtual {p1, v0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;)Z

    return-void
.end method

.method public repay(Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 3

    .line 1
    const-string v0, "repay"

    const-string v1, "Repayment"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/tsh/pay/Repayment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "isAvailable false"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    const-string v1, "220201"

    const-string v2, "10"

    invoke-static {v1, v2}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onRepaymentFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->b:Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;->onTransactionPurchasePurchasing(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    .line 14
    iput-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->i:Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    .line 15
    iget-object v0, p0, Lcom/gpc/tsh/pay/Repayment;->c:Lcom/gpc/ops/j;

    iget-object p1, p1, Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/gpc/ops/j;->a(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public setRepaymentCompatProxy(Lcom/gpc/tsh/pay/RepaymentCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/Repayment;->a:Lcom/gpc/tsh/pay/RepaymentCompatProxy;

    return-void
.end method
