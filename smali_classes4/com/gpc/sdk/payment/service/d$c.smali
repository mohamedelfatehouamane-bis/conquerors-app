.class public Lcom/gpc/sdk/payment/service/d$c;
.super Lcom/gpc/sdk/payment/service/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/d;->checkSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/service/d;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/d;Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/d$c;->c:Lcom/gpc/sdk/payment/service/d;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/d$c;->b:Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;

    invoke-direct {p0}, Lcom/gpc/sdk/payment/service/d$d;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/d$c;->b:Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;

    .line 2
    const-string v1, "20"

    const/16 v2, 0x1389

    const-string v3, "121303"

    invoke-static {v3, v1, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/d$c;->b:Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;

    .line 31
    const-string v0, "121302"

    const-string v1, "20"

    invoke-static {v0, v1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/4 v0, 0x0

    .line 32
    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 29
    const-string v0, "121302"

    invoke-direct {p0, v0, p1}, Lcom/gpc/sdk/payment/service/d$c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/bean/GPCGeneralResponse;)V
    .locals 4

    .line 11
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getRaw()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/d$c;->b:Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;

    const-string v2, "121304"

    const-string v3, "10"

    .line 15
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getCode()I

    move-result p1

    .line 16
    invoke-static {v2, v3, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object v2, p0, Lcom/gpc/sdk/payment/service/d$c;->c:Lcom/gpc/sdk/payment/service/d;

    .line 19
    invoke-static {v2, v0}, Lcom/gpc/sdk/payment/service/d;->a(Lcom/gpc/sdk/payment/service/d;Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;

    move-result-object v0

    .line 20
    invoke-interface {v1, p1, v0}, Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    const-string v0, "SubscriptionGatewayServiceAGImpl"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-direct {p0}, Lcom/gpc/sdk/payment/service/d$c;->a()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/d$c;->c:Lcom/gpc/sdk/payment/service/d;

    invoke-static {v0, p1}, Lcom/gpc/sdk/payment/service/d;->a(Lcom/gpc/sdk/payment/service/d;Lorg/json/JSONObject;)Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/d$c;->b:Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    const-string v0, "SubscriptionGatewayServiceAGImpl"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-direct {p0}, Lcom/gpc/sdk/payment/service/d$c;->a()V

    return-void
.end method
