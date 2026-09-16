.class public Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private deliveryState:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

.field private item:Lcom/gpc/tsh/pay/bean/GPCGameItem;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliveryState()Lcom/gpc/tsh/pay/service/PaymentDeliveryState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->deliveryState:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    return-object v0
.end method

.method public getItem()Lcom/gpc/tsh/pay/bean/GPCGameItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->item:Lcom/gpc/tsh/pay/bean/GPCGameItem;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeliveryState(Lcom/gpc/tsh/pay/service/PaymentDeliveryState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->deliveryState:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    return-void
.end method

.method public setItem(Lcom/gpc/tsh/pay/bean/GPCGameItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->item:Lcom/gpc/tsh/pay/bean/GPCGameItem;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/bean/GPCPaymentGatewayResult;->userId:Ljava/lang/String;

    return-void
.end method
