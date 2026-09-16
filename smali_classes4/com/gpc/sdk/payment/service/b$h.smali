.class public Lcom/gpc/sdk/payment/service/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->getWeChatOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$h;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$h;->a:Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    const-string p2, ""

    const-string v0, "responseString:"

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$h;->a:Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;

    invoke-interface {p2, p1, v3, v2}, Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;->onPaymentLoadDataFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    iget-object p3, p0, Lcom/gpc/sdk/payment/service/b$h;->a:Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p3, v0, v1, p1}, Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;->onPaymentLoadDataFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getError()Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->getMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, p2

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$h;->a:Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1, v3, p3}, Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;->onPaymentLoadDataFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$h;->a:Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;

    const-string p2, "100001"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v3, v2}, Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;->onPaymentLoadDataFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void
.end method
