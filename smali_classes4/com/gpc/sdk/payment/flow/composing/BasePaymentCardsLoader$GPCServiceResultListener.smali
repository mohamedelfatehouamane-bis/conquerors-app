.class public abstract Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GPCServiceResultListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "BasePaymentCardsLoader"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1770

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1389

    if-eq v0, v1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;->onUnknownError(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;->onResponseDataError(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;->onNetError(Lcom/gpc/sdk/error/GPCException;)V

    :goto_1
    return-void
.end method

.method public abstract onFinish(Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
.end method

.method public abstract onFinishWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
.end method

.method public abstract onNetError(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;->onFinish(Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V

    return-void
.end method

.method public onPaymentItemsLoadFinishedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;->onFinishWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V

    return-void
.end method

.method public abstract onResponseDataError(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onUnknownError(Lcom/gpc/sdk/error/GPCException;)V
.end method
