.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "HuaweiPaymentClient"

    const-string v1, "createPurchaseIntent, fail"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Ljava/lang/Exception;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
