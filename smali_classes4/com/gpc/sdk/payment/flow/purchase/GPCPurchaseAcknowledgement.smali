.class public Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "PurchaseConsumer"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-direct {v0, p1, p3}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->b()Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    move-result-object p1

    instance-of p1, p1, Lcom/gpc/sdk/payment/flow/client/google/a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1, p2, p0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->b()Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;

    move-result-object p1

    instance-of p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {p1, p2, p0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseAcknowledgement destroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseConsumer"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a:Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;

    new-instance v1, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;

    invoke-direct {v1, p0, p3}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$a;-><init>(Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/PaymentClientProxy;->acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V

    return-void
.end method

.method public onInitialized(Lcom/gpc/sdk/error/GPCException;)V
    .locals 0

    return-void
.end method
