.class public Lcom/gpc/sdk/payment/flow/processing/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/processing/a;->d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/processing/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->b:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p3

    const-string v0, "payment.purchase.commit.success"

    const-string v1, "PurchaseProcessTask"

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/utils/a;

    move-result-object p1

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Lcom/gpc/sdk/payment/utils/a;->a(Ljava/lang/String;Z)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " commit gateway successfully!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-static {v0, p1, p3}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->b:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object p3, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    iget-object p2, p2, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->userId:Ljava/lang/String;

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->DELIVERED:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    invoke-interface {p1, p3, v0, p2, v1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p3

    const-string v3, "120413"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/utils/a;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/gpc/sdk/payment/utils/a;->a(Ljava/lang/String;Z)V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->b:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-interface {p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onSubItemHasCommited()V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p3

    const-string v3, "120412"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p3

    const-string v3, "120419"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 20
    :cond_2
    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p3}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/utils/a;

    move-result-object p3

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Lcom/gpc/sdk/payment/utils/a;->a(Ljava/lang/String;Z)V

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " commit gateway successfully and error code is: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p1

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-static {v0, p1, p3}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->b:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object p3, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    iget-object p2, p2, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->userId:Ljava/lang/String;

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->DELIVERED:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    invoke-interface {p1, p3, v0, p2, v1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    return-void

    .line 25
    :cond_3
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p2}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/utils/a;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/gpc/sdk/payment/utils/a;->a(Ljava/lang/String;Z)V

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " commit gateway fail!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->c:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-static {p2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object p2

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[exception] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "payment.purchase.commit.error"

    invoke-static {v0, p2, p3, p1}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->b:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object p2, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a$k;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method
