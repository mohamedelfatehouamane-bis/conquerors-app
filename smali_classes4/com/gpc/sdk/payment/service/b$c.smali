.class public Lcom/gpc/sdk/payment/service/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->antiAddiction(Ljava/lang/String;ILjava/lang/String;DDDLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$c;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const-string p2, "5001"

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "listener is null."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;)V

    return-void

    .line 12
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;->parseFromJson(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;

    move-result-object p3

    if-nez p3, :cond_2

    .line 16
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Parsing data error"

    invoke-static {p1, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;)V

    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    invoke-interface {v0, p1, p3}, Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;)V

    return-void

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    invoke-virtual {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "unknown error"

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    const-string p2, "-1"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;)V

    goto :goto_0

    .line 32
    :catch_1
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Parsing basics data error"

    invoke-static {p1, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$c;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCAntiAddictionResult;)V

    :goto_0
    return-void
.end method
