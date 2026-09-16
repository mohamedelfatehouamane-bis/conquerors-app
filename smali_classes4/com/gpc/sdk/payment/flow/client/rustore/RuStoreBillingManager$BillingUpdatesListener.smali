.class public interface abstract Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager$BillingUpdatesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/client/rustore/RuStoreBillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingUpdatesListener"
.end annotation


# virtual methods
.method public abstract onBillingClientSetupFail()V
.end method

.method public abstract onBillingClientSetupFinished()V
.end method

.method public abstract onConsumeFinished(Ljava/lang/String;I)V
.end method

.method public abstract onPurchasesUpdated(ILru/rustore/sdk/pay/model/ProductPurchaseResult;)V
.end method
