.class public Lcom/gpc/ops/u$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/ops/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/ops/u;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/ops/u;Lcom/gpc/ops/u$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/ops/u$b;-><init>(Lcom/gpc/ops/u;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v0}, Lcom/gpc/ops/u;->a(Lcom/gpc/ops/u;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    const-string v0, "toBeConsumePurchases.size() > 0"

    const-string v1, "TranscationSchedule"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v0}, Lcom/gpc/ops/u;->b(Lcom/gpc/ops/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const-string v0, "!isConsumeing.get()"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v0}, Lcom/gpc/ops/u;->c(Lcom/gpc/ops/u;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v0}, Lcom/gpc/ops/u;->a(Lcom/gpc/ops/u;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 8
    iget-object v2, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v2, v0}, Lcom/gpc/ops/u;->a(Lcom/gpc/ops/u;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 9
    iget-object v2, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v2, v0}, Lcom/gpc/ops/u;->b(Lcom/gpc/ops/u;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v2, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    invoke-static {v2}, Lcom/gpc/ops/u;->d(Lcom/gpc/ops/u;)V

    .line 12
    const-string v2, "getBeConsumePurchases!"

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "isConsumeing.get()"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/gpc/ops/u$b;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    const-wide/16 v0, 0x7d0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "TranscationSchedule"

    const-string v2, "getBeConsumePurchases!"

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    const-string v0, "TranscationSchedule"

    const-string v1, "ConsumePurchaseTask Run."

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/ops/u$b;->a()V

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/u$b;->a:Lcom/gpc/ops/u;

    const-wide/16 v1, 0x3a98

    invoke-static {v0, v1, v2}, Lcom/gpc/ops/u;->a(Lcom/gpc/ops/u;J)V

    return-void
.end method
