.class public final synthetic Lcom/gpc/ops/r$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/tsh/pay/listener/PaymentItemsListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/ops/r$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gpc/ops/r$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;

    invoke-static {v0, p1, p2, p3}, Lcom/gpc/ops/r;->a(Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
