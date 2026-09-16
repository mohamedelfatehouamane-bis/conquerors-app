.class public Lcom/gpc/sdk/payment/service/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->getAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$i;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$i;->a:Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    const-string p2, "\u63a5\u53e3\u8fd4\u56de\u7684orderInfo:"

    const-string v0, "\u8fd4\u56de\u8ba2\u5355\u53f7:"

    const-string v1, "\u8fd4\u56de\u7b7e\u540d(encode):"

    const-string v2, "\u8fd4\u56de\u7b7e\u540d(JSONObject):"

    .line 1
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "responseString:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$i;->a:Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;

    invoke-interface {p2, p1, v4, v4, v4}, Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;->onPaymentOrdersNoLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string p1, "sign"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 19
    :try_start_2
    invoke-static {v4, v4, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    const-string v2, "orderNo"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    const-string v3, "notifyUrl"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    const-string v5, "orderInfo"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$i;->a:Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p2, p3, v2, p1, v3}, Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;->onPaymentOrdersNoLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$i;->a:Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v4, v4, v4}, Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;->onPaymentOrdersNoLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 33
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$i;->a:Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;

    const-string p2, "100001"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v4, v4, v4}, Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;->onPaymentOrdersNoLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
