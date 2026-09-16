.class public final synthetic Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;Ljava/util/List;Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method
