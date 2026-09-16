.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;
.super Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadItems(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->c:Lcom/gpc/sdk/payment/service/PaymentService;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->a(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/gpc/sdk/payment/service/PaymentService;->loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V

    return-void
.end method

.method public loadItemsWithoutRetry(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->c:Lcom/gpc/sdk/payment/service/PaymentService;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->a(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/gpc/sdk/payment/service/PaymentService;->loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V

    return-void
.end method
