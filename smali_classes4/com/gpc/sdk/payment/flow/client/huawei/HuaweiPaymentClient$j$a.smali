.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;Lcom/gpc/sdk/error/GPCException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->b:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->a:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iget-object p1, p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->b:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-interface {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->b:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
