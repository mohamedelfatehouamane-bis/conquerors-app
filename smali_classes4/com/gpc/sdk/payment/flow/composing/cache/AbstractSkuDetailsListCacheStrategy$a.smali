.class public Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;->writeCacheIfNeed(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;->b:Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;->b:Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;

    invoke-interface {v0}, Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;->b:Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;->writeCache(Ljava/util/List;)V

    :cond_0
    return-void
.end method
