.class public Lcom/gpc/sdk/payment/flow/processing/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/processing/a$n;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->b:Lcom/gpc/sdk/payment/flow/processing/a$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgeFinished(Z)V
    .locals 3

    const-string v0, "PurchaseProcessTask"

    if-eqz p1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " acknowledge successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " acknowledge fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->RUSTORE:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    const-string v1, "payment.purchase.ack.success"

    invoke-static {v1, p1, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->b:Lcom/gpc/sdk/payment/flow/processing/a$n;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/flow/processing/a$n;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    const-string v1, "payment.purchase.ack.error"

    invoke-static {v1, p1, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->b:Lcom/gpc/sdk/payment/flow/processing/a$n;

    invoke-interface {p1}, Lcom/gpc/sdk/payment/flow/processing/a$n;->a()V

    return-void

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$i;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->b(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/a$i$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/processing/a$i$a;-><init>(Lcom/gpc/sdk/payment/flow/processing/a$i;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;)V

    return-void
.end method
