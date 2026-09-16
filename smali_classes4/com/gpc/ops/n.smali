.class public Lcom/gpc/ops/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;


# instance fields
.field public a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/gpc/ops/e;

    invoke-direct {p2, p1}, Lcom/gpc/ops/e;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    return-void
.end method


# virtual methods
.method public a()Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    return-object v0
.end method

.method public acknowledgePurchase(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->acknowledgePurchase(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V

    return-void
.end method

.method public consume(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->consume(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->destroy()V

    return-void
.end method

.method public init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method

.method public isAvailable(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->isAvailable(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientPurchasedListener;)V

    return-void
.end method

.method public queryPurchases(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->queryPurchases(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/n;->a:Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/client/IGPCPaymentClient;->querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void
.end method
