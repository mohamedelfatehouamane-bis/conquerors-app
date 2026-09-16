.class public Lcom/gpc/sdk/payment/service/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/PaymentItemsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$f;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCacheData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    invoke-interface {p2, p1, v1, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->b:Lcom/gpc/sdk/payment/service/b;

    invoke-virtual {p2, v0, v2}, Lcom/gpc/sdk/payment/service/b;->a(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p2

    .line 11
    iget-object v3, p0, Lcom/gpc/sdk/payment/service/b$f;->b:Lcom/gpc/sdk/payment/service/b;

    invoke-virtual {v3, v0, v2}, Lcom/gpc/sdk/payment/service/b;->b(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    invoke-interface {v2, p1, p2, v0}, Lcom/gpc/sdk/payment/listener/PaymentItemsListener;->onCompleteCacheData(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    invoke-interface {p2, p1, v1, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 17
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    invoke-interface {p2, p1, v1, v1}, Lcom/gpc/sdk/payment/listener/PaymentItemsListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p4}, Lcom/gpc/sdk/payment/service/b$f;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseString:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$f;->b:Lcom/gpc/sdk/payment/service/b;

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/gpc/sdk/payment/service/b;->a(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p2

    .line 13
    iget-object v1, p0, Lcom/gpc/sdk/payment/service/b$f;->b:Lcom/gpc/sdk/payment/service/b;

    invoke-virtual {v1, p3, v0}, Lcom/gpc/sdk/payment/service/b;->b(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p3

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$f;->a:Lcom/gpc/sdk/payment/listener/PaymentItemsListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/listener/PaymentItemsListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/gpc/sdk/payment/service/b$f;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    const-string p1, "120103"

    const-string p2, "20"

    invoke-static {p1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/gpc/sdk/payment/service/b$f;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
