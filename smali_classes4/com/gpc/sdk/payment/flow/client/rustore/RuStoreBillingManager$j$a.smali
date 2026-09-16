.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string v0, "RuStoreBillingManager"

    const-string v1, "getUserAuthorizationStatus onFailure"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j$a;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$j;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;

    const-string v0, ""

    const/4 v1, 0x0

    const v2, 0xea5fe

    invoke-interface {p1, v2, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$QueryProductsListener;->onQueryProductsFinished(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
