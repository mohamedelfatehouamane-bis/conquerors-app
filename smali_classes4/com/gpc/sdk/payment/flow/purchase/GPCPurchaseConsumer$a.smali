.class public Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$a;->b:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$a;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$a;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Z)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$a;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Z)V

    return-void
.end method
