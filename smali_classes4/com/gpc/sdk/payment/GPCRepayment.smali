.class public Lcom/gpc/sdk/payment/GPCRepayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/IGPCRepayment;
.implements Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/GPCRepayment$e;,
        Lcom/gpc/sdk/payment/GPCRepayment$d;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "GPCRepayment"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;

.field public c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

.field public d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

.field public e:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

.field public f:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

.field public g:I

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Z

.field public j:Z

.field public k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

.field public l:Lcom/gpc/sdk/payment/GPCRepayment$e;

.field public m:Lcom/gpc/sdk/payment/flow/cache/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/GPCRepaymentDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/GPCRepaymentDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->b:Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;

    const/16 v0, 0x64

    .line 8
    iput v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->g:I

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput-boolean v1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->i:Z

    .line 13
    iput-boolean v1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->j:Z

    .line 20
    new-instance v0, Lcom/gpc/sdk/payment/GPCRepayment$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/payment/GPCRepayment$e;-><init>(Lcom/gpc/sdk/payment/GPCRepayment$a;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->l:Lcom/gpc/sdk/payment/GPCRepayment$e;

    return-void
.end method


# virtual methods
.method public OnGPCPurchaseFailedDueToThePendingPurchaseOfTheSameItem(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "GPCRepayment"

    const-string p2, "PurchaseFailedDueToThePendingPurchaseOfTheSameItem"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    const-string p2, "121005"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onTransactionPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->i:Z

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
    const-string v0, "GPCRepayment"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->e:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->destroy()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->f:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a()V

    :cond_2
    return-void
.end method

.method public initialize(Landroid/app/Activity;Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;)V
    .locals 12

    .line 1
    const-string v0, "initialize"

    const-string v1, "GPCRepayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->i:Z

    if-eqz v0, :cond_0

    .line 3
    const-string p1, "Do not repeatedly call initialize !"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    const-string p1, "Do not call initialize while it is initializing now !"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->a:Landroid/app/Activity;

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->b:Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 15
    const-class v0, Lcom/gpc/sdk/utils/modules/DynamicModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/DynamicModule;

    if-eqz v0, :cond_2

    .line 17
    const-class v2, Lcom/gpc/sdk/utils/modules/PaymentModule;

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DynamicModule;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/PaymentModule;

    if-eqz v0, :cond_2

    .line 19
    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/PaymentModule;->getPaymentItemsCacheManager(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)Lcom/gpc/sdk/payment/flow/cache/a;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    if-nez v0, :cond_3

    .line 23
    const-string v0, "paymentModule is null."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/flow/cache/a;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    .line 27
    :cond_3
    new-instance v2, Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    sget-object v4, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    .line 28
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/cache/a;)V

    iput-object v2, p0, Lcom/gpc/sdk/payment/GPCRepayment;->d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    .line 29
    new-instance v5, Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-direct {v5}, Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;-><init>()V

    .line 30
    new-instance v2, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    move-object v7, v6

    move-object v6, v4

    move-object v4, v3

    iget v3, p0, Lcom/gpc/sdk/payment/GPCRepayment;->g:I

    iget-object v11, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v8, "android"

    invoke-direct/range {v2 .. v11}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;-><init>(ILandroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/gpc/sdk/payment/flow/cache/a;)V

    move-object v3, v4

    move-object v4, v6

    iput-object v2, p0, Lcom/gpc/sdk/payment/GPCRepayment;->e:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    .line 32
    new-instance p1, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    invoke-direct {p1, v3, v5, v4}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->f:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    .line 33
    iput-object p2, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    .line 34
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {p1, v5, p0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;)V

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

    const-string v1, "GPCRepayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onGPCPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    const-string p3, "GPCRepayment"

    const-string v0, "onGPCPurchaseFailed"

    invoke-static {p3, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 3
    sget-object p1, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    const-string p3, "10"

    if-ne p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    const-string p2, "121002"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onGatewayFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void

    .line 8
    :cond_0
    sget-object p1, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    if-ne p2, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    const-string p2, "121004"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onTransactionPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    const-string p2, "121003"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onTransactionPurchaseFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCPurchaseFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;)V
    .locals 1

    .line 1
    const-string p1, "onGPCPurchaseFinished"

    const-string p2, "GPCRepayment"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GPCPaymentGatewayResult:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->deliveryState()Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onTransactionPurchaseFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCPurchasePreparingFinished(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    const-string v0, "GPCRepayment"

    const-string v1, "onGPCPurchasePreparingFinished"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->i:Z

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->j:Z

    return-void

    .line 9
    :cond_0
    iput-boolean v2, p0, Lcom/gpc/sdk/payment/GPCRepayment;->j:Z

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    return-void
.end method

.method public onGPCPurchaseStartingFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 0

    .line 1
    const-string p1, "GPCRepayment"

    const-string p2, "onGPCPurchaseStartingFinished"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    const-string p2, "121001"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onRepaymentFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCPurchaseSuccessFromPlatfrom(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    const-string p1, "GPCRepayment"

    const-string v0, "onGPCPurchaseSuccessFromPlatfrom"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onTransactionPurchasePurchased(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void
.end method

.method public onGPCSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 0

    return-void
.end method

.method public queryProducts(Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;)V
    .locals 3

    .line 1
    const-string v0, "GPCRepayment"

    const-string v1, "queryProducts"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/GPCRepayment$d;

    iget-object v1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->f:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    iget-object v2, p0, Lcom/gpc/sdk/payment/GPCRepayment;->l:Lcom/gpc/sdk/payment/GPCRepayment$e;

    invoke-direct {v0, v1, v2, p1}, Lcom/gpc/sdk/payment/GPCRepayment$d;-><init>(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;Lcom/gpc/sdk/payment/GPCRepayment$e;Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;)V

    .line 3
    sget-object v1, Lcom/gpc/sdk/payment/GPCRepayment$c;->a:[I

    iget-object v2, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/flow/cache/a;->e()Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/cache/a;->a()Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/payment/GPCRepayment$d;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->m:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/cache/a;->a()Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/payment/GPCRepayment$d;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->e:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    new-instance v0, Lcom/gpc/sdk/payment/GPCRepayment$b;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/GPCRepayment$b;-><init>(Lcom/gpc/sdk/payment/GPCRepayment;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->loadItems(Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;)Z

    return-void

    .line 33
    :cond_2
    const-string v0, "121006"

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;->onQueried(Lcom/gpc/sdk/error/GPCException;ZLjava/util/List;)V

    .line 34
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->e:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    new-instance v0, Lcom/gpc/sdk/payment/GPCRepayment$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/GPCRepayment$a;-><init>(Lcom/gpc/sdk/payment/GPCRepayment;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->loadItems(Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;)Z

    return-void
.end method

.method public repay(Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
    .locals 3

    .line 1
    const-string v0, "repay"

    const-string v1, "GPCRepayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/GPCRepayment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "isAvailable false"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    const-string v1, "121001"

    const-string v2, "10"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onRepaymentFailed(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->c:Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;->onTransactionPurchasePurchasing(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V

    .line 14
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->k:Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment;->d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p1, p1, Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public setLoadItemLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->g:I

    return-void
.end method

.method public setRepaymentCompatProxy(Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment;->b:Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;

    return-void
.end method
