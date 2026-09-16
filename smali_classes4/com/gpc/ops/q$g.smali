.class public Lcom/gpc/ops/q$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/ops/q$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

.field public final synthetic b:Lcom/gpc/ops/q$l;

.field public final synthetic c:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/ops/q$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$g;->c:Lcom/gpc/ops/q;

    iput-object p2, p0, Lcom/gpc/ops/q$g;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    iput-object p3, p0, Lcom/gpc/ops/q$g;->b:Lcom/gpc/ops/q$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgeFinished(Z)V
    .locals 2

    const-string v0, "PurchaseProcessTask"

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/ops/q$g;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acknowledge successfully!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/ops/q$g;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acknowledge fail!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/gpc/ops/q$g;->c:Lcom/gpc/ops/q;

    invoke-static {p1}, Lcom/gpc/ops/q;->a(Lcom/gpc/ops/q;)Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    move-result-object p1

    new-instance v0, Lcom/gpc/ops/q$g$a;

    invoke-direct {v0, p0}, Lcom/gpc/ops/q$g$a;-><init>(Lcom/gpc/ops/q$g;)V

    invoke-virtual {p1, v0}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V

    return-void
.end method
