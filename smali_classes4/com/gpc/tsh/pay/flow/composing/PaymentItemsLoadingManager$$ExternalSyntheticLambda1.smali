.class public final synthetic Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda1;->f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    return-void
.end method


# virtual methods
.method public final onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda1;->f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->b(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method
