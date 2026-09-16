.class public Lcom/gpc/sdk/payment/GPCRepayment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/GPCRepayment$d;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/sdk/payment/GPCRepayment$d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/GPCRepayment$d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment$d$a;->b:Lcom/gpc/sdk/payment/GPCRepayment$d;

    iput-object p2, p0, Lcom/gpc/sdk/payment/GPCRepayment$d$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueriedFinish(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "GPCRepayment"

    const-string v0, "query transactions finish"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment$d$a;->b:Lcom/gpc/sdk/payment/GPCRepayment$d;

    invoke-static {p1}, Lcom/gpc/sdk/payment/GPCRepayment$d;->a(Lcom/gpc/sdk/payment/GPCRepayment$d;)Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;

    move-result-object p1

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/GPCRepayment$d$a;->b:Lcom/gpc/sdk/payment/GPCRepayment$d;

    iget-object v2, p0, Lcom/gpc/sdk/payment/GPCRepayment$d$a;->a:Ljava/util/List;

    invoke-static {v1, p2, v2}, Lcom/gpc/sdk/payment/GPCRepayment$d;->a(Lcom/gpc/sdk/payment/GPCRepayment$d;Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    iget-object v1, p0, Lcom/gpc/sdk/payment/GPCRepayment$d$a;->a:Ljava/util/List;

    invoke-interface {p1, v0, p2, v1}, Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;->onQueried(Lcom/gpc/sdk/error/GPCException;ZLjava/util/List;)V

    return-void
.end method
