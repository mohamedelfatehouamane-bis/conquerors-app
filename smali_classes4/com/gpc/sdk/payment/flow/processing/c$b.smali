.class public Lcom/gpc/sdk/payment/flow/processing/c$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/processing/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/processing/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/processing/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/payment/flow/processing/c;Lcom/gpc/sdk/payment/flow/processing/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/c$b;-><init>(Lcom/gpc/sdk/payment/flow/processing/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Lcom/gpc/sdk/payment/flow/processing/c;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    const-string v0, "toBeConsumePurchases.size() > 0"

    const-string v1, "TranscationSchedule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/processing/c;->b(Lcom/gpc/sdk/payment/flow/processing/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const-string v0, "!isConsumeing.get()"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/processing/c;->c(Lcom/gpc/sdk/payment/flow/processing/c;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Lcom/gpc/sdk/payment/flow/processing/c;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume purchase :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v2, "payment.purchase.queue.remove"

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v3}, Lcom/gpc/sdk/payment/flow/processing/c;->d(Lcom/gpc/sdk/payment/flow/processing/c;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v2, v0}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Lcom/gpc/sdk/payment/flow/processing/c;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    .line 11
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v2, v0}, Lcom/gpc/sdk/payment/flow/processing/c;->b(Lcom/gpc/sdk/payment/flow/processing/c;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    invoke-static {v2}, Lcom/gpc/sdk/payment/flow/processing/c;->e(Lcom/gpc/sdk/payment/flow/processing/c;)V

    .line 14
    const-string v2, "getBeConsumePurchases!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "isConsumeing.get()"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c$b;->b()V

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

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    const-string v0, "TranscationSchedule"

    const-string v1, "ConsumePurchaseTask Run."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/flow/processing/c$b;->a()V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/c$b;->a:Lcom/gpc/sdk/payment/flow/processing/c;

    const-wide/16 v1, 0x3a98

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/processing/c;->a(Lcom/gpc/sdk/payment/flow/processing/c;J)V

    return-void
.end method
