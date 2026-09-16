.class public interface abstract Lcom/gpc/sdk/payment/IGPCRepayment;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract initialize(Landroid/app/Activity;Lcom/gpc/sdk/payment/listener/IGPCRepaymentListener;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract queryProducts(Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;)V
.end method

.method public abstract repay(Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;)V
.end method

.method public abstract setRepaymentCompatProxy(Lcom/gpc/sdk/payment/GPCRepaymentCompatProxy;)V
.end method
