.class public interface abstract Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckSubscriptionListener"
.end annotation


# virtual methods
.method public abstract onHasSubscribedByIggId(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
.end method

.method public abstract onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
.end method

.method public abstract onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V
.end method
