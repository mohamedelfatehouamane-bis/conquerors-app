.class public Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumePurchaseFinished(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$c;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
