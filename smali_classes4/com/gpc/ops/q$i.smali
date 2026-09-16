.class public Lcom/gpc/ops/q$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/ops/q$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

.field public final synthetic b:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$i;->b:Lcom/gpc/ops/q;

    iput-object p2, p0, Lcom/gpc/ops/q$i;->a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/q$i;->a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "submitInAppItem onSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseProcessTask"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/q$i;->b:Lcom/gpc/ops/q;

    iget-object v1, p0, Lcom/gpc/ops/q$i;->a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-static {v0, p1, v1}, Lcom/gpc/ops/q;->b(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method
