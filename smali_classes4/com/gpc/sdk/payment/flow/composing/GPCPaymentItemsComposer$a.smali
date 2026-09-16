.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;

.field public final synthetic h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;[ILjava/util/List;Ljava/util/List;ILjava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->a:[I

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->c:Ljava/util/List;

    iput p5, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->d:I

    iput-object p6, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->g:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSkuDetailsResponse index[0]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPaymentItemsComposer"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onSkuDetailsResponse skuDetailsList:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 8
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->a:[I

    aget p2, p1, v2

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, v2

    .line 12
    iget p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->d:I

    if-ge p2, p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->a:[I

    aget v1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->a:[I

    aget v2, v3, v2

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->b:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    invoke-static {p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->c(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
