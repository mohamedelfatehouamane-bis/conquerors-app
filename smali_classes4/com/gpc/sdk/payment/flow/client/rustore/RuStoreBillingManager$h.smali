.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/rustore/sdk/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$h;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string v0, "RuStoreBillingManager"

    const-string v1, "getUserAuthorizationStatus onFailure"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$h;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    const v0, 0xea5f7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V

    return-void
.end method
