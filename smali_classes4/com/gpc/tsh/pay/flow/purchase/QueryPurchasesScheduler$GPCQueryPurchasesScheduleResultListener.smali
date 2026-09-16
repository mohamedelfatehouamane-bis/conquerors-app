.class public interface abstract Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$GPCQueryPurchasesScheduleResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCQueryPurchasesScheduleResultListener"
.end annotation


# virtual methods
.method public abstract onQueryPurchasesScheduleResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            ">;)V"
        }
    .end annotation
.end method
