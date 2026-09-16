.class public interface abstract Lcom/gpc/tsh/pay/IRepayment;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract initialize(Landroid/app/Activity;Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract queryProducts(Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;)V
.end method

.method public abstract repay(Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
.end method

.method public abstract setRepaymentCompatProxy(Lcom/gpc/tsh/pay/RepaymentCompatProxy;)V
.end method
