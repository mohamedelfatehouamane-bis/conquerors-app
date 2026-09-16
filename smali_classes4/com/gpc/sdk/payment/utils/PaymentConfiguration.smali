.class public Lcom/gpc/sdk/payment/utils/PaymentConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;


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
    sput-object v0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->d:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    return-void
.end method

.method public static e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->d:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;-><init>()V

    sput-object v0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->d:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->d:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;-><init>(Lcom/gpc/sdk/payment/utils/PaymentConfiguration;I)V

    return-object v0
.end method

.method public declared-synchronized a(Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;)V
    .locals 0

    monitor-enter p0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->c:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;
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

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a:Ljava/lang/String;
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

.method public declared-synchronized b()Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->c:Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->b:Ljava/lang/String;
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

.method public declared-synchronized c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "buy"

    invoke-static {v0, v1}, Lcom/gpc/sdk/utils/common/I18N;->getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->b:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "subscription"

    invoke-static {v0, v1}, Lcom/gpc/sdk/utils/common/I18N;->getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
