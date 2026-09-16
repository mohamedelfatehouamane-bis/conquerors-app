.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 7

    .line 1
    const-string v0, "isEnvReady, failed"

    const-string v1, "HuaweiPaymentClient"

    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    instance-of v0, p1, Lcom/huawei/hms/iap/IapApiException;

    const-string v2, ""

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/iap/IapApiException;

    .line 4
    sput-object v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->s:Lcom/huawei/hms/iap/IapApiException;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v4

    sput-object v4, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->t:Lcom/huawei/hms/support/api/client/Status;

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/iap/IapApiException;->getStatusCode()I

    move-result v4

    const v5, 0xea92

    const/4 v6, 0x3

    if-ne v5, v4, :cond_1

    .line 8
    const-string p1, "user not login"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-boolean p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->r:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-virtual {v0}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    const/16 v1, 0x4a3f

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Lcom/huawei/hms/support/api/client/Status;I)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput v6, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 14
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/iap/IapApiException;->getStatusCode()I

    move-result v4

    const v5, 0xea97

    if-ne v5, v4, :cond_3

    .line 16
    const-string p1, "user not accept agreement"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-boolean p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->r:Z

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-virtual {v0}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    const/16 v1, 0x4a41

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Lcom/huawei/hms/support/api/client/Status;I)V

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput v6, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput v3, v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 25
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Ljava/lang/Exception;)I

    move-result p1

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 29
    :cond_4
    instance-of v0, p1, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_5

    .line 30
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    invoke-direct {v1, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->t:Lcom/huawei/hms/support/api/client/Status;

    .line 34
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput v3, v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 35
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->suggestion(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput v3, v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 38
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    const-string v1, "999999"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->suggestion(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
