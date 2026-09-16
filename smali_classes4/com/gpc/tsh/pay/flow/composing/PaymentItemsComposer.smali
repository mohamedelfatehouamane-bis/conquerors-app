.class public Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "PaymentItemsComposer"


# instance fields
.field public a:Lcom/gpc/ops/n;

.field public b:Lcom/gpc/tsh/pay/bean/PaymentType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->b:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 3
    new-instance v0, Lcom/gpc/ops/n;

    invoke-direct {v0, p1, p2}, Lcom/gpc/ops/n;-><init>(Landroid/app/Activity;Lcom/gpc/tsh/pay/bean/PaymentType;)V

    iput-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a:Lcom/gpc/ops/n;

    .line 4
    invoke-virtual {v0, p0}, Lcom/gpc/ops/n;->init(Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientInitializeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;Ljava/util/List;Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "PaymentItemsComposer"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p0, p2, p1}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;->onPaymentCardsComposed(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSkuDetailsResponse skuDetailsList:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_1
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;->onPaymentCardsComposed(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a:Lcom/gpc/ops/n;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentItemsComposer destroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a:Lcom/gpc/ops/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentItemsComposer"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a:Lcom/gpc/ops/n;

    invoke-virtual {v0}, Lcom/gpc/ops/n;->destroy()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->b(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;)V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer;->a:Lcom/gpc/ops/n;

    new-instance v2, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, v0}, Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/tsh/pay/flow/composing/PaymentItemsComposer$GPCPaymentCardsComposedListener;Ljava/util/List;)V

    invoke-virtual {v1, p2, p1, v2}, Lcom/gpc/ops/n;->querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void
.end method

.method public onInitialized(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 0

    return-void
.end method
