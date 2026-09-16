.class public Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;->b:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;->a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;->a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Z)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;->a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Z)V

    return-void
.end method
