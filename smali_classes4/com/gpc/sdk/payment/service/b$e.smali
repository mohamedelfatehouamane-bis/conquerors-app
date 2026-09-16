.class public Lcom/gpc/sdk/payment/service/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->requestLimitState(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$e;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$e;->a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$e;->a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 7
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown error!"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$e;->a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

    const-string p2, "100002"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;)V

    return-void

    .line 12
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 13
    new-instance p2, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;

    invoke-direct {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;-><init>()V

    .line 14
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setLimitation(Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;)V

    .line 15
    invoke-virtual {p2, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setLimit(Z)V

    .line 16
    invoke-virtual {p2, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setMessage(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$e;->a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;)V

    return-void

    .line 19
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;

    .line 22
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->isLimit()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$e;->a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_4
    new-instance p1, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;

    invoke-direct {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;-><init>()V

    .line 28
    sget-object p2, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setLimitation(Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;)V

    .line 29
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setLimit(Z)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setMessage(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$e;->a:Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;)V

    return-void
.end method
