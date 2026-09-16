.class public Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnPaymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/samsung/a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayment(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)V
    .locals 4

    const-string v0, "10"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->dump()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungPaymentClient"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Samsung pay queryPurchases IAP_ERROR_NONE"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Samsung pay queryPurchases ===="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    invoke-static {v1, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 11
    :cond_0
    const-string p1, "passThroughParam is mismatched!"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    const-string p2, "120908"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Samsung pay queryPurchases IAP_PAYMENT_IS_CANCELED "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    const-string p2, "-3"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p2

    const/16 v2, -0x442

    if-ne p2, v2, :cond_3

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Samsung pay queryPurchases IAP_ERROR_ANOTHER_OPERATION_RUNNING "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    const-string p2, "-4"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 25
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Samsung pay queryPurchases Other Error "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p1

    .line 29
    const-string v2, "120907"

    invoke-static {v2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a$a;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    const-string p2, "120901"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
