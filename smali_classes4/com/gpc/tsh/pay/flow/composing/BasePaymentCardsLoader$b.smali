.class public abstract Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/listener/PaymentItemsAndUserLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract a(Lcom/gpc/ops/d;)V
.end method

.method public abstract b(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public abstract c(Lcom/gpc/operations/migrate/error/GPCException;)V
.end method

.method public final d(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "BasePaymentCardsLoader"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1770

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1389

    if-eq v0, v1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;->c(Lcom/gpc/operations/migrate/error/GPCException;)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;->b(Lcom/gpc/operations/migrate/error/GPCException;)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;->a(Lcom/gpc/operations/migrate/error/GPCException;)V

    :goto_1
    return-void
.end method

.method public onPaymentItemsLoadFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/ops/d;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;->d(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/tsh/pay/flow/composing/BasePaymentCardsLoader$b;->a(Lcom/gpc/ops/d;)V

    return-void
.end method
