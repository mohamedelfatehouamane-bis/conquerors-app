.class public Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public state:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResult;->state:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    sget-object v1, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->SUCCESS:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
