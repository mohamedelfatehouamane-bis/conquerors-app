.class public Lcom/gpc/ops/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/tsh/pay/listener/PaymentItemsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

.field public final synthetic b:Lcom/gpc/ops/r;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/r;Lcom/gpc/tsh/pay/listener/PaymentItemsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/r$a;->b:Lcom/gpc/ops/r;

    iput-object p2, p0, Lcom/gpc/ops/r$a;->a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/gpc/ops/r$a;->a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p2

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/gpc/ops/r;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object p2, p0, Lcom/gpc/ops/r$a;->a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

    invoke-interface {p2, p1, v1, v1}, Lcom/gpc/tsh/pay/listener/PaymentItemsListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/gpc/ops/r;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "responseString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-static {p3}, Lcom/gpc/operations/migrate/bean/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/migrate/bean/GeneralResponse;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/bean/GeneralResponse;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 12
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/bean/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/gpc/ops/r$a;->b:Lcom/gpc/ops/r;

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Lcom/gpc/ops/r;->a(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p2

    .line 14
    iget-object v3, p0, Lcom/gpc/ops/r$a;->b:Lcom/gpc/ops/r;

    invoke-virtual {v3, p3, v2}, Lcom/gpc/ops/r;->b(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p3

    .line 15
    iget-object v2, p0, Lcom/gpc/ops/r$a;->a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/gpc/tsh/pay/listener/PaymentItemsListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/gpc/ops/r$a;->a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

    const-string p2, "5000"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1, v1}, Lcom/gpc/tsh/pay/listener/PaymentItemsListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-static {}, Lcom/gpc/ops/r;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iget-object p1, p0, Lcom/gpc/ops/r$a;->a:Lcom/gpc/tsh/pay/listener/PaymentItemsListener;

    const-string p2, "5001"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v1, v1}, Lcom/gpc/tsh/pay/listener/PaymentItemsListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method
