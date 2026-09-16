.class public Lcom/gpc/sdk/payment/service/d$a;
.super Lcom/gpc/sdk/payment/service/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/d;->notifySubscription(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/service/d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/d;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/d$a;->c:Lcom/gpc/sdk/payment/service/d;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/d$a;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;

    invoke-direct {p0}, Lcom/gpc/sdk/payment/service/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 28
    const-string v0, "120502"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/payment/service/d$a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/bean/GPCGeneralResponse;)V
    .locals 5

    .line 13
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;-><init>()V

    .line 14
    sget-object v1, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->FAIL:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    iput-object v1, v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->state:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    .line 15
    new-instance v1, Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;

    invoke-direct {v1}, Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/gpc/sdk/payment/service/d$a;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;

    const-string v3, "120504"

    const-string v4, "20"

    .line 20
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getCode()I

    move-result p1

    .line 21
    invoke-static {v3, v4, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v2, p1, v0, v1}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    const-string v0, "SubscriptionGatewayServiceAGImpl"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const-string p1, "120503"

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/service/d$a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .line 29
    new-instance v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;-><init>()V

    .line 30
    sget-object v1, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->FAIL:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    iput-object v1, v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->state:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    .line 31
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/d$a;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;

    .line 32
    const-string v2, "20"

    invoke-static {p1, v2, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    .line 33
    invoke-interface {v1, p1, v0, p2}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;-><init>()V

    .line 2
    sget-object v1, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->SUCCESS:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    iput-object v1, v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->state:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    .line 4
    const-string v1, "u_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->userId:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/d$a;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v1, v0, v2}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionNotifiedListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 12
    :catch_0
    const-string p1, "120503"

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/payment/service/d$a;->a(Ljava/lang/String;I)V

    return-void
.end method
