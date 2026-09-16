.class public Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public associatedPaymentPayload:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssociatedPaymentPayload()Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;->associatedPaymentPayload:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    return-object v0
.end method

.method public getExpiredAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;->a:J

    return-wide v0
.end method

.method public setAssociatedPaymentPayload(Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;->associatedPaymentPayload:Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;

    return-void
.end method

.method public setExpiredAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;->a:J

    return-void
.end method
