.class public Lcom/gpc/sdk/payment/flow/processing/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseSubmittalFinished(ZLcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;I)V
    .locals 0

    const-string p2, "PurchaseProcessTask"

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " commit gateway successfully!"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    const-string p2, "payment.purchase.commit.success"

    invoke-static {p2, p1, p3}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-static {p1, p3, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " commit gateway fail!"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->b:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    const-string p2, "payment.purchase.commit.error"

    invoke-static {p2, p1, p3}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method
