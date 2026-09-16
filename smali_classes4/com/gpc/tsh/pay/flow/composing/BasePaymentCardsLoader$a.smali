.class public Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;
.super Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;->a(Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

.field public final synthetic b:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;->b:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    invoke-direct {p0}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    .line 2
    const-string v1, "220101"

    const-string v2, "32"

    invoke-static {v1, v2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method

.method public a(Lcom/gpc/ops/d;)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    new-instance v2, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;

    new-instance v3, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Lcom/gpc/ops/d;->b()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/gpc/ops/d;->a()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/gpc/ops/d;->c()I

    move-result p1

    invoke-direct {v2, v3, v4, p1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method

.method public b(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    .line 2
    const-string v1, "220102"

    const-string v2, "20"

    invoke-static {v1, v2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method

.method public c(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$a;->a:Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;

    .line 2
    const-string v1, "220103"

    const-string v2, "20"

    invoke-static {v1, v2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$GPCPaymentCardsLoadedListener;->onPaymentCardsLoaded(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$c;)V

    return-void
.end method
