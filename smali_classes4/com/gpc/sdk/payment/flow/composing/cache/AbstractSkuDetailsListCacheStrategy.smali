.class public abstract Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/composing/cache/ISkuDetailsListCacheStrategy;


# static fields
.field public static final a:Ljava/lang/String; = "AbstractSkuDetailsListCacheStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeCacheIfNeed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy$a;-><init>(Lcom/gpc/sdk/payment/flow/composing/cache/AbstractSkuDetailsListCacheStrategy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "AbstractSkuDetailsListCacheStrategy"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
