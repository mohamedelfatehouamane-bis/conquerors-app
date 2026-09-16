.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Ljava/lang/Runnable;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-static {v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/service/network/NetworkExcutor;->instance()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->a:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    const-string v2, "!mIsServiceConnected"

    const v3, 0xea5ff

    invoke-interface {v1, v3, v2, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$a;->b:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const v3, 0xea5fc

    invoke-interface {v2, v3, v1, v0}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryPurchasesListener;->onQueryPurchasesFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
