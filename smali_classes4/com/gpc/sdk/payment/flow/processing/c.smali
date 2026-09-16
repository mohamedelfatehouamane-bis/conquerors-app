.class public Lcom/gpc/sdk/payment/flow/processing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/processing/c$b;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "TranscationSchedule"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public d:Ljava/util/Timer;

.field public e:Ljava/util/TimerTask;

.field public f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

.field public g:Lcom/gpc/sdk/payment/utils/a;

.field public h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

.field public i:Lcom/gpc/sdk/payment/flow/processing/a;

.field public j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/c;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    .line 17
    new-instance v0, Lcom/gpc/sdk/payment/utils/a;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/payment/utils/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->g:Lcom/gpc/sdk/payment/utils/a;

    .line 18
    new-instance v1, Lcom/gpc/sdk/payment/flow/processing/a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/payment/flow/processing/a;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V

    iput-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->i:Lcom/gpc/sdk/payment/flow/processing/a;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/c;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    return-object p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/c;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/c;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/c;->a(J)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/processing/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/processing/c;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/c;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method private c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subs"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->g:Lcom/gpc/sdk/payment/utils/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/utils/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " committing gateway!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscationSchedule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->i:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v0, p1, p0}, Lcom/gpc/sdk/payment/flow/processing/a;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/processing/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/gpc/sdk/payment/flow/processing/c;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    return-object p0
.end method

.method public static synthetic e(Lcom/gpc/sdk/payment/flow/processing/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gpc/sdk/payment/flow/processing/c$b;-><init>(Lcom/gpc/sdk/payment/flow/processing/c;Lcom/gpc/sdk/payment/flow/processing/c$a;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->e:Ljava/util/TimerTask;

    .line 23
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->d:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    if-eq v1, p1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->i:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 10
    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/processing/c;->d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final declared-synchronized b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 3

    const-string v0, "isConsumeing purchase "

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/c;->c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", not add."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranscationSchedule"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    if-eq v2, p1, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has add purchase "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", not add."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranscationSchedule"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 18
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add purchase :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscationSchedule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    const-string v1, "payment.purchase.queue.add"

    invoke-static {v1, v0, p1}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 14
    :try_start_0
    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-direct {v3, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 15
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 17
    const-string v3, "TranscationSchedule"

    const-string v4, "getBeConsumePurchases!"

    invoke-static {v3, v4, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "TranscationSchedule"

    const-string v1, "PaymentTransactionScheduler is stop!!! not schedule again."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 11
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->d:Ljava/util/Timer;

    const-wide/16 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/processing/c;->a(J)V

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    const-string v1, "payment.timer.purchase.consume.start"

    invoke-static {v1, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    return-void
.end method

.method public d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/c;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->e:Ljava/util/TimerTask;

    .line 11
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->d:Ljava/util/Timer;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->i:Lcom/gpc/sdk/payment/flow/processing/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/processing/a;->a()V

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->h:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    const-string v1, "payment.timer.purchase.consume.stop"

    invoke-static {v1, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    return-void
.end method

.method public onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Scheduler:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewayFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    return-void
.end method

.method public onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Scheduler:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "subs"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    :cond_1
    return-void
.end method

.method public onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Scheduler:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p1, v0, p2}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    return-void
.end method

.method public onConsumeSuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    return-void
.end method

.method public onReceivedQueryInventoryTaskInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c;->f:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onReceivedQueryInventoryTaskInterval(I)V

    :cond_0
    return-void
.end method

.method public onSubItemHasCommited()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c;->a()V

    return-void
.end method
