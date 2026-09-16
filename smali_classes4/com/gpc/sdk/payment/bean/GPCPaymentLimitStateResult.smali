.class public Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLimitation()Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isLimit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->b:Z

    return v0
.end method

.method public setLimit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->b:Z

    return-void
.end method

.method public setLimitation(Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->a:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;->c:Ljava/lang/String;

    return-void
.end method
