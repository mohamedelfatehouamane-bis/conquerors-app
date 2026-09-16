.class public Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

.field public b:Lcom/gpc/sdk/payment/bean/GPCGameItem;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliveryState()Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->a:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    return-object v0
.end method

.method public getItem()Lcom/gpc/sdk/payment/bean/GPCGameItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->b:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setDeliveryState(Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->a:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    return-void
.end method

.method public setItem(Lcom/gpc/sdk/payment/bean/GPCGameItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->b:Lcom/gpc/sdk/payment/bean/GPCGameItem;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentGatewayResult;->c:Ljava/lang/String;

    return-void
.end method
