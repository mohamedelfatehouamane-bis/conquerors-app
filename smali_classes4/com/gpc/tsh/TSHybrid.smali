.class public Lcom/gpc/tsh/TSHybrid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TSHybrid"


# instance fields
.field private instance:Lcom/gpc/tsh/TSHybridKotlin;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/TSHybridKotlin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    return-void
.end method


# virtual methods
.method public closePanel()V
    .locals 2

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "closePanel"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v0}, Lcom/gpc/tsh/TSHybridKotlin;->closePanel()V

    return-void
.end method

.method public destroy()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->destroyRepayment()V

    return-void
.end method

.method public registerRepayment(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "registerRepayment with activity"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->registerRepayment(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method public registerRepayment(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    const-string v0, "TSHybrid"

    const-string v1, "registerRepayment"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->registerRepayment(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppearance(Lcom/gpc/tsh/bean/TSHybridAppearance;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v0, p1}, Lcom/gpc/tsh/base/BaseTSHybrid;->setAppearance(Lcom/gpc/tsh/bean/TSHybridAppearance;)V

    return-void
.end method

.method public showClosingAccount(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "showClosingAccount"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "method"

    const-string v2, "delete_account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v1, p1, v0}, Lcom/gpc/tsh/TSHybridKotlin;->showPanel(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public showClosingAccountWithPayload(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "showClosingAccountWithPayload"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "method"

    const-string v2, "delete_account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v1, p1, v0, p2}, Lcom/gpc/tsh/TSHybridKotlin;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public showPanel(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "showPanel"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/tsh/TSHybridKotlin;->showPanel(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public showPanel(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "TSHybrid"

    const-string v1, "showPanel params"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/tsh/TSHybridKotlin;->showPanel(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "showPanelWithPayload"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1, p2}, Lcom/gpc/tsh/TSHybridKotlin;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "TSHybrid"

    const-string v1, "showPanel params with payload"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/tsh/TSHybridKotlin;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public showTicketPanel(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "showTicketPanel"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/tsh/TSHybridKotlin;->showTicketPanel(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public showTicketPanelWithPayload(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "TSHybrid"

    const-string v1, "showTicketPanelWithPayload"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/TSHybrid;->instance:Lcom/gpc/tsh/TSHybridKotlin;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/tsh/TSHybridKotlin;->showTicketPanelWithPayload(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
