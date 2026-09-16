.class public Lcom/gpc/sdk/payment/service/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->getSamsungOrdersSerialNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$g;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$g;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const-string p2, "responseString:"

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$g;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;->onPaymentItemsOrdersSerialFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string p2, "sn"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object p3, p0, Lcom/gpc/sdk/payment/service/b$g;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;

    invoke-interface {p3, p1, p2}, Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;->onPaymentItemsOrdersSerialFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$g;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;->onPaymentItemsOrdersSerialFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$g;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;

    const-string p2, "100001"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsOrdersSerialListener;->onPaymentItemsOrdersSerialFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
