.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

.field public final synthetic b:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;Lcom/gpc/sdk/error/GPCException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->b:Lcom/gpc/sdk/error/GPCException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "onPaymentCardsLoaded"

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameSubItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "filter items"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    iget-object v2, v2, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    .line 7
    invoke-virtual {v3}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    invoke-virtual {v3}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getPurchaseLimit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->b:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v1, v2, v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->b:Lcom/gpc/sdk/error/GPCException;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;->a:Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V

    return-void
.end method
