.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "purchase onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuStoreBillingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lru/rustore/sdk/pay/model/RuStorePaymentException$ProductPurchaseException;

    const v1, 0xea5f7

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {p1, v1, v2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void

    .line 4
    :cond_0
    instance-of p1, p1, Lru/rustore/sdk/pay/model/RuStorePaymentException$ProductPurchaseCancelled;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    const v0, 0xea5f5

    invoke-virtual {p1, v0, v2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-virtual {p1, v1, v2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method
