.class public Lcom/gpc/sdk/payment/flow/processing/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseSubmittalFinished(ZLcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;I)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-interface {v0, p4}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    const-string p4, "PurchaseProcessTask"

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    const-string v0, "payment.purchase.commit.success"

    invoke-static {v0, p1, p3}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " commit gateway successfully!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object p4, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    const/4 v0, 0x0

    invoke-interface {p1, p4, p3, v0, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-static {p1, p3, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    const-string p2, "payment.purchase.commit.error"

    invoke-static {p2, p1, p3}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " commit gateway fail!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$c;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object p2, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method
