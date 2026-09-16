.class public Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;->consumeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->c:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;->onConsumePurchaseFinished(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "RuStoreBillingManager"

    const-string v2, "consumeAsync other!!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->a:Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$k;->b:Ljava/lang/String;

    const v2, 0xea5f9

    invoke-interface {v0, v2, v1}, Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$ConsumePurchaseListener;->onConsumePurchaseFinished(ILjava/lang/String;)V

    return-void
.end method
