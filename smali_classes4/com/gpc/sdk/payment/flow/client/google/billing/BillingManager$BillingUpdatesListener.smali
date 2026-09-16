.class public interface abstract Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;
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

.method public abstract onPurchasesUpdated(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation
.end method
