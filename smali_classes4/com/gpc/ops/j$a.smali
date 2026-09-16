.class public Lcom/gpc/ops/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/j;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/gpc/ops/j;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/j;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/j$a;->d:Lcom/gpc/ops/j;

    iput p2, p0, Lcom/gpc/ops/j$a;->a:I

    iput p3, p0, Lcom/gpc/ops/j$a;->b:I

    iput-object p4, p0, Lcom/gpc/ops/j$a;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "manager.processTransactionImmediately onFinish:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewPayment"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 3
    iget p1, p0, Lcom/gpc/ops/j$a;->a:I

    add-int/lit8 p1, p1, 0x1

    .line 4
    iget p2, p0, Lcom/gpc/ops/j$a;->b:I

    if-le p2, p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/gpc/ops/j$a;->d:Lcom/gpc/ops/j;

    iget-object v0, p0, Lcom/gpc/ops/j$a;->c:Ljava/util/List;

    invoke-virtual {p2, v0, p1}, Lcom/gpc/ops/j;->a(Ljava/util/List;I)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/gpc/ops/j$a;->d:Lcom/gpc/ops/j;

    iget-object p1, p1, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchasePreparingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/gpc/ops/j$a;->d:Lcom/gpc/ops/j;

    iget-object p1, p1, Lcom/gpc/ops/j;->h:Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;

    if-eqz p1, :cond_2

    .line 14
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/tsh/pay/flow/listener/IPurchaseStateListener;->onGPCPurchasePreparingFinished(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_2
    return-void
.end method
