.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;)V
    .locals 3

    .line 1
    const-string v0, "consumeOwnedPurchase success"

    const-string v1, "HuaweiPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    const-string v0, "consume onSuccess, but result is null!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getReturnCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "consume error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getReturnCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;->getReturnCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->b:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;->onConsumeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;->a(Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseResult;)V

    return-void
.end method
