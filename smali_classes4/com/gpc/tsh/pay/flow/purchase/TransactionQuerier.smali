.class public Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "InventoryQuerier"


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

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a:Lcom/gpc/ops/n;

    .line 3
    invoke-virtual {v0, p0}, Lcom/gpc/ops/n;->init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a:Lcom/gpc/ops/n;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransactionQuerier destroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a:Lcom/gpc/ops/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InventoryQuerier"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a:Lcom/gpc/ops/n;

    invoke-virtual {v0}, Lcom/gpc/ops/n;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a:Lcom/gpc/ops/n;

    new-instance v1, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$a;-><init>(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/ops/n;->queryPurchases(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    return-void
.end method

.method public onInitialized(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "InventoryQuerier"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PaymentClientProxy init failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    const-string p1, "PaymentClientProxy init success"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
