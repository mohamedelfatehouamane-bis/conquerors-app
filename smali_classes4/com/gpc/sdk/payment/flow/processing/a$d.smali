.class public Lcom/gpc/sdk/payment/flow/processing/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$d;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$d;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Z)V
    .locals 2

    const-string v0, "PurchaseProcessTask"

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Consume successfully!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$d;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p2

    const-string v0, "payment.purchase.consume.success"

    invoke-static {v0, p2, p1}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$d;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Consume fail!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$d;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p2

    const-string v0, "payment.purchase.consume.error"

    invoke-static {v0, p2, p1}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$d;->a:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method
