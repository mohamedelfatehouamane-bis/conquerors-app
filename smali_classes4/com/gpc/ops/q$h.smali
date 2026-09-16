.class public Lcom/gpc/ops/q$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/ops/q$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

.field public final synthetic b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

.field public final synthetic c:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$h;->c:Lcom/gpc/ops/q;

    iput-object p2, p0, Lcom/gpc/ops/q$h;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    iput-object p3, p0, Lcom/gpc/ops/q$h;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/q$h;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    sget-object v1, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Unspecified:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    iget-object v2, p0, Lcom/gpc/ops/q$h;->b:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-interface {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyInAppItem:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseProcessTask"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/q$h;->c:Lcom/gpc/ops/q;

    iget-object v1, p0, Lcom/gpc/ops/q$h;->a:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    invoke-static {v0, p1, v1}, Lcom/gpc/ops/q;->b(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void
.end method
