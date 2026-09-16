.class public Lcom/gpc/ops/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;


# static fields
.field public static final e:Ljava/lang/String; = "TranscationsManager"


# instance fields
.field public a:Lcom/gpc/ops/t;

.field public b:Lcom/gpc/ops/u;

.field public c:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

.field public d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/ops/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gpc/ops/t;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/ops/w;->a:Lcom/gpc/ops/t;

    .line 3
    new-instance v0, Lcom/gpc/ops/u;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gpc/ops/u;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/w;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gpc/ops/w;->a:Lcom/gpc/ops/t;

    invoke-virtual {v0}, Lcom/gpc/ops/t;->a()V

    .line 30
    iget-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {v0}, Lcom/gpc/ops/u;->e()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    .line 26
    const-string v0, "TranscationsManager"

    const-string v1, "processTransactionImmediately"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 28
    iget-object v0, p0, Lcom/gpc/ops/w;->a:Lcom/gpc/ops/t;

    new-instance v1, Lcom/gpc/ops/w$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/ops/w$a;-><init>(Lcom/gpc/ops/w;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/ops/t;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/gpc/ops/w;->a:Lcom/gpc/ops/t;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/gpc/ops/t;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lcom/gpc/ops/u;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/w;->a:Lcom/gpc/ops/t;

    invoke-virtual {v0, p0}, Lcom/gpc/ops/t;->a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {v0, p0}, Lcom/gpc/ops/u;->a(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    .line 5
    iput-object p1, p0, Lcom/gpc/ops/w;->c:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    .line 6
    iget-object p1, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {p1}, Lcom/gpc/ops/u;->d()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 18
    invoke-virtual {p0, v1}, Lcom/gpc/ops/w;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {p1, v0}, Lcom/gpc/ops/u;->a(Ljava/util/List;)V

    return-void

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {v0, p1}, Lcom/gpc/ops/u;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Z
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {v0}, Lcom/gpc/ops/u;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/ops/w;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/w;->b:Lcom/gpc/ops/u;

    invoke-virtual {v0, p1}, Lcom/gpc/ops/u;->d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/w;->a:Lcom/gpc/ops/t;

    invoke-virtual {v0, p1}, Lcom/gpc/ops/t;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/w;->c:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lcom/gpc/ops/w;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_1
    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/w;->c:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V

    :cond_0
    return-void
.end method

.method public onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/w;->c:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Processor:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Lcom/gpc/ops/w;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_1
    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/w;->c:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/ops/w;->d:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    return-void
.end method
