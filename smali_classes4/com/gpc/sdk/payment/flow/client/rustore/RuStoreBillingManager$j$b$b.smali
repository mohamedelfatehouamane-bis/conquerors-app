.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->a(Lru/rustore/sdk/pay/model/UserAuthorizationStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lru/rustore/sdk/core/tasks/OnSuccessListener<",
        "Ljava/util/List<",
        "Lru/rustore/sdk/pay/model/Product;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$b;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rustore/sdk/pay/model/Product;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "RuStoreBillingManager"

    const-string v1, "querySkuDetailsAsync onSuccess"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$b;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {v0, v1, v2, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$b$b;->a(Ljava/util/List;)V

    return-void
.end method
