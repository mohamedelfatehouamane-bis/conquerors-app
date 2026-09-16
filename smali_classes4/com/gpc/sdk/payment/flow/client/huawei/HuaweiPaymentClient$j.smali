.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->b:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;

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
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;->c:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    new-instance v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j$a;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;Lcom/gpc/sdk/error/GPCException;)V

    const/4 p1, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    return-void
.end method
