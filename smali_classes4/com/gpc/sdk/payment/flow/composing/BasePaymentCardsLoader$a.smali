.class public Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;
.super Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;->a(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->b:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    invoke-direct {p0}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCServiceResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getGameSubItems()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getGameItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getPurchaseLimit()I

    move-result p1

    invoke-direct {v2, v3, v4, p1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method

.method public onFinishWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getGameSubItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getGameItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getPurchaseLimit()I

    move-result p2

    invoke-direct {v0, v1, v2, p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 3
    :cond_0
    const-string p2, "BasePaymentCardsLoader"

    const-string v0, "GameItemAndUserLimit is null"

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoadedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method

.method public onNetError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    .line 2
    const-string v1, "120102"

    const-string v2, "32"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method

.method public onResponseDataError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    .line 2
    const-string v1, "120103"

    const-string v2, "20"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method

.method public onUnknownError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    .line 2
    const-string v1, "120101"

    const-string v2, "20"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method
