.class public final synthetic Lcom/gpc/ops/v$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQueryPurchasesListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/ops/v;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/ops/v;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/ops/v$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/ops/v;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gpc/ops/v$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/ops/v;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/ops/v;->a(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method
