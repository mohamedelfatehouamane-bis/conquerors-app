.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g()Z
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
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d()V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;->a:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c()V

    return-void
.end method
