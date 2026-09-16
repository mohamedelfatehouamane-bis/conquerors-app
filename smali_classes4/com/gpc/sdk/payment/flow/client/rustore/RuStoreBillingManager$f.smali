.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lru/rustore/sdk/core/tasks/OnSuccessListener<",
        "Lru/rustore/sdk/pay/model/PurchaseAvailabilityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/rustore/sdk/pay/model/PurchaseAvailabilityResult;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lru/rustore/sdk/pay/model/PurchaseAvailabilityResult$Available;

    const/4 v1, 0x1

    const-string v2, "RuStoreBillingManager"

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "featureAvailabilityResult instanceof FeatureAvailabilityResult.Available"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-static {p1, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Z)Z

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    invoke-interface {p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;->onBillingClientSetupFinished()V

    return-void

    .line 6
    :cond_0
    instance-of p1, p1, Lru/rustore/sdk/pay/model/PurchaseAvailabilityResult$Unavailable;

    if-eqz p1, :cond_1

    .line 7
    const-string p1, "featureAvailabilityResult !instanceof FeatureAvailabilityResult.Available"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Z)Z

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    invoke-interface {p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;->onBillingClientSetupFail()V

    return-void

    .line 12
    :cond_1
    const-string p1, "featureAvailabilityResult instanceof FeatureAvailabilityResult.Unknown"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-static {p1, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Z)Z

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;

    invoke-interface {p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;->onBillingClientSetupFinished()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lru/rustore/sdk/pay/model/PurchaseAvailabilityResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$f;->a(Lru/rustore/sdk/pay/model/PurchaseAvailabilityResult;)V

    return-void
.end method
