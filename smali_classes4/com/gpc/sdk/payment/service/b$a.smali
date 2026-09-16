.class public Lcom/gpc/sdk/payment/service/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$a;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$a;->a:Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const-string p2, "state"

    .line 1
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$a;->a:Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;

    invoke-direct {p1}, Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;-><init>()V

    .line 13
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    const-string p3, "paid"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;->setPaid(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;->setPaid(Z)V

    .line 22
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$a;->a:Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;->onSuccess(Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;)V

    return-void

    .line 25
    :cond_3
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$a;->a:Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$a;->a:Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;

    const-string p2, "100001"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/payment/listener/PaymentQRWaitingForPayListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
