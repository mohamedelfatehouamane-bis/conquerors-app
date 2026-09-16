.class public Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;-><init>(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "QueryPurchasesSchedule"

    .line 1
    :try_start_0
    const-string v1, "QueryInventory"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    invoke-static {v1}, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;)Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler$b;->a:Lcom/gpc/sdk/payment/flow/purchase/GPCQueryPurchasesScheduler;

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;->a(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$GPCQueryTransactionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 4
    const-string v2, "occur exception when QueryInventory!"

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
