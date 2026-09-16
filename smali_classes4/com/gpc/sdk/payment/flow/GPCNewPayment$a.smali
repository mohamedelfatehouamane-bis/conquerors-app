.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;->a:Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;->a:Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/listener/GPCSubscriptionStateListener;->onGetSubscriptionState(Lcom/gpc/sdk/error/GPCException;Z)V

    return-void
.end method
