.class public Lcom/gpc/sdk/payment/flow/processing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;


# static fields
.field public static final f:Ljava/lang/String; = "GPCPaymentTransactionsManager"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/processing/b;

.field public b:Lcom/gpc/sdk/payment/flow/processing/c;

.field public c:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public e:Lcom/gpc/sdk/payment/flow/cache/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/flow/cache/a;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/d;->e:Lcom/gpc/sdk/payment/flow/cache/a;

    move-object v1, p1

    .line 3
    new-instance p1, Lcom/gpc/sdk/payment/flow/processing/b;

    move-object p3, p2

    move-object p2, v1

    invoke-direct/range {p1 .. p6}, Lcom/gpc/sdk/payment/flow/processing/b;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->a:Lcom/gpc/sdk/payment/flow/processing/b;

    .line 4
    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/c;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/payment/flow/processing/c;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/d;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->a:Lcom/gpc/sdk/payment/flow/processing/b;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/processing/b;->a()V

    .line 30
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/processing/c;->e()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    .line 26
    const-string v0, "GPCPaymentTransactionsManager"

    const-string v1, "processTransactionImmediately"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 28
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->a:Lcom/gpc/sdk/payment/flow/processing/b;

    new-instance v1, Lcom/gpc/sdk/payment/flow/processing/d$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/flow/processing/d$a;-><init>(Lcom/gpc/sdk/payment/flow/processing/d;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/processing/b;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->a:Lcom/gpc/sdk/payment/flow/processing/b;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/b;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Processor:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    if-eq p1, v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/GPCConfiguration;->isProcessRepaymentPurchaseEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->e:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p1

    const-string v0, "GPCPaymentTransactionsManager"

    if-nez p1, :cond_2

    .line 43
    const-string p1, "item is null"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getCategory()I

    move-result p1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    .line 48
    const-string p1, "item is fraud"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_3
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->a:Lcom/gpc/sdk/payment/flow/processing/b;

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/payment/flow/processing/b;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->c:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/processing/c;->d()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

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

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 18
    invoke-virtual {p0, v1}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Ljava/util/List;)V

    return-void

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Z
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

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
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/processing/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->b:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/c;->d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->a:Lcom/gpc/sdk/payment/flow/processing/b;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/b;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->c:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->c:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    :cond_0
    return-void
.end method

.method public onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->c:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/d;->a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->c:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/d;->d:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    return-void
.end method
