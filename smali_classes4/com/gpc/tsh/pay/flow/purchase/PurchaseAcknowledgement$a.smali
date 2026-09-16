.class public Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientAcknowledgePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$a;->b:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$a;->a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgeFinished(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$a;->a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;->onAcknowledgeFinished(Z)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$a;->a:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;->onAcknowledgeFinished(Z)V

    return-void
.end method
