.class public Lcom/gpc/tsh/TSHybridKotlin;
.super Lcom/gpc/tsh/base/BaseTSHybrid;
.source "SourceFile"


# instance fields
.field private final webApp:Lcom/gpc/webapp/extended/WebApp;


# direct methods
.method public constructor <init>(Lcom/gpc/webapp/extended/WebApp;)V
    .locals 1

    const-string v0, "webApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/gpc/tsh/base/BaseTSHybrid;-><init>()V

    iput-object p1, p0, Lcom/gpc/tsh/TSHybridKotlin;->webApp:Lcom/gpc/webapp/extended/WebApp;

    return-void
.end method


# virtual methods
.method public final closePanel()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    .line 2
    const-string v1, "ACTION_PANEL_CLOSE"

    const-string v2, "ticket"

    invoke-virtual {v0, v1, v2}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final getWebApp()Lcom/gpc/webapp/extended/WebApp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/TSHybridKotlin;->webApp:Lcom/gpc/webapp/extended/WebApp;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public final showClosingAccount(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "BaseTSHybrid"

    const-string v1, "showClosingAccount"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    const-string v1, "method"

    const-string v2, "delete_account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/gpc/tsh/TSHybridKotlin;->showPanel(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public final showPanel(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/gpc/tsh/TSHybridKotlin;->showPanel(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public final showPanel(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
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

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/tsh/TSHybridKotlin;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
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

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showPanelWithPayload params = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTSHybrid"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showPanelWithPayload payload = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/gpc/operations/service/upload/UploadFileManager;->Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;->sharedInstance()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/UploadFileManager;->clear()V

    .line 6
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1, v0, p2}, Lcom/gpc/operations/utils/APIHelperKt;->tshWebTicket(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 11
    iget-object v1, p0, Lcom/gpc/tsh/TSHybridKotlin;->webApp:Lcom/gpc/webapp/extended/WebApp;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/gpc/tsh/base/BaseTSHybrid;->appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;

    const-string v3, "ticket"

    const/4 v7, 0x2

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/gpc/webapp/extended/WebApp;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V

    :cond_0
    return-void
.end method

.method public final showTicketPanel(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticketId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/tsh/TSHybridKotlin;->showTicketPanelWithPayload(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final showTicketPanelWithPayload(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticketId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showTicketPanelWithPayload payload = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTSHybrid"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/service/upload/UploadFileManager;->Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;->sharedInstance()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/UploadFileManager;->clear()V

    .line 4
    new-instance v0, Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    invoke-direct {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;-><init>()V

    .line 5
    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setAppName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setPayload(Ljava/util/Map;)V

    .line 7
    iget-object p3, p0, Lcom/gpc/tsh/base/BaseTSHybrid;->appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/gpc/operations/base/BaseAppearance;->getBackBtnIcon()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setBackBtnResourceId(I)V

    .line 8
    iget-object p3, p0, Lcom/gpc/tsh/base/BaseTSHybrid;->appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/gpc/operations/base/BaseAppearance;->getExitBtnIcon()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setCloseBtnResourceId(I)V

    .line 9
    iget-object p3, p0, Lcom/gpc/tsh/base/BaseTSHybrid;->appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/gpc/operations/base/BaseAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v1

    :goto_1
    invoke-virtual {v0, p3}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setHeaderBarBackgroundColor(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object p3

    .line 12
    invoke-interface {p3}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-static {p1, p3, p2, v1}, Lcom/gpc/operations/utils/APIHelperKt;->tsxhTicketDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setUrl(Ljava/lang/String;)V

    .line 15
    invoke-static {p1, v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->showPanel(Landroid/app/Activity;Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V

    return-void
.end method
