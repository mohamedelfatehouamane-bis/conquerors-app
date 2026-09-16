.class public Lcom/gpc/ops/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
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

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

.field public final synthetic c:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$c;->c:Lcom/gpc/ops/q;

    iput-object p2, p0, Lcom/gpc/ops/q$c;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    iput-object p3, p0, Lcom/gpc/ops/q$c;->b:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

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
    iget-object v0, p0, Lcom/gpc/ops/q$c;->c:Lcom/gpc/ops/q;

    iget-object v1, p0, Lcom/gpc/ops/q$c;->a:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    iget-object v2, p0, Lcom/gpc/ops/q$c;->b:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;

    invoke-static {v0, v1, v2}, Lcom/gpc/ops/q;->a(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    const/4 v0, 0x0

    return-object v0
.end method
