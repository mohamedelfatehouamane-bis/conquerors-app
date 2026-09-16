.class public Lcom/gpc/sdk/payment/service/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;DLjava/lang/String;ZLcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$d;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$d;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$d;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$d;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "responseString:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-static {p3}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance p3, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 19
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;

    invoke-direct {v3}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;-><init>()V

    .line 22
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0xb

    if-eq v4, v5, :cond_2

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1

    .line 40
    sget-object v4, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    goto :goto_1

    .line 41
    :cond_1
    sget-object v4, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationDevice:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    goto :goto_1

    .line 42
    :cond_2
    sget-object v4, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationRunOutOfQuota:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    goto :goto_1

    .line 43
    :cond_3
    sget-object v4, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationUser:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    .line 60
    :goto_1
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setLimitation(Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;)V

    .line 61
    const-string v4, "limit"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setLimit(Z)V

    .line 62
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->setMessage(Ljava/lang/String;)V

    .line 64
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_4
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$d;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 69
    :cond_5
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/b$d;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    const-string p2, ""

    invoke-static {p2, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$d;->a:Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;

    const-string p2, "100001"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;->onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :cond_6
    return-void
.end method
