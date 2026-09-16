.class public Lcom/gpc/sdk/payment/service/d$b;
.super Lcom/gpc/sdk/payment/service/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/d;->isSubscriptionAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/service/d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/d;Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/d$b;->c:Lcom/gpc/sdk/payment/service/d;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/d$b;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;

    invoke-direct {p0}, Lcom/gpc/sdk/payment/service/d$d;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/d$b;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;

    .line 32
    const-string p2, "20"

    const/16 v0, 0x1389

    const-string v1, "120602"

    invoke-static {v1, p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-interface {p1, p2, v0, v1}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;->onResult(Lcom/gpc/sdk/error/GPCException;ZLcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/d$b;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;

    .line 2
    const-string v1, "20"

    const/16 v2, 0x1389

    const-string v3, "120603"

    invoke-static {v3, v1, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;->onResult(Lcom/gpc/sdk/error/GPCException;ZLcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 30
    const-string v0, "120502"

    invoke-direct {p0, v0, p1}, Lcom/gpc/sdk/payment/service/d$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/bean/GPCGeneralResponse;)V
    .locals 4

    .line 14
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/d$b;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;

    const-string v2, "120604"

    const-string v3, "10"

    .line 20
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getCode()I

    move-result p1

    .line 21
    invoke-static {v2, v3, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v2, 0x0

    .line 22
    invoke-interface {v1, p1, v2, v0}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;->onResult(Lcom/gpc/sdk/error/GPCException;ZLcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    const-string v0, "SubscriptionGatewayServiceAGImpl"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/service/d$b;->a()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .line 4
    :try_start_0
    const-string v0, "is_available"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/d$b;->b:Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, p1, v2}, Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;->onResult(Lcom/gpc/sdk/error/GPCException;ZLcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string v0, "SubscriptionGatewayServiceAGImpl"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/service/d$b;->a()V

    return-void
.end method
