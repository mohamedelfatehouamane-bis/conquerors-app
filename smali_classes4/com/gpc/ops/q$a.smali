.class public Lcom/gpc/ops/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

.field public final synthetic b:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$a;->b:Lcom/gpc/ops/q;

    iput-object p2, p0, Lcom/gpc/ops/q$a;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseSubmittalFinished(ZLcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;I)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/q$a;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    invoke-interface {v0, p4}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    const-string p4, "PurchaseProcessTask"

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " commit gateway successfully!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/ops/q$a;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    sget-object p4, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Unspecified:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    const/4 v0, 0x0

    invoke-interface {p1, p4, p3, v0, p2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/ops/q$a;->b:Lcom/gpc/ops/q;

    iget-object p2, p0, Lcom/gpc/ops/q$a;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    invoke-static {p1, p3, p2}, Lcom/gpc/ops/q;->c(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " commit gateway fail!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/gpc/ops/q$a;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    sget-object p2, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Unspecified:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-interface {p1, p2, p3}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method
