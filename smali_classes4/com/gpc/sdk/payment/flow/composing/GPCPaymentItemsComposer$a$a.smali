.class public Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "GPCPaymentItemsComposer"

    const-string v1, "skuDetailsListCacheStrategy.writeCacheIfNeed"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->h:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;->b(Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer;)Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;->writeCacheIfNeed(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->g:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/error/GPCException;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;

    iget-object v1, v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a;->g:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$a$a;->a:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsComposer$GPCPaymentCardsComposedListener;->onPaymentCardsComposed(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :cond_2
    return-void
.end method
