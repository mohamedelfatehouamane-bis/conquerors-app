.class public Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;,
        Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "QueryPurchasesSchedule"


# instance fields
.field public a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

.field public b:Ljava/util/TimerTask;

.field public c:Ljava/util/Timer;

.field public d:Lcom/gpc/ops/s;

.field public e:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

.field public f:Landroid/app/Activity;

.field public g:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/gpc/ops/s;

    invoke-direct {v0, p1}, Lcom/gpc/ops/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->d:Lcom/gpc/ops/s;

    .line 6
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->f:Landroid/app/Activity;

    .line 7
    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->g:Lcom/gpc/tsh/pay/bean/PaymentType;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;)Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    .line 38
    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->c:Ljava/util/Timer;

    .line 39
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a()V

    return-void
.end method

.method public a(I)V
    .locals 8

    .line 20
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->c:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 22
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryPurchasesSchedule"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;-><init>(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$a;)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    .line 25
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->c:Ljava/util/Timer;

    .line 26
    iget-object v3, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    move-wide v6, v4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->d:Lcom/gpc/ops/s;

    invoke-virtual {v0}, Lcom/gpc/ops/s;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    .line 11
    :cond_1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->e:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

    .line 13
    new-instance p1, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->g:Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-direct {p1, v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    .line 16
    new-instance p1, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;-><init>(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$a;)V

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    .line 17
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->c:Ljava/util/Timer;

    .line 19
    iget-object v3, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onQueriedFinish(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->e:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->e:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;->onQueryPurchasesScheduleResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    :cond_0
    return-void
.end method
