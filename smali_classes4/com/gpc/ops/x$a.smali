.class public Lcom/gpc/ops/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/x;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;

.field public final synthetic b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

.field public final synthetic c:Lcom/gpc/ops/x;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/x;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/x$a;->c:Lcom/gpc/ops/x;

    iput-object p2, p0, Lcom/gpc/ops/x$a;->a:Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;

    iput-object p3, p0, Lcom/gpc/ops/x$a;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p1

    const/16 v0, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/gpc/operations/migrate/bean/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/migrate/bean/GeneralResponse;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/bean/GeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/gpc/ops/x$a;->a:Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;

    sget-object v3, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->REQUEST_ACK:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    iget-object v4, p0, Lcom/gpc/ops/x$a;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    const/4 v5, 0x1

    invoke-interface {p2, v5, v3, v4, v0}, Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;I)V

    return-void

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/gpc/ops/x$a;->a:Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;

    iget-object v3, p0, Lcom/gpc/ops/x$a;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-interface {p2, v2, v1, v3, v0}, Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 17
    const-string v3, "PurchaseGatewayServiceAGImpl"

    invoke-static {v3, p1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/ops/x$a;->a:Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;

    iget-object p2, p0, Lcom/gpc/ops/x$a;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, v2, v1, p2, v0}, Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;I)V

    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gpc/ops/x$a;->a:Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;

    iget-object p2, p0, Lcom/gpc/ops/x$a;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, v2, v1, p2, v0}, Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/tsh/pay/service/PaymentDeliveryState;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;I)V

    return-void
.end method
