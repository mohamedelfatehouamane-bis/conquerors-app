.class public Lcom/gpc/sdk/payment/flow/client/samsung/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/samsung/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/samsung/a;->purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/samsung/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/samsung/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Samsung pay orderNumber:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SamsungPaymentClient"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    invoke-static {p1}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->a:Ljava/lang/String;

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/flow/client/samsung/a$a$a;-><init>(Lcom/gpc/sdk/payment/flow/client/samsung/a$a;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->startPayment(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/iap/lib/listener/OnPaymentListener;)V

    return-void

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/samsung/a$a;->b:Lcom/gpc/sdk/payment/flow/client/samsung/a;

    const-string p2, "120904"

    const-string v0, "20"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/samsung/a;->a(Lcom/gpc/sdk/payment/flow/client/samsung/a;Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
