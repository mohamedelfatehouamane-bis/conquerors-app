.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string v0, "RuStoreBillingManager"

    const-string v1, "querySkuDetailsAsync onFailure"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v1, 0xea5fe

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
