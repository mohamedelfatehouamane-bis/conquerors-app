.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskResultListener<",
        "Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/error/GPCException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;->a:Lcom/gpc/sdk/error/GPCException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;->b:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;->a:Lcom/gpc/sdk/error/GPCException;

    .line 4
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;)I

    move-result p2

    .line 5
    const-string v0, "120307"

    const-string v1, "20"

    invoke-static {v0, v1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    sget-object v0, Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$i;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;)V

    return-void
.end method
