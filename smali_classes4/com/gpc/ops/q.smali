.class public Lcom/gpc/ops/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/ops/q$l;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "PurchaseProcessTask"


# instance fields
.field public a:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

.field public e:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;

.field public f:Lcom/gpc/tsh/pay/service/PurchaseService;

.field public g:Lcom/gpc/ops/s;

.field public h:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

.field public i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

.field public j:Lcom/gpc/operations/migrate/utils/SDKTask;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/utils/SDKTask;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/SDKTask;-><init>()V

    iput-object v0, p0, Lcom/gpc/ops/q;->j:Lcom/gpc/operations/migrate/utils/SDKTask;

    .line 5
    iput-object p2, p0, Lcom/gpc/ops/q;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 6
    iput-object p3, p0, Lcom/gpc/ops/q;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/gpc/ops/q;->c:Ljava/lang/String;

    .line 8
    new-instance p3, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

    invoke-direct {p3, p1, p2}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p3, p0, Lcom/gpc/ops/q;->d:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

    .line 9
    new-instance p3, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;

    invoke-direct {p3, p1, p2}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p3, p0, Lcom/gpc/ops/q;->e:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;

    .line 10
    invoke-static {}, Lcom/gpc/ops/o;->b()Lcom/gpc/tsh/pay/service/PurchaseService;

    move-result-object p3

    iput-object p3, p0, Lcom/gpc/ops/q;->f:Lcom/gpc/tsh/pay/service/PurchaseService;

    .line 11
    new-instance p3, Lcom/gpc/ops/s;

    invoke-direct {p3, p1}, Lcom/gpc/ops/s;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/gpc/ops/q;->g:Lcom/gpc/ops/s;

    .line 12
    new-instance p3, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    invoke-direct {p3, p1, p2}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object p3, p0, Lcom/gpc/ops/q;->h:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/q;)Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/gpc/ops/q;->h:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/q;->d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/q;->d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/q;->c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/q;->c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/q;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/q;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Ljava/lang/String;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/gpc/ops/q;->c:Ljava/lang/String;

    sget-object v1, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    iget-object v2, p0, Lcom/gpc/ops/q;->i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    const-string v3, ""

    invoke-static {v0, v1, v3, v2}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/OrderType;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/gpc/ops/q;->g:Lcom/gpc/ops/s;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/ops/s;->c(Ljava/lang/String;)Lcom/gpc/ops/s$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object v1, p1, Lcom/gpc/ops/s$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object p1, p1, Lcom/gpc/ops/s$a;->d:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/gpc/ops/q;->d:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a()V

    .line 77
    iget-object v0, p0, Lcom/gpc/ops/q;->e:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;->a()V

    .line 78
    iget-object v0, p0, Lcom/gpc/ops/q;->h:Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    invoke-virtual {v0}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a()V

    return-void
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/ops/q$l;)V
    .locals 3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/q;->e:Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;

    invoke-virtual {p0, p1}, Lcom/gpc/ops/q;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/ops/q$g;

    invoke-direct {v2, p0, p1, p2}, Lcom/gpc/ops/q$g;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/ops/q$l;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/purchase/PurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    const-string v0, "PurchaseProcessTask"

    const-string v1, "acknowledge!"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-interface {p2}, Lcom/gpc/ops/q$l;->a()V

    return-void
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/q;->d:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

    const-string v1, ""

    new-instance v2, Lcom/gpc/ops/q$k;

    invoke-direct {v2, p0, p2}, Lcom/gpc/ops/q$k;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    const-string v0, "PurchaseProcessTask"

    const-string v1, "consumePurchase!"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    return-void
.end method

.method public final a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/gpc/ops/q;->d:Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;

    const-string v1, ""

    new-instance v2, Lcom/gpc/ops/q$b;

    invoke-direct {v2, p0, p2}, Lcom/gpc/ops/q$b;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/flow/purchase/PurchaseConsumer$GPCConsumePurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 74
    const-string v1, "PurchaseProcessTask"

    const-string v2, "consumePurchase!"

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Unspecified:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    invoke-interface {p2, v0, p1}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/gpc/ops/q;->i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    return-void
.end method

.method public final b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Ljava/lang/String;
    .locals 3

    .line 6
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "subs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/gpc/ops/q;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/gpc/ops/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/ops/q;->i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    invoke-static {p1, v0, v1}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateSubItemPayload(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/gpc/ops/q;->c:Ljava/lang/String;

    sget-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    iget-object v1, p0, Lcom/gpc/ops/q;->i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/OrderType;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    .line 4
    const-string v0, "PurchaseProcessTask"

    const-string v1, "excute onFinish"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/ops/q;->j:Lcom/gpc/operations/migrate/utils/SDKTask;

    new-instance v1, Lcom/gpc/ops/q$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/ops/q$e;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    new-instance p1, Lcom/gpc/ops/q$f;

    invoke-direct {p1, p0}, Lcom/gpc/ops/q$f;-><init>(Lcom/gpc/ops/q;)V

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/SDKTask;->excuteForTimeConsuming(Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/gpc/ops/q;->j:Lcom/gpc/operations/migrate/utils/SDKTask;

    new-instance v1, Lcom/gpc/ops/q$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/ops/q$c;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    new-instance p1, Lcom/gpc/ops/q$d;

    invoke-direct {p1, p0}, Lcom/gpc/ops/q$d;-><init>(Lcom/gpc/ops/q;)V

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/SDKTask;->excuteForTimeConsuming(Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public final c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 11

    .line 3
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/q;->c:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/gpc/ops/q;->b:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/gpc/ops/q;->g:Lcom/gpc/ops/s;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/ops/s;->c(Ljava/lang/String;)Lcom/gpc/ops/s$a;

    move-result-object v2

    const-string v3, "PurchaseProcessTask"

    if-eqz v2, :cond_2

    .line 13
    iget-object v4, v2, Lcom/gpc/ops/s$a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    iget-object v0, v2, Lcom/gpc/ops/s$a;->b:Ljava/lang/String;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get postUserID from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object v4, v2, Lcom/gpc/ops/s$a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19
    iget-object v1, v2, Lcom/gpc/ops/s$a;->c:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "get gameid from cache:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v8, v0

    move-object v7, v1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "paymentGateway submit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/gpc/ops/q;->f:Lcom/gpc/tsh/pay/service/PurchaseService;

    iget-object v5, p0, Lcom/gpc/ops/q;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    sget-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    iget-object v1, p0, Lcom/gpc/ops/q;->i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {v8, v0, v2, v1}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/OrderType;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/gpc/ops/q$j;

    invoke-direct {v10, p0, p2}, Lcom/gpc/ops/q$j;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    move-object v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/gpc/tsh/pay/service/PurchaseService;->submit(Lcom/gpc/tsh/pay/bean/PaymentType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V

    return-void
.end method

.method public final c(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 12

    .line 26
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;->Unspecified:Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;

    sget-object v1, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const/4 v2, 0x0

    invoke-interface {p2, v0, p1, v2, v1}, Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionHandleType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/gpc/ops/q;->c:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/gpc/ops/q;->b:Ljava/lang/String;

    .line 33
    iget-object v2, p0, Lcom/gpc/ops/q;->g:Lcom/gpc/ops/s;

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/ops/s;->c(Ljava/lang/String;)Lcom/gpc/ops/s$a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 35
    iget-object v3, v2, Lcom/gpc/ops/s$a;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "PurchaseProcessTask"

    if-nez v3, :cond_1

    .line 36
    iget-object v0, v2, Lcom/gpc/ops/s$a;->b:Ljava/lang/String;

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "get postUserID from cache:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    iget-object v3, v2, Lcom/gpc/ops/s$a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 41
    iget-object v1, v2, Lcom/gpc/ops/s$a;->c:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get gameid from cache:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v9, v0

    move-object v8, v1

    .line 46
    iget-object v5, p0, Lcom/gpc/ops/q;->f:Lcom/gpc/tsh/pay/service/PurchaseService;

    iget-object v6, p0, Lcom/gpc/ops/q;->a:Lcom/gpc/tsh/pay/bean/PaymentType;

    sget-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    iget-object v1, p0, Lcom/gpc/ops/q;->i:Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {v9, v0, v2, v1}, Lcom/gpc/tsh/pay/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/tsh/pay/bean/OrderType;Ljava/lang/String;Lcom/gpc/tsh/pay/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/gpc/ops/q$a;

    invoke-direct {v11, p0, p2}, Lcom/gpc/ops/q$a;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V

    move-object v7, p1

    invoke-interface/range {v5 .. v11}, Lcom/gpc/tsh/pay/service/PurchaseService;->submit(Lcom/gpc/tsh/pay/bean/PaymentType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V

    return-void
.end method

.method public final d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/ops/q$i;

    invoke-direct {v0, p0, p2}, Lcom/gpc/ops/q$i;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/ops/q;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/ops/q$l;)V

    return-void
.end method

.method public final d(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/ops/q$h;

    invoke-direct {v0, p0, p2, p1}, Lcom/gpc/ops/q$h;-><init>(Lcom/gpc/ops/q;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/ops/q;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/ops/q$l;)V

    return-void
.end method
