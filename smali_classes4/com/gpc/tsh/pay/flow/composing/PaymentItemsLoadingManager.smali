.class public Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;
.implements Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "PaymentItemsLoadingManager"

.field public static final m:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Lcom/gpc/tsh/pay/flow/composing/a;

.field public b:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;

.field public c:Ljava/util/Timer;

.field public d:Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lcom/gpc/ops/p;

.field public h:Z

.field public i:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

.field public final j:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$a;

    invoke-direct {v0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$a;-><init>()V

    sput-object v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->m:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/ops/p;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->h:Z

    .line 8
    sget-object v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;->NONE:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->i:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    .line 10
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const v0, 0x7fffffff

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v7, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->j:Ljava/util/concurrent/BlockingQueue;

    .line 11
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->m:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->k:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->c:Ljava/util/Timer;

    .line 26
    new-instance v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;

    invoke-direct {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->b:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;

    .line 27
    new-instance p1, Lcom/gpc/tsh/pay/flow/composing/a;

    invoke-direct {p1, p3, p4}, Lcom/gpc/tsh/pay/flow/composing/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a:Lcom/gpc/tsh/pay/flow/composing/a;

    .line 28
    iput-object p5, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    .line 41
    invoke-virtual {v1}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getCategory()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 16
    const-string v0, "PaymentItemsLoadingManager"

    const-string v1, "composeIfNeed"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    invoke-virtual {v0}, Lcom/gpc/ops/p;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_STORE:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->i:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    .line 19
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->b:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    invoke-virtual {v1}, Lcom/gpc/ops/p;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    invoke-virtual {v2}, Lcom/gpc/ops/p;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;)V

    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method

.method public a(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 25
    const-string v0, "onLoadFinished"

    const-string v1, "PaymentItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->d:Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "onLoadFinished--(listener != null)"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->d:Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    invoke-virtual {v1}, Lcom/gpc/ops/p;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->c()V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->d()V

    return-void
.end method

.method public final synthetic a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V
    .locals 2

    .line 14
    const-string v0, "PaymentItemsLoadingManager"

    const-string v1, "onPaymentCardsLoaded"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    invoke-virtual {v0, p1}, Lcom/gpc/ops/p;->a(Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    invoke-virtual {p1, p3, p2}, Lcom/gpc/ops/p;->a(Ljava/util/List;Ljava/util/List;)V

    .line 24
    invoke-static {p3}, Lcom/gpc/ops/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;)Z
    .locals 4

    .line 1
    const-string v0, "loadItems"

    const-string v1, "PaymentItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->d:Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;

    .line 10
    sget-object p1, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_PLATFORM:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->i:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    .line 12
    invoke-virtual {p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->e()V

    return v3

    .line 13
    :cond_1
    :goto_0
    const-string p1, "Disable point card loading when a loading task already exists or Manager is destroyed."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->c()V

    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->b:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a()V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->d:Lcom/gpc/tsh/pay/flow/listener/ILoadItemsListener;

    .line 2
    sget-object v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;->NONE:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->i:Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$STAGE;

    .line 3
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iput-boolean v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->h:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const-string v0, "PaymentItemsLoadingManager"

    const-string v1, "to platform load items"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a:Lcom/gpc/tsh/pay/flow/composing/a;

    invoke-virtual {v1, v0}, Lcom/gpc/tsh/pay/flow/composing/a;->b(Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V

    return-void
.end method

.method public onPaymentCardsComposed(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "PaymentItemsLoadingManager"

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "onPaymentCardsComposed error.isOccurred"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->g:Lcom/gpc/ops/p;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Lcom/gpc/ops/p;->a(Ljava/util/List;Z)V

    .line 7
    const-string p2, "get item list finish"

    invoke-static {v1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    .line 10
    :goto_0
    const-string p1, "compose end"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V
    .locals 2

    .line 1
    const-string v0, "PaymentItemsLoadingManager"

    const-string v1, "onPaymentCardsLoaded"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    sget-object p1, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->LOADED_FROM_NETWORK:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    invoke-virtual {p2}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a(Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;Ljava/util/List;Ljava/util/List;)V

    .line 8
    invoke-virtual {p0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsLoadingManager;->a()V

    return-void
.end method
