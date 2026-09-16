.class public Lcom/gpc/tsh/helper/TSHIntentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TSHIntentHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTicketPanel(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/tsh/bean/TSHybridAppearance;)Landroid/content/Intent;
    .locals 3

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
    const-string v2, "ticket"

    invoke-virtual {v1, v2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setAppName(Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->SOURCE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setOpenSource(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseAppearance;->getBackBtnIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setBackBtnResourceId(I)V

    .line 9
    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseAppearance;->getExitBtnIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setCloseBtnResourceId(I)V

    .line 10
    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseAppearance;->getHeaderBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setHeaderBarBackgroundColor(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object p2

    invoke-interface {p2}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    .line 14
    invoke-static {p0, p2, p1, v2}, Lcom/gpc/operations/utils/APIHelperKt;->tsxhTicketDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v1, p0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->setUrl(Ljava/lang/String;)V

    .line 17
    const-string p0, "data_wrapper"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
