.class public Lcom/gpc/ops/q$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

.field public final synthetic c:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$e;->c:Lcom/gpc/ops/q;

    iput-object p2, p0, Lcom/gpc/ops/q$e;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    iput-object p3, p0, Lcom/gpc/ops/q$e;->b:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "excute purchase getItemType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/ops/q$e;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseProcessTask"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/q$e;->c:Lcom/gpc/ops/q;

    iget-object v1, p0, Lcom/gpc/ops/q$e;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    iget-object v2, p0, Lcom/gpc/ops/q$e;->b:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-static {v0, v1, v2}, Lcom/gpc/ops/q;->a(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    const/4 v0, 0x0

    return-object v0
.end method
