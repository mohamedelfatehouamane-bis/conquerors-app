.class public final synthetic Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

.field public final synthetic f$1:Lcom/gpc/operations/migrate/error/GPCException;

.field public final synthetic f$2:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/operations/migrate/error/GPCException;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;->f$2:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/operations/migrate/error/GPCException;

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;->f$2:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;

    invoke-virtual {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method
