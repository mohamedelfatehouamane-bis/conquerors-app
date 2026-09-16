.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lru/rustore/sdk/core/tasks/OnSuccessListener<",
        "Lru/rustore/sdk/pay/model/ProductPurchaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$b;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/rustore/sdk/pay/model/ProductPurchaseResult;)V
    .locals 2

    .line 1
    const-string v0, "RuStoreBillingManager"

    const-string v1, "purchase onSuccess."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$b;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i;->d:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->b(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lru/rustore/sdk/pay/model/ProductPurchaseResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$i$b;->a(Lru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method
