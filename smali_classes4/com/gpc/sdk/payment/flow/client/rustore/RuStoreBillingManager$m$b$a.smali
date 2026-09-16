.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m$b;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$m;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v1, 0xea5fa

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
