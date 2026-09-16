.class public Lcom/gpc/sdk/payment/service/b$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/service/b$l$c;
    }
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/payment/service/b$l$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/sdk/payment/service/b$l$c<",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lcom/gpc/sdk/payment/service/b$l$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/sdk/payment/service/b$l$c<",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/b$l$c;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    .line 3
    new-instance v0, Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/b$l$c;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->b:Lcom/gpc/sdk/payment/service/b$l$c;

    .line 7
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l;->c:Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/service/b$l;)Lcom/gpc/sdk/payment/service/b$l$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/service/b$l;)Lcom/gpc/sdk/payment/service/b$l$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/service/b$l;->b:Lcom/gpc/sdk/payment/service/b$l$c;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l$c;->d(Lcom/gpc/sdk/payment/service/b$l$c;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->b:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l$c;->d(Lcom/gpc/sdk/payment/service/b$l$c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b$l;->b:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v1}, Lcom/gpc/sdk/payment/service/b$l$c;->b(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b$l;->b:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v1}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b$l;->b:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v1}, Lcom/gpc/sdk/payment/service/b$l$c;->b(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;

    .line 8
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->isLimit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "limit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->getLimitation()Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->getLimitation()Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;

    iget-object v2, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v2}, Lcom/gpc/sdk/payment/service/b$l$c;->c(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v3}, Lcom/gpc/sdk/payment/service/b$l$c;->b(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l$c;->e(Lcom/gpc/sdk/payment/service/b$l$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->c:Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;

    iget-object v2, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v2}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/error/GPCException;

    invoke-interface {v0, v2, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;->onPaymentItemsLoadFinishedWithCache(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->c:Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v1}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/error/GPCException;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l;->c:Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;

    iget-object v2, p0, Lcom/gpc/sdk/payment/service/b$l;->a:Lcom/gpc/sdk/payment/service/b$l$c;

    invoke-static {v2}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/error/GPCException;

    invoke-interface {v0, v2, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/gpc/sdk/payment/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 2
    new-instance v5, Lcom/gpc/sdk/payment/service/b$l$a;

    invoke-direct {v5, p0}, Lcom/gpc/sdk/payment/service/b$l$a;-><init>(Lcom/gpc/sdk/payment/service/b$l;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsListener;)V

    return-void
.end method

.method public b(Lcom/gpc/sdk/payment/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 2
    new-instance v8, Lcom/gpc/sdk/payment/service/b$l$b;

    invoke-direct {v8, p0}, Lcom/gpc/sdk/payment/service/b$l$b;-><init>(Lcom/gpc/sdk/payment/service/b$l;)V

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V

    return-void
.end method
