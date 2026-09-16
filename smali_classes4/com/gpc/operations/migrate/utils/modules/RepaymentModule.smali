.class public Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "RepaymentModule"


# instance fields
.field private activity:Landroid/app/Activity;

.field private committer:Lcom/gpc/ops/v;

.field private repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyRepayment()V
    .locals 2

    .line 1
    const-string v0, "RepaymentModule"

    const-string v1, "GPCBridgeDispatcher repaymentv3 destroy!"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->release()V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    invoke-interface {v0}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->destroy()V

    .line 5
    iput-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->activity:Landroid/app/Activity;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCommitter()Lcom/gpc/ops/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->committer:Lcom/gpc/ops/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/ops/v;

    invoke-direct {v0}, Lcom/gpc/ops/v;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->committer:Lcom/gpc/ops/v;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->committer:Lcom/gpc/ops/v;

    return-object v0
.end method

.method public getRepayment()Lcom/gpc/tsh/bridge/IBridgeRepayment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V
    .locals 2

    const-string v0, "RepaymentModule"

    if-nez p1, :cond_0

    .line 1
    const-string p1, "activity is null"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->isRepaymentEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    const-string p1, "repayment is not enabled"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->init(Landroid/app/Activity;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V

    return-void
.end method

.method public isRepaymentEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "RepaymentModule"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->isRepaymentEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    const-string p1, "repayment is not enabled"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    invoke-interface {v1, p1, p2, p3}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string p2, "repayment error."

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->committer:Lcom/gpc/ops/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gpc/ops/v;->b()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->destroyRepayment()V

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    return-void
.end method

.method public onQueryProducts(Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V
    .locals 2

    const-string v0, "RepaymentModule"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->isRepaymentEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    const-string p1, "repayment is not enabled"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    invoke-interface {v1, p1}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->queryProducts(Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string v1, "repayment error."

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRepay(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RepaymentModule"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->isRepaymentEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    const-string p1, "repayment is not enabled"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    invoke-interface {v1, p1}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->repay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string v1, "repayment error."

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerRepayment(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->activity:Landroid/app/Activity;

    .line 2
    invoke-virtual {p0, p2}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->registerRepayment(Ljava/lang/Object;)V

    return-void
.end method

.method public registerRepayment(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "RepaymentModule"

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->destroy()V

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 9
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 10
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 11
    const-string v5, "IRepayment"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    const-string v1, "register v3 by interface"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/gpc/tsh/bridge/RepaymentV3;

    invoke-direct {v1, p1}, Lcom/gpc/tsh/bridge/RepaymentV3;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Repayment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    const-string v1, "register v3"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/gpc/tsh/bridge/RepaymentV3;

    invoke-direct {v0, p1}, Lcom/gpc/tsh/bridge/RepaymentV3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    goto :goto_1

    .line 24
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the current repayment is error,the classname is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public releaseRepayment()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "RepaymentModule"

    const-string v1, "GPCBridgeDispatcher repaymentv3 release!"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->repayment:Lcom/gpc/tsh/bridge/IBridgeRepayment;

    invoke-interface {v0}, Lcom/gpc/tsh/bridge/IBridgeRepayment;->release()V

    :cond_0
    return-void
.end method
