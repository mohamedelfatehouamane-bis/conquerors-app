.class public Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->loadItems(Ljava/lang/String;Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->a:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getPurchaseLimit()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getGameItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    invoke-static {v0, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->c(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->b(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->d(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;I)I

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->a:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->getGameItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->a:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {v0, p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$PaymentItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->a(Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V

    return-void
.end method

.method public onPaymentItemsLoadFinishedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->b:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;

    invoke-static {p1}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;->a(Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$a;->a(Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V

    return-void
.end method
