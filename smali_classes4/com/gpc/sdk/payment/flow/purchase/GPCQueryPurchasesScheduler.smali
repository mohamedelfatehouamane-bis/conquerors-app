.class public Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;,
        Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "QueryPurchasesSchedule"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

.field public b:Ljava/util/TimerTask;

.field public c:Ljava/util/Timer;

.field public d:Lcom/gpc/sdk/payment/utils/a;

.field public e:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

.field public f:Landroid/app/Activity;

.field public final g:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

.field public h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/gpc/sdk/payment/utils/a;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/payment/utils/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->d:Lcom/gpc/sdk/payment/utils/a;

    .line 6
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->f:Landroid/app/Activity;

    .line 7
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    .line 8
    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;)Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    .line 39
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->c:Ljava/util/Timer;

    .line 40
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a()V

    .line 41
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    const-string v1, "payment.timer.purchase.query.stop"

    invoke-static {v1, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    return-void
.end method

.method public a(I)V
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->c:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 23
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryPurchasesSchedule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;-><init>(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$a;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    .line 26
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->c:Ljava/util/Timer;

    .line 27
    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    move-wide v6, v4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->d:Lcom/gpc/sdk/payment/utils/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/utils/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    .line 11
    :cond_1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->e:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

    .line 13
    new-instance p1, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->g:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-direct {p1, v1, v2, v3}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    .line 16
    new-instance p1, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;-><init>(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$a;)V

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    .line 17
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->c:Ljava/util/Timer;

    .line 19
    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->b:Ljava/util/TimerTask;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    const-string v0, "payment.timer.purchase.query.start"

    invoke-static {v0, p1}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    return-void
.end method

.method public onQueriedFinish(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 1
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
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->e:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->e:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;->onQueryPurchasesScheduleResult(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :cond_0
    return-void
.end method
