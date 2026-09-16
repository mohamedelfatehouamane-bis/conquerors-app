.class public Lcom/gpc/ops/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;
.implements Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;
.implements Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/ops/j$d;
    }
.end annotation


# static fields
.field public static final u:Ljava/lang/String; = "NewPayment"


# instance fields
.field public a:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public b:Landroid/app/Activity;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/gpc/tsh/pay/bean/OrderType;

.field public f:Ljava/lang/String;

.field public g:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

.field public h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

.field public i:Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;

.field public j:Lcom/gpc/ops/n;

.field public k:Ljava/lang/String;

.field public l:Lcom/gpc/ops/w;

.field public m:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

.field public n:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

.field public o:Lcom/gpc/ops/s;

.field public p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Lcom/gpc/operations/migrate/utils/SDKTask;

.field public t:Lcom/gpc/ops/p;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/ops/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/ops/j;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/gpc/ops/j;->q:Z

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/utils/SDKTask;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/SDKTask;-><init>()V

    iput-object v0, p0, Lcom/gpc/ops/j;->s:Lcom/gpc/operations/migrate/utils/SDKTask;

    .line 16
    iput-object p3, p0, Lcom/gpc/ops/j;->c:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 19
    iput-object p1, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    .line 20
    iput-object p5, p0, Lcom/gpc/ops/j;->t:Lcom/gpc/ops/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/operations/migrate/error/GPCException;)I
    .locals 0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x270f

    return p1
.end method

.method public a()V
    .locals 2

    .line 6
    const-string v0, "NewPayment"

    const-string v1, "destroy."

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/gpc/ops/j;->q:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    .line 11
    iput-object v0, p0, Lcom/gpc/ops/j;->i:Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;

    .line 13
    invoke-virtual {p0}, Lcom/gpc/ops/j;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/gpc/ops/j;->m:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a()V

    .line 17
    iput-object v0, p0, Lcom/gpc/ops/j;->m:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    invoke-virtual {v0}, Lcom/gpc/ops/w;->a()V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/gpc/ops/j;->n:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a()V

    .line 25
    invoke-virtual {p0}, Lcom/gpc/ops/j;->b()V

    .line 27
    iget-object v0, p0, Lcom/gpc/ops/j;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V
    .locals 1

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchaseFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 102
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCGameItem;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/tsh/pay/bean/GPCGameItem;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/ops/j;->e:Lcom/gpc/tsh/pay/bean/OrderType;

    iget-object v2, p0, Lcom/gpc/ops/j;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/ops/j;->g:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    invoke-static {v0, v1, v2, v3}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/OrderType;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/gpc/ops/s$a;

    .line 169
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/ops/j;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/gpc/ops/s$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/gpc/ops/j;->o:Lcom/gpc/ops/s;

    invoke-virtual {p1, v1}, Lcom/gpc/ops/s;->a(Lcom/gpc/ops/s$a;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;)V
    .locals 3

    .line 73
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;

    invoke-direct {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;-><init>()V

    .line 74
    invoke-virtual {v0, p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->setDeliveryState(Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->setUserId(Ljava/lang/String;)V

    const-string p2, "NewPayment"

    if-eqz p3, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item purchase state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Lcom/gpc/tsh/pay/bean/GPCGameItem;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->setItem(Lcom/gpc/tsh/pay/bean/GPCGameItem;)V

    .line 81
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTransactionHandleType:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object p3, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    const-string v1, ""

    if-ne p3, p4, :cond_1

    .line 84
    :try_start_0
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p3

    invoke-virtual {p0, p3, p1, v0}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 86
    invoke-static {p2, v1, p3}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_1
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/gpc/ops/j;->i:Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;

    if-eqz p3, :cond_2

    .line 92
    invoke-interface {p3, p4, p1, v0}, Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;->onGPCPurchaseFinished(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 95
    invoke-static {p2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    .line 2
    new-instance p1, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    iget-object v0, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-direct {p1, v0, v1}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p1, p0, Lcom/gpc/ops/j;->n:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    .line 3
    new-instance p1, Lcom/gpc/ops/s;

    iget-object v0, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/gpc/ops/s;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/ops/j;->o:Lcom/gpc/ops/s;

    .line 4
    new-instance p1, Lcom/gpc/ops/n;

    iget-object v0, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-direct {p1, v0, v1}, Lcom/gpc/ops/n;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p1, p0, Lcom/gpc/ops/j;->j:Lcom/gpc/ops/n;

    .line 5
    invoke-virtual {p1, p0}, Lcom/gpc/ops/n;->init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 4

    .line 103
    invoke-virtual {p0, p2, p3, p4}, Lcom/gpc/ops/j;->b(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentTransactionHandleType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPayment"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    const-string v2, ""

    if-ne v0, p1, :cond_1

    .line 109
    :try_start_0
    iput-object v2, p0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-3"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v3

    invoke-interface {v0, v3, p3, p4}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/gpc/ops/j;->i:Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;->onGPCPurchaseFailed(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 128
    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/gpc/ops/j;->i:Lcom/gpc/tsh/pay/listener/PurchaseRedeliveryListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 13

    const-string v0, "UserId:"

    .line 41
    invoke-virtual {p0}, Lcom/gpc/ops/j;->g()Z

    move-result v1

    const-string v2, "10"

    if-nez v1, :cond_0

    .line 42
    const-string p1, "220301"

    const v0, 0xde6ff

    invoke-static {p1, v2, v0}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->c(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    :cond_0
    const-string v1, "NewPayment"

    if-eqz p1, :cond_1

    .line 46
    iget-object v3, p0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "buy same item: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "220306"

    invoke-static {v0, v2}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "try to buy flow "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    const-string v3, "inapp"

    iput-object v3, p0, Lcom/gpc/ops/j;->k:Ljava/lang/String;

    .line 59
    iget-object v3, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/ops/j;->e:Lcom/gpc/tsh/pay/bean/OrderType;

    iget-object v5, p0, Lcom/gpc/ops/j;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/gpc/ops/j;->g:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    invoke-static {v3, v4, v5, v6}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/OrderType;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v11

    .line 60
    iput-object p1, p0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    .line 61
    iget-object v7, p0, Lcom/gpc/ops/j;->j:Lcom/gpc/ops/n;

    iget-object v9, p0, Lcom/gpc/ops/j;->k:Ljava/lang/String;

    new-instance v3, Lcom/gpc/operations/migrate/utils/MD5;

    invoke-direct {v3}, Lcom/gpc/operations/migrate/utils/MD5;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v3, v0}, Lcom/gpc/operations/migrate/utils/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, p0

    move-object v8, p1

    .line 63
    :try_start_1
    invoke-virtual/range {v7 .. v12}, Lcom/gpc/ops/n;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v12, p0

    :goto_0
    move-object p1, v0

    .line 66
    const-string v0, "Error launching purchase flow. Another async operation in progress."

    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    const-string p1, "220302"

    const v0, 0xde700

    invoke-static {p1, v2, v0}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    sget-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto :goto_1

    :cond_2
    move-object v12, p0

    .line 72
    :goto_1
    const-string p1, "out pay"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    iput-object v0, p0, Lcom/gpc/ops/j;->e:Lcom/gpc/tsh/pay/bean/OrderType;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/ops/j;->f:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/gpc/ops/j;->g:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    .line 36
    iget-object v0, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p2}, Lcom/gpc/ops/w;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V
    .locals 0

    .line 29
    sget-object p3, Lcom/gpc/tsh/pay/bean/OrderType;->FRAUD_REPAY:Lcom/gpc/tsh/pay/bean/OrderType;

    iput-object p3, p0, Lcom/gpc/ops/j;->e:Lcom/gpc/tsh/pay/bean/OrderType;

    .line 30
    iput-object p2, p0, Lcom/gpc/ops/j;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "NewPayment"

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 135
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processTransaction paymentClientPurchase skyu:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 138
    iget-object v0, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    new-instance v3, Lcom/gpc/ops/j$a;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/gpc/ops/j$a;-><init>(Lcom/gpc/ops/j;IILjava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/gpc/ops/w;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz p1, :cond_1

    .line 161
    const-string p1, "manager.processTransactionImmediately purchases null"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchasePreparingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_1
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 2

    .line 131
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

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/gpc/ops/j;->j:Lcom/gpc/ops/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/ops/n;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Lcom/gpc/tsh/pay/bean/GPCGameItem;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/gpc/ops/j;->t:Lcom/gpc/ops/p;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/ops/p;->a(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/gpc/ops/j;->t:Lcom/gpc/ops/p;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/ops/p;->b(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCGameItem;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 3

    .line 1
    const-string v0, "Destroying PaymentClient."

    const-string v1, "NewPayment"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/j;->j:Lcom/gpc/ops/n;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NewPayment destroy:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/ops/j;->j:Lcom/gpc/ops/n;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/ops/j;->j:Lcom/gpc/ops/n;

    invoke-virtual {v0}, Lcom/gpc/ops/n;->destroy()V

    :cond_0
    return-void
.end method

.method public b(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchasePreparingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 8

    .line 26
    const-string v1, ""

    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

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

    .line 35
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 38
    :cond_2
    sget-object v2, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object p3, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {p3}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;->sdkPayFailEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 40
    const-string p2, "NewPayment"

    invoke-static {p2, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    invoke-virtual {v0}, Lcom/gpc/ops/w;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "NewPayment"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The last  unconsumed product ID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "you have by the item just post to :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    invoke-virtual {p1, v3}, Lcom/gpc/ops/w;->c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_2
    return v2
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public c(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchaseStartingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchaseSuccessFromPlatfrom(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/gpc/ops/j;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/gpc/tsh/pay/bean/PaymentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    const-string v0, "911107"

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    sget-object v1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/gpc/ops/j;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;)V

    return-void
.end method

.method public onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    return-void
.end method

.method public onInitialized(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/gpc/ops/j;->q:Z

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "10"

    const v1, 0xde701

    const-string v2, "220305"

    invoke-static {v2, v0, v1}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/gpc/ops/j;->b(Lcom/gpc/operations/migrate/error/GPCException;)V

    .line 7
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object v1, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;->sdkPayInitFailEvent(Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 11
    :cond_0
    const-string v0, "QueryHelper startSetup Success"

    const-string v1, "NewPayment"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    const-string v0, "QueryHelper startSetup Success e.isNone()"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/gpc/ops/j;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    new-instance v0, Lcom/gpc/ops/w;

    iget-object v1, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    iget-object v3, p0, Lcom/gpc/ops/j;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/ops/j;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gpc/ops/w;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    .line 19
    invoke-virtual {v0, p0}, Lcom/gpc/ops/w;->a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    .line 21
    new-instance v0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    iget-object v1, p0, Lcom/gpc/ops/j;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object v0, p0, Lcom/gpc/ops/j;->m:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    .line 22
    invoke-virtual {v0, p0}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->b(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 25
    :cond_1
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;

    iget-object v2, p0, Lcom/gpc/ops/j;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v2}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/gpc/operations/migrate/utils/common/eventcollection/SDKEventHelper$Companion;->sdkPayInitFailEvent(Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/gpc/ops/j;->b(Lcom/gpc/operations/migrate/error/GPCException;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "QueryHelper startSetup Success e.isOccurred():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchased(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->s:Lcom/gpc/operations/migrate/utils/SDKTask;

    new-instance v1, Lcom/gpc/ops/j$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/ops/j$b;-><init>(Lcom/gpc/ops/j;Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    new-instance p2, Lcom/gpc/ops/j$c;

    invoke-direct {p2, p0, p1}, Lcom/gpc/ops/j$c;-><init>(Lcom/gpc/ops/j;Lcom/gpc/operations/migrate/error/GPCException;)V

    invoke-virtual {v0, v1, p2}, Lcom/gpc/operations/migrate/utils/SDKTask;->excuteForTimeConsuming(Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public onQueryPurchasesScheduleResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onQueryPurchasesScheduleResult:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NewPayment"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/ops/j;->r:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/gpc/ops/c;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/gpc/ops/j;->l:Lcom/gpc/ops/w;

    invoke-virtual {v2, p2}, Lcom/gpc/ops/w;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/j;->m:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 0

    return-void
.end method
