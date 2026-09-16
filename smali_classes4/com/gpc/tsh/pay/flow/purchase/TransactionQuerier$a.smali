.class public Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$a;->b:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$a;->a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "InventoryQuerier"

    const-string v0, "paymentClient.queryPurchases ==================="

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$a;->a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;->onQueriedFinish(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method
