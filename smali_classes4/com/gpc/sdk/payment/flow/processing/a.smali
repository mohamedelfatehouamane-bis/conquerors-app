.class public Lcom/gpc/sdk/payment/flow/processing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/processing/a$n;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "PurchaseProcessTask"


# instance fields
.field public a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

.field public e:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;

.field public f:Lcom/gpc/sdk/payment/service/PurchaseService;

.field public g:Lcom/gpc/sdk/payment/service/SubscriptionService;

.field public h:Lcom/gpc/sdk/payment/utils/a;

.field public i:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

.field public j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

.field public k:Lcom/gpc/util/SDKTask;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->k:Lcom/gpc/util/SDKTask;

    .line 5
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/processing/a;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    .line 6
    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    .line 8
    new-instance p3, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

    invoke-direct {p3, p1, p5, p2}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->d:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

    .line 9
    new-instance p3, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;

    invoke-direct {p3, p1, p5, p2}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->e:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;

    .line 10
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPurchaseService()Lcom/gpc/sdk/payment/service/PurchaseService;

    move-result-object p3

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->f:Lcom/gpc/sdk/payment/service/PurchaseService;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getSubscriptionService()Lcom/gpc/sdk/payment/service/SubscriptionService;

    move-result-object p3

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->g:Lcom/gpc/sdk/payment/service/SubscriptionService;

    .line 12
    new-instance p3, Lcom/gpc/sdk/payment/utils/a;

    invoke-direct {p3, p1}, Lcom/gpc/sdk/payment/utils/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->h:Lcom/gpc/sdk/payment/utils/a;

    .line 13
    new-instance p3, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    invoke-direct {p3, p1, p5, p2}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->i:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/GPCSDKConstant$PaymentType;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->f(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->i:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->e(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/processing/a;)Lcom/gpc/sdk/payment/utils/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->h:Lcom/gpc/sdk/payment/utils/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a;->c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Ljava/lang/String;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a;->j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    const-string v3, ""

    invoke-static {v0, v1, v3, v2}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->h:Lcom/gpc/sdk/payment/utils/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/payment/utils/a;->c(Ljava/lang/String;)Lcom/gpc/sdk/payment/utils/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object v1, p1, Lcom/gpc/sdk/payment/utils/a$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object p1, p1, Lcom/gpc/sdk/payment/utils/a$a;->d:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->d:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;->a()V

    .line 98
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->e:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a()V

    .line 99
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->i:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a()V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->d:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

    const-string v1, ""

    new-instance v2, Lcom/gpc/sdk/payment/flow/processing/a$b;

    invoke-direct {v2, p0, p2}, Lcom/gpc/sdk/payment/flow/processing/a$b;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    const-string v1, "PurchaseProcessTask"

    const-string v2, "consumePurchase!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[exception] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "payment.purchase.consume.error"

    invoke-static {v2, v1, p1, v0}, Lcom/gpc/sdk/payment/utils/b;->a(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->d:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;

    const-string v1, ""

    new-instance v2, Lcom/gpc/sdk/payment/flow/processing/a$d;

    invoke-direct {v2, p0, p2}, Lcom/gpc/sdk/payment/flow/processing/a$d;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseConsumer$GPCConsumePurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 95
    const-string v1, "PurchaseProcessTask"

    const-string v2, "consumePurchase!"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onConsumeFail(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V
    .locals 3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->e:Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/a;->b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/payment/flow/processing/a$i;

    invoke-direct {v2, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a$i;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/purchase/GPCPurchaseAcknowledgement$GPCAcknowledgePurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    const-string v0, "PurchaseProcessTask"

    const-string v1, "acknowledge!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    invoke-interface {p2}, Lcom/gpc/sdk/payment/flow/processing/a$n;->a()V

    return-void
.end method

.method public a(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    return-void
.end method

.method public final b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Ljava/lang/String;
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getItemType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "subs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateSubItemPayload(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 2

    .line 5
    const-string v0, "PurchaseProcessTask"

    const-string v1, "excute onFinish"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->k:Lcom/gpc/util/SDKTask;

    new-instance v1, Lcom/gpc/sdk/payment/flow/processing/a$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a$g;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    new-instance p1, Lcom/gpc/sdk/payment/flow/processing/a$h;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/payment/flow/processing/a$h;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;)V

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public b(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->k:Lcom/gpc/util/SDKTask;

    new-instance v1, Lcom/gpc/sdk/payment/flow/processing/a$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a$e;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    new-instance p1, Lcom/gpc/sdk/payment/flow/processing/a$f;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/payment/flow/processing/a$f;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;)V

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void
.end method

.method public final c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 11

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->b:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v2

    const-string v3, "PurchaseProcessTask"

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v2}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v4}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 17
    invoke-virtual {v4}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get cha id from GameDelegate:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-interface {v2}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v2

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get server id from GameDelegate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a;->h:Lcom/gpc/sdk/payment/utils/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gpc/sdk/payment/utils/a;->c(Ljava/lang/String;)Lcom/gpc/sdk/payment/utils/a$a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 30
    iget-object v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 31
    iget-object v0, v2, Lcom/gpc/sdk/payment/utils/a$a;->b:Ljava/lang/String;

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get postUserID from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_3
    iget-object v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 36
    iget-object v1, v2, Lcom/gpc/sdk/payment/utils/a$a;->c:Ljava/lang/String;

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get gameid from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_4
    iget v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->e:I

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get server id from cache:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 44
    iget-object v2, v2, Lcom/gpc/sdk/payment/utils/a$a;->f:Ljava/lang/String;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get cha id from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v8, v0

    move-object v7, v1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "paymentGateway submit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/processing/a;->f:Lcom/gpc/sdk/payment/service/PurchaseService;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/processing/a;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {v8, v0, v2, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/gpc/sdk/payment/flow/processing/a$a;

    invoke-direct {v10, p0, p2}, Lcom/gpc/sdk/payment/flow/processing/a$a;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    move-object v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/gpc/sdk/payment/service/PurchaseService;->submit(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;)V

    return-void
.end method

.method public final c(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 11

    .line 52
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const/4 v2, 0x0

    invoke-interface {p2, v0, p1, v2, v1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->b:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v2

    const-string v3, "PurchaseProcessTask"

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v2}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {v4}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v4}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get cha id from GameDelegate:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-interface {v2}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v2

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get server id from GameDelegate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/processing/a;->h:Lcom/gpc/sdk/payment/utils/a;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gpc/sdk/payment/utils/a;->c(Ljava/lang/String;)Lcom/gpc/sdk/payment/utils/a$a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 78
    iget-object v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    iget-object v0, v2, Lcom/gpc/sdk/payment/utils/a$a;->b:Ljava/lang/String;

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get postUserID from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    iget-object v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 84
    iget-object v1, v2, Lcom/gpc/sdk/payment/utils/a$a;->c:Ljava/lang/String;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get gameid from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_4
    iget v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->e:I

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get server id from cache:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v4, v2, Lcom/gpc/sdk/payment/utils/a$a;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 92
    iget-object v2, v2, Lcom/gpc/sdk/payment/utils/a$a;->f:Ljava/lang/String;

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get cha id from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v8, v0

    move-object v7, v1

    .line 98
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/processing/a;->f:Lcom/gpc/sdk/payment/service/PurchaseService;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/processing/a;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$OrderType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$OrderType;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/processing/a;->j:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    const-string v2, ""

    invoke-static {v8, v0, v2, v1}, Lcom/gpc/sdk/payment/bean/GPCGatewayPayload;->generateInAppItemPayload(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$OrderType;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/gpc/sdk/payment/flow/processing/a$c;

    invoke-direct {v10, p0, p2}, Lcom/gpc/sdk/payment/flow/processing/a$c;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    move-object v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/gpc/sdk/payment/service/PurchaseService;->submit(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/SubmittalFinishedListener;)V

    return-void
.end method

.method public final d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/a$m;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/payment/flow/processing/a$m;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumeFinishListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V

    return-void
.end method

.method public final d(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 12

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;->Unspecified:Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const/4 v2, 0x0

    invoke-interface {p2, v0, p1, v2, v1}, Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;->onCommitGatewaySuccess(Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionHandleType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V

    return-void

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/processing/a;->g:Lcom/gpc/sdk/payment/service/SubscriptionService;

    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/processing/a;->a:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    iget-object v5, p0, Lcom/gpc/sdk/payment/flow/processing/a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/gpc/sdk/payment/flow/processing/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/gpc/sdk/payment/flow/processing/a$k;

    invoke-direct {v11, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/processing/a$k;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V

    .line 10
    invoke-interface/range {v3 .. v11}, Lcom/gpc/sdk/payment/service/SubscriptionService;->notifySubscription(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;)V

    return-void
.end method

.method public final e(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/a$l;

    invoke-direct {v0, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/processing/a$l;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V

    return-void
.end method

.method public final f(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/processing/a$j;

    invoke-direct {v0, p0, p2, p1}, Lcom/gpc/sdk/payment/flow/processing/a$j;-><init>(Lcom/gpc/sdk/payment/flow/processing/a;Lcom/gpc/sdk/payment/flow/processing/GPCPaymentTransactionStateListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/flow/processing/a;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Lcom/gpc/sdk/payment/flow/processing/a$n;)V

    return-void
.end method
