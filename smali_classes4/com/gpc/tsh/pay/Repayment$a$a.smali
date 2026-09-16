.class public Lcom/gpc/tsh/pay/Repayment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/Repayment$a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/tsh/pay/Repayment$a;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/Repayment$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/Repayment$a$a;->b:Lcom/gpc/tsh/pay/Repayment$a;

    iput-object p2, p0, Lcom/gpc/tsh/pay/Repayment$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueriedFinish(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 3
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
    const-string p1, "Repayment"

    const-string v0, "query transactions finish"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/tsh/pay/Repayment$a$a;->b:Lcom/gpc/tsh/pay/Repayment$a;

    invoke-static {p1}, Lcom/gpc/tsh/pay/Repayment$a;->a(Lcom/gpc/tsh/pay/Repayment$a;)Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;

    move-result-object p1

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment$a$a;->b:Lcom/gpc/tsh/pay/Repayment$a;

    iget-object v2, p0, Lcom/gpc/tsh/pay/Repayment$a$a;->a:Ljava/util/List;

    invoke-static {v1, p2, v2}, Lcom/gpc/tsh/pay/Repayment$a;->a(Lcom/gpc/tsh/pay/Repayment$a;Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    iget-object v1, p0, Lcom/gpc/tsh/pay/Repayment$a$a;->a:Ljava/util/List;

    invoke-interface {p1, v0, p2, v1}, Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;->onQueried(Lcom/gpc/operations/migrate/error/GPCException;ZLjava/util/List;)V

    return-void
.end method
