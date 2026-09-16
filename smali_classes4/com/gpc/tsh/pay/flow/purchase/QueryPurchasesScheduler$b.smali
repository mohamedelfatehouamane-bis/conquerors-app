.class public Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;->a:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;-><init>(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "QueryPurchasesSchedule"

    .line 1
    :try_start_0
    const-string v1, "QueryInventory"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;->a:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    invoke-static {v1}, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;->a(Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;)Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler$b;->a:Lcom/gpc/tsh/pay/flow/purchase/QueryPurchasesScheduler;

    invoke-virtual {v1, v2}, Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier;->a(Lcom/gpc/tsh/pay/flow/purchase/TransactionQuerier$GPCQueryTransactionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 4
    const-string v2, "occur exception when QueryInventory!"

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
