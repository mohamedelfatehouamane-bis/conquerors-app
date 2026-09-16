.class public interface abstract Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCQueryPurchasesScheduleResultListener"
.end annotation


# virtual methods
.method public abstract onQueryPurchasesScheduleResult(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation
.end method
