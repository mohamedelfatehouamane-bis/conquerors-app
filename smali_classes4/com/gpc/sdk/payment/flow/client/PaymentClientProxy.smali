.class public Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "PaymentClientProxy"

.field public static c:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->SAMSUNG:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/samsung/a;

    invoke-direct {p2, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->HUAWEI:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne p2, v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Landroid/app/Activity;)Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    return-void

    .line 6
    :cond_1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->RUSTORE:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne p2, v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->createClient(Landroid/app/Activity;)Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    return-void

    .line 9
    :cond_2
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/google/a;

    invoke-direct {p2, p1}, Lcom/gpc/sdk/payment/flow/client/google/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    return-void
.end method

.method public static a()Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->c:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;

    return-object v0
.end method

.method public static a(Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->c:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy$PaymentClientParamsFactory;

    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V

    return-void
.end method

.method public b()Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    return-object v0
.end method

.method public consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->destroy()V

    return-void
.end method

.method public init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method

.method public isAvailable(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->isAvailable(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->onNewIntent(Landroid/content/Intent;)V

    return-void

    .line 4
    :cond_0
    const-string p1, "PaymentClientProxy"

    const-string v0, "onNewIntent called but paymentClient is null"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V

    return-void
.end method

.method public queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inAppSkus :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentClientProxy"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "subSkus :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->a:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;->querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void
.end method
