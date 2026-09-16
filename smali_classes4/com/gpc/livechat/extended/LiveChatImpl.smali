.class public Lcom/gpc/livechat/extended/LiveChatImpl;
.super Lcom/gpc/operations/base/OperationsSDKBaseModule;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/livechat/LiveChat;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveChat"


# instance fields
.field protected appearance:Lcom/gpc/livechat/bean/LiveChatAppearance;

.field protected webApp:Lcom/gpc/webapp/extended/WebApp;


# direct methods
.method public constructor <init>(Lcom/gpc/webapp/extended/WebApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/base/OperationsSDKBaseModule;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/livechat/extended/LiveChatImpl;->webApp:Lcom/gpc/webapp/extended/WebApp;

    return-void
.end method


# virtual methods
.method public closePanel()V
    .locals 3

    .line 1
    const-string v0, "LiveChat"

    const-string v1, "closePanel"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v1, "ACTION_PANEL_CLOSE"

    const-string v2, "livechat"

    invoke-virtual {v0, v1, v2}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public enableDidReceiveRemoteNotifications(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "m_web_app"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p1, "LiveChat"

    const-string v0, "webAppId is empty"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    const-string v0, "livechat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/livechat/extended/LiveChatImpl;->notificationFactory()Lcom/gpc/ops/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/livechat/extended/LiveChatImpl;->appearance:Lcom/gpc/livechat/bean/LiveChatAppearance;

    invoke-interface {v0, p1, p2, v1}, Lcom/gpc/ops/i;->a(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;Lcom/gpc/livechat/bean/LiveChatAppearance;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "LiveChat"

    const-string v1, "DefaultNotificationFactory"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;

    invoke-direct {v0}, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;-><init>()V

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;->notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V

    return-void
.end method

.method public notificationFactory()Lcom/gpc/ops/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "LiveChat"

    const-string v1, "isReady"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/ops/g;

    invoke-direct {v0}, Lcom/gpc/ops/g;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAppearance(Lcom/gpc/livechat/bean/LiveChatAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/livechat/extended/LiveChatImpl;->appearance:Lcom/gpc/livechat/bean/LiveChatAppearance;

    return-void
.end method

.method public showPanel(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gpc/livechat/extended/LiveChatImpl;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 9
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showPanelWithPayload payload = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveChat"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v1, v0}, Lcom/gpc/operations/utils/APIHelperKt;->livechat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-object v2, p0, Lcom/gpc/livechat/extended/LiveChatImpl;->webApp:Lcom/gpc/webapp/extended/WebApp;

    iget-object v7, p0, Lcom/gpc/livechat/extended/LiveChatImpl;->appearance:Lcom/gpc/livechat/bean/LiveChatAppearance;

    const-string v4, "livechat"

    const/4 v8, 0x2

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/gpc/webapp/extended/WebApp;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V

    return-void
.end method
