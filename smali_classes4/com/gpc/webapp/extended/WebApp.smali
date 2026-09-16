.class public Lcom/gpc/webapp/extended/WebApp;
.super Lcom/gpc/operations/base/OperationsSDKBaseModule;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebApp"

.field public static final WEB_APP_ID:Ljava/lang/String; = "m_web_app"


# instance fields
.field private final registeredWebApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/base/OperationsSDKBaseModule;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/webapp/extended/WebApp;->registeredWebApps:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    const-string p1, "WebApp"

    const-string v0, "webAppId is empty"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public enableNotifyWebAppData(Ljava/util/Map;)Z
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
    iget-object v0, p0, Lcom/gpc/webapp/extended/WebApp;->registeredWebApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public enableTriggerNoticeHub(Ljava/util/Map;)Z
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
    iget-object v0, p0, Lcom/gpc/webapp/extended/WebApp;->registeredWebApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRegisteredWebApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/extended/WebApp;->registeredWebApps:Ljava/util/List;

    return-object v0
.end method

.method public notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;

    invoke-direct {v0}, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;->notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V

    return-void
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/base/BaseAppearance;",
            "I)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    invoke-direct {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setAppName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setHomeUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p7}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setFlags(I)V

    if-nez p5, :cond_0

    .line 8
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 10
    :cond_0
    invoke-virtual {v0, p5}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setPayload(Ljava/util/Map;)V

    if-eqz p6, :cond_1

    .line 12
    invoke-virtual {p6}, Lcom/gpc/operations/base/BaseAppearance;->getBackBtnIcon()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setBackBtnResourceId(I)V

    .line 13
    invoke-virtual {p6}, Lcom/gpc/operations/base/BaseAppearance;->getExitBtnIcon()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setCloseBtnResourceId(I)V

    .line 14
    invoke-virtual {p6}, Lcom/gpc/operations/base/BaseAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setHeaderBarBackgroundColor(Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-static {p1, v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->showPanel(Landroid/content/Context;Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V

    return-void
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/base/BaseAppearance;",
            "I)V"
        }
    .end annotation

    move-object v4, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/webapp/extended/WebApp;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V

    return-void
.end method

.method public openWithPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/webapp/bean/WebAppAppearance;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/webapp/bean/WebAppAppearance;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "WebApp"

    const-string p2, "openWithPath path is empty"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    const-string v0, "goto"

    invoke-static {v0}, Lcom/gpc/operations/utils/APIHelperKt;->getWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/webapp/extended/WebApp;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V

    return-void
.end method

.method public registerWebApp(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WebApp"

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "registerWebApp webAppId is empty"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/webapp/extended/WebApp;->registeredWebApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-string p1, "registerWebApp webAppId already registered"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/webapp/extended/WebApp;->registeredWebApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
