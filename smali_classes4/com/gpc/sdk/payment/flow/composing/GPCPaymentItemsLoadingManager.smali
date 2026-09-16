.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;
.implements Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String; = "ItemsLoadingManager"

.field public static final q:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Z

.field public b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;

.field public c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

.field public d:Ljava/util/Timer;

.field public e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

.field public f:I

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Lcom/gpc/sdk/payment/flow/cache/a;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Z

.field public m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

.field public final n:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$a;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$a;-><init>()V

    sput-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->q:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/gpc/sdk/payment/flow/cache/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;",
            "Lcom/gpc/sdk/GPCSDKConstant$PaymentType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/cache/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v1

    iput v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->k:I

    .line 8
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->l:Z

    .line 10
    sget-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->NONE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 12
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const v0, 0x7fffffff

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v7, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->n:Ljava/util/concurrent/BlockingQueue;

    .line 13
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->q:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->o:Ljava/util/concurrent/Executor;

    move/from16 v8, p7

    .line 28
    iput-boolean v8, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a:Z

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d:Ljava/util/Timer;

    .line 31
    invoke-virtual/range {p0 .. p8}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(ILandroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    move-result-object p3

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(ILandroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;

    move-object/from16 p1, p9

    .line 33
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    .line 34
    iput-object v9, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->j:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->o:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Lcom/gpc/sdk/GPCSDKConstant$PaymentType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;"
        }
    .end annotation

    .line 3
    new-instance p1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;

    invoke-direct {p1, p4, p5}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(ILandroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;",
            "Lcom/gpc/sdk/GPCSDKConstant$PaymentType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;"
        }
    .end annotation

    move p5, p1

    .line 2
    new-instance p1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    iget-object p6, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->o:Ljava/util/concurrent/Executor;

    invoke-direct/range {p1 .. p6}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;ILjava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->j:Ljava/util/List;

    const-string v1, "ItemsLoadingManager"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCGameItem;

    .line 29
    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "finding need item from all items:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "find need item : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_0

    .line 39
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCGameItem;->getCategory()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 46
    :cond_4
    const-string v0, "find all items "

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 4
    const-string v0, "composeFromCacheIfNeed"

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isGetThirdPlatormPrice:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->composeFromCache()Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 12
    const-string v0, "onLoadFinished"

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    const-string v0, "onLoadFinished--(listener != null)"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/flow/cache/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c()V

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d()V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;)V

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {p1, p3, p2}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    const-string v0, "composeIfNeed"

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isGetThirdPlatormPrice:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/cache/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_STORE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v1}, Lcom/gpc/sdk/payment/flow/cache/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/flow/cache/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->compose(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    .line 3
    sget-object v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->NONE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    iput-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->l:Z

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const-string v0, "ItemsLoadingManager"

    const-string v1, "to platform load items"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$b;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;)V

    .line 46
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentGoogleCardsLoader;->loadItemsWithoutRetry(Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    const-string v0, "ItemsLoadingManager"

    const-string v1, "onPaymentItemsIntermediateResult"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->l:Z

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/flow/cache/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->c()V

    return v1

    .line 6
    :cond_0
    iget v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    const/16 v3, 0xc

    const-string v4, "ItemsLoadingManager"

    if-ne v0, v3, :cond_3

    .line 9
    sget-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_PLATFORM:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    if-ne v0, v2, :cond_2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/cache/a;->e()Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    move-result-object v0

    sget-object v2, Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;->NONE:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-ne v0, v2, :cond_1

    .line 12
    :try_start_1
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    const-string v2, "payment.items.fallflat"

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/cache/a;->e()Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    move-result-object v0

    sget-object v2, Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;->LOADED_FROM_CACHE:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    if-ne v0, v2, :cond_2

    .line 14
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    const-string v2, "payment.items.backup"

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :catchall_0
    :cond_2
    :goto_0
    const-string v0, "retry over times!"

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retry times:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$c;-><init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;)V

    .line 38
    iget v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 39
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d:Ljava/util/Timer;

    if-eqz v1, :cond_5

    const-wide/16 v3, 0xbb8

    .line 40
    invoke-virtual {v1, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 43
    :cond_4
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->d:Ljava/util/Timer;

    if-eqz v1, :cond_5

    const-wide/16 v3, 0x4e20

    .line 44
    invoke-virtual {v1, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_5
    :goto_1
    return v2
.end method

.method public getPurchaseLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->k:I

    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_STORE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const-string v2, "ItemsLoadingManager"

    if-ne v0, v1, :cond_0

    .line 3
    const-string v0, "retryLoadItems load InStorePrice"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->b()V

    return-void

    .line 6
    :cond_0
    const-string v0, "retryLoadItems load IGX items"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e()V

    return-void
.end method

.method public loadItems(Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;)Z
    .locals 4

    .line 1
    const-string v0, "loadItems"

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e:Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;

    .line 10
    sget-object p1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_PLATFORM:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->m:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 11
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->e()V

    return v3

    .line 12
    :cond_1
    :goto_0
    const-string p1, "Disable point card loading when a loading task already exists or Manager is destroyed."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onPaymentCardsComposed(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "ItemsLoadingManager"

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onPaymentCardsComposed error.isOccurred:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->i:Lcom/gpc/sdk/payment/flow/cache/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Lcom/gpc/sdk/payment/flow/cache/a;->a(Ljava/util/List;Z)V

    .line 10
    const-string p2, "get item list finish"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/error/GPCException;)V

    .line 13
    :cond_1
    :goto_0
    const-string p1, "compose end"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentCardsLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 2

    .line 1
    const-string v0, "onPaymentCardsLoaded"

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onPaymentCardsLoaded error.isOccurred:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    const-string p2, "onPaymentCardsLoaded retryLoad out of times"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/error/GPCException;)V

    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getPurchaseLimit()I

    move-result p1

    iput p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->k:I

    .line 14
    sget-object p1, Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;->LOADED_FROM_NETWORK:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameSubItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;Ljava/util/List;Ljava/util/List;)V

    .line 16
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a()V

    .line 18
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f()V

    .line 19
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->b()V

    return-void
.end method

.method public onPaymentCardsLoadedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPaymentCardsLoadedWithCache error.isOccurred:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemsLoadingManager"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string p2, "onPaymentCardsLoadedWithCache retryLoad out of times"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->l:Z

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isIntermediateReturned:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->l:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getPurchaseLimit()I

    move-result p1

    iput p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->k:I

    .line 16
    sget-object p1, Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;->LOADED_FROM_CACHE:Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameSubItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->getGameItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a(Lcom/gpc/sdk/payment/flow/cache/ITEMS_SOURCE;Ljava/util/List;Ljava/util/List;)V

    .line 18
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a()V

    .line 20
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->f()V

    return-void
.end method

.method public setGetGooglePlayPrice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->a:Z

    return-void
.end method
