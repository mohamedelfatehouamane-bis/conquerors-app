.class public Lcom/gpc/webapp/helper/WebAppIntentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPanel(Landroid/content/Context;Lcom/gpc/operations/notification/NotificationConfig;Lcom/gpc/operations/base/BaseAppearance;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    new-instance v1, Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    invoke-direct {v1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/notification/NotificationConfig;->getWebAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setAppName(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->SOURCE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setOpenSource(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseAppearance;->getBackBtnIcon()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setBackBtnResourceId(I)V

    .line 9
    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseAppearance;->getExitBtnIcon()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setCloseBtnResourceId(I)V

    .line 10
    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setHeaderBarBackgroundColor(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-interface {p1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p0, p2, p1}, Lcom/gpc/operations/utils/APIHelperKt;->livechat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setUrl(Ljava/lang/String;)V

    .line 19
    const-string p0, "data_wrapper"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
