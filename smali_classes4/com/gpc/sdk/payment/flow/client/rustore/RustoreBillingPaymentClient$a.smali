.class public Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentItemsOrdersSerialFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;I)I

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    const-string p2, "121101"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient;)Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RustoreBillingPaymentClient$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->initiatePurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
