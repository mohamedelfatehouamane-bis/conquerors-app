.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$f;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueriedFinish(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
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

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$f;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/util/List;I)V

    return-void
.end method
