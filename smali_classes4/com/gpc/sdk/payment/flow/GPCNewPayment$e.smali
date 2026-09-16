.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/GPCSubscriptionAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;ZLcom/gpc/sdk/payment/service/bean/GPCRequestRetryProfile;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    const-string p3, "10"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->a:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->b:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;ZLcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    const-string p2, "120305"

    const v1, 0xde6fd

    invoke-static {p2, p3, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$e;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    const-string p2, "120310"

    const v1, 0xde6fe

    invoke-static {p2, p3, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void
.end method
