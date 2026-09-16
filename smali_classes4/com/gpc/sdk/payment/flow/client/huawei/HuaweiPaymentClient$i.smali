.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/iap/entity/PurchaseIntentResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/iap/entity/PurchaseIntentResult;)V
    .locals 6

    .line 1
    const-string v0, "createPurchaseIntent, success"

    const-string v1, "HuaweiPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "999999"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 3
    const-string p1, "result is null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v3

    if-nez v3, :cond_1

    .line 9
    const-string p1, "status is null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentResult;->getReturnCode()I

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "purchaseFlow error:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentResult;->getReturnCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentResult;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentResult;->getReturnCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    const v4, 0xea92

    if-ne v4, p1, :cond_3

    .line 21
    const-string p1, "user not login"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    const/16 v4, 0x4a3e

    invoke-virtual {p1, v3, v4}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Lcom/huawei/hms/support/api/client/Status;I)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    const v4, 0xea97

    if-ne v4, p1, :cond_4

    .line 25
    const-string p1, "user not accept agreement"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    const/16 v4, 0x4a40

    invoke-virtual {p1, v3, v4}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Lcom/huawei/hms/support/api/client/Status;I)V

    .line 29
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "purchaseFlow status.getStatusCode():"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    const/16 v4, 0x4a3d

    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-virtual {p1, v3, v4}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Lcom/huawei/hms/support/api/client/Status;I)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    .line 37
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    invoke-virtual {v3, p1, v4}, Lcom/huawei/hms/support/api/client/Status;->startResolutionForResult(Landroid/app/Activity;I)V

    .line 38
    new-instance p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;

    invoke-direct {p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->d:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->b:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    iput-object v2, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    .line 42
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->d:Ljava/lang/String;

    iput-object v2, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->e:Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->e:Ljava/lang/String;

    iput-object v2, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->c:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iget-object v2, v2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->e:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p1, v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    invoke-static {v1, v5, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/iap/entity/PurchaseIntentResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;->a(Lcom/huawei/hms/iap/entity/PurchaseIntentResult;)V

    return-void
.end method
