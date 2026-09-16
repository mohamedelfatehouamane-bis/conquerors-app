.class public Lcom/gpc/tsh/pay/utils/PaymentConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/utils/PaymentLocalize;


# static fields
.field public static a:Lcom/gpc/tsh/pay/utils/PaymentConfiguration;


# instance fields
.field protected gameItemDefaultPriceTagText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->a:Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    return-void
.end method

.method public static b()Lcom/gpc/tsh/pay/utils/PaymentConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->a:Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    invoke-direct {v0}, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;-><init>()V

    sput-object v0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->a:Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->a:Lcom/gpc/tsh/pay/utils/PaymentConfiguration;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->gameItemDefaultPriceTagText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getGameItemDefaultPriceTagText()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->gameItemDefaultPriceTagText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->gameItemDefaultPriceTagText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gpc/tsh/pay/utils/PaymentConfiguration;->gameItemDefaultPriceTagText:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, "buy"

    invoke-static {v0, v1}, Lcom/gpc/tsh/pay/utils/I18N;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
