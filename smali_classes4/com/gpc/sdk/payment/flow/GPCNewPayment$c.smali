.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueriedFinish(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "subscribeTo onQueriedFinish"

    const-string v0, "GPCNewPayment"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    const-string p1, "subscribeTo user purchases is null."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "subscribeTo user purchases size is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "item not found."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    const-string p2, "120316"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;->a:Ljava/lang/String;

    new-instance v2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$c$a;-><init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment$c;Lcom/gpc/sdk/payment/bean/GPCGameItem;Ljava/util/List;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;)V

    return-void
.end method
