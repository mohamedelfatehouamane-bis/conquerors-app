.class public Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "PurchaseConsumer"


# instance fields
.field public a:Lcom/gpc/ops/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/ops/n;

    invoke-direct {v0, p1, p2}, Lcom/gpc/ops/n;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a:Lcom/gpc/ops/n;

    .line 3
    invoke-virtual {v0, p0}, Lcom/gpc/ops/n;->init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a:Lcom/gpc/ops/n;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseConsumer destroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a:Lcom/gpc/ops/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseConsumer"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a:Lcom/gpc/ops/n;

    invoke-virtual {v0}, Lcom/gpc/ops/n;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a:Lcom/gpc/ops/n;

    new-instance v1, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;

    invoke-direct {v1, p0, p3}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$a;-><init>(Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/gpc/ops/n;->consume(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumePurchaseListener;)V

    return-void
.end method

.method public onInitialized(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 0

    return-void
.end method
