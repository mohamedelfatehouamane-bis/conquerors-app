.class public Lcom/gpc/sdk/payment/service/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/c;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic c:Lcom/gpc/sdk/payment/service/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/c;Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/c$c;->c:Lcom/gpc/sdk/payment/service/c;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/c$c;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/service/c$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p1

    const/16 p3, 0x1e

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$c;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;

    sget-object v2, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->REQUEST_ACK:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    iget-object v3, p0, Lcom/gpc/sdk/payment/service/c$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    const/4 v4, 0x1

    invoke-interface {p2, v4, v2, v3, p3}, Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;I)V

    return-void

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$c;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;

    iget-object v2, p0, Lcom/gpc/sdk/payment/service/c$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p2, v1, v0, v2, p3}, Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 17
    const-string v2, "PurchaseGatewayServiceAGImpl"

    invoke-static {v2, p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/c$c;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;

    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, v1, v0, p2, p3}, Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;I)V

    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/c$c;->a:Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;

    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$c;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, v1, v0, p2, p3}, Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;->onPurchaseSubmittalFinished(ZLcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;I)V

    return-void
.end method
