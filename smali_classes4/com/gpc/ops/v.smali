.class public Lcom/gpc/ops/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;
.implements Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;


# static fields
.field public static final f:Ljava/lang/String; = "PaymentTransactionsCommitter"


# instance fields
.field public a:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public b:Lcom/gpc/ops/n;

.field public c:Lcom/gpc/ops/t;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string v0, "PaymentTransactionsCommitter"

    const-string v1, "PaymentTransactionsCommitter activity is null"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/ops/v;->d:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/ops/v;->e:Ljava/lang/String;

    .line 9
    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->GOOGLE_PLAY:Lcom/gpc/tsh/pay/bean/PaymentType;

    iput-object v1, p0, Lcom/gpc/ops/v;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 10
    new-instance v2, Lcom/gpc/ops/n;

    invoke-direct {v2, v0, v1}, Lcom/gpc/ops/n;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object v2, p0, Lcom/gpc/ops/v;->b:Lcom/gpc/ops/n;

    .line 11
    new-instance v1, Lcom/gpc/ops/t;

    iget-object v2, p0, Lcom/gpc/ops/v;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    iget-object v3, p0, Lcom/gpc/ops/v;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/ops/v;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/gpc/ops/t;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gpc/ops/v;->c:Lcom/gpc/ops/t;

    .line 12
    invoke-virtual {v1, p0}, Lcom/gpc/ops/t;->a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/v;->b:Lcom/gpc/ops/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "PaymentTransactionsCommitter"

    const-string v1, "PaymentTransactionsCommitter commitAfterQuery"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/v;->b:Lcom/gpc/ops/n;

    invoke-virtual {v0, p0}, Lcom/gpc/ops/n;->init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method

.method public final synthetic a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 3

    .line 4
    const-string p1, "paymentClient.queryPurchases ==================="

    const-string v0, "PaymentTransactionsCommitter"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaymentTransactionsCommitter item:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/gpc/ops/c;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/gpc/ops/v;->c:Lcom/gpc/ops/t;

    invoke-virtual {v1, p2}, Lcom/gpc/ops/t;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const-string v0, "PaymentTransactionsCommitter destroy"

    const-string v1, "PaymentTransactionsCommitter"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/v;->b:Lcom/gpc/ops/n;

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "PaymentTransactionsCommitter paymentClient destroy"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/ops/v;->b:Lcom/gpc/ops/n;

    invoke-virtual {v0}, Lcom/gpc/ops/n;->destroy()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/v;->c:Lcom/gpc/ops/t;

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "PaymentTransactionsCommitter processor destroy"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/ops/v;->c:Lcom/gpc/ops/t;

    invoke-virtual {v0}, Lcom/gpc/ops/t;->a()V

    :cond_1
    return-void
.end method

.method public onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTransactionsCommitter onCommitGatewayFail :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PaymentTransactionsCommitter"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V
    .locals 0

    .line 1
    const-string p1, "PaymentTransactionsCommitter"

    const-string p2, "PaymentTransactionsCommitter onCommitGatewaySuccess"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    const-string p1, "PaymentTransactionsCommitter"

    const-string p2, "PaymentTransactionsCommitter onConsumeFail"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    const-string p1, "PaymentTransactionsCommitter"

    const-string p2, "PaymentTransactionsCommitter onConsumeSuccess"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitialized(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    const-string v0, "PaymentTransactionsCommitter onInitialized startSetup finish"

    const-string v1, "PaymentTransactionsCommitter"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    const-string p1, "PaymentTransactionsCommitter startSetup Success e.isNone()"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/ops/v;->b:Lcom/gpc/ops/n;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/ops/v$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gpc/ops/v$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/ops/v;)V

    invoke-virtual {p1, v0}, Lcom/gpc/ops/n;->queryPurchases(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PaymentTransactionsCommitter startSetup Success e.isOccurred():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTransactionsCommitter onReceivedQueryInventoryTaskInterval :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PaymentTransactionsCommitter"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 2

    .line 1
    const-string v0, "PaymentTransactionsCommitter"

    const-string v1, "PaymentTransactionsCommitter onSubItemHasCommited"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
