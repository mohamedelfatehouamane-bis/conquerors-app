.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$a;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;Lcom/gpc/sdk/error/GPCException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPaymentCardsLoadedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b$b;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;Lcom/gpc/sdk/error/GPCException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
