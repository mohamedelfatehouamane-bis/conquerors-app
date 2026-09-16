.class public Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;->b:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgeFinished(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;->onAcknowledgeFinished(Z)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;->onAcknowledgeFinished(Z)V

    return-void
.end method
