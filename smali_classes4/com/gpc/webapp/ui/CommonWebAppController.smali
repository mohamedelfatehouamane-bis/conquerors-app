.class public Lcom/gpc/webapp/ui/CommonWebAppController;
.super Lcom/gpc/operations/base/BaseWebActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonWebViewController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/gpc/webapp/ui/CommonWebAppController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/webapp/ui/CommonWebAppController;->getFinalOriginalURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/gpc/webapp/ui/CommonWebAppController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setOriginalURL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$801(Lcom/gpc/webapp/ui/CommonWebAppController;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/gpc/operations/base/BaseWebActivity;->load()V

    return-void
.end method

.method public static synthetic access$900(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-object p0
.end method

.method private getFinalOriginalURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getOriginalURL()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 14
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->isRepaymentEnable()Z

    move-result v4

    const-string v5, "&"

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    .line 15
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v0, "is_payable=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 19
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "is_payable=0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :goto_2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getPayload()Ljava/util/Map;

    move-result-object v0

    const-string v3, "CommonWebViewController"

    if-eqz v0, :cond_4

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getPayload()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/utils/JsonUtils;->map2JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "payload="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URLEncoder.encode error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_4
    :goto_3
    invoke-static {}, Lcom/gpc/operations/OperationsSDKApplication;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    const-string v0, "&debug=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getFlags()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    .line 45
    const-string p1, "getFinalOriginalURL flags is -1"

    invoke-static {v3, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_7

    .line 50
    const-string v4, "&sso_token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_8

    .line 56
    const-string p1, "&game_id="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 p1, v0, 0x3

    if-nez p1, :cond_9

    .line 62
    const-string p1, "getFinalOriginalURL flags is not sso_token or game_id"

    invoke-static {v3, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static showPanel(Landroid/app/Activity;Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/gpc/webapp/ui/CommonWebAppController;->showPanel(Landroid/content/Context;Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V

    return-void
.end method

.method public static showPanel(Landroid/content/Context;Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string v1, "data_wrapper"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public afterInit()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    new-instance v1, Lcom/gpc/webapp/ui/CommonWebAppController$a;

    invoke-direct {v1, p0}, Lcom/gpc/webapp/ui/CommonWebAppController$a;-><init>(Lcom/gpc/webapp/ui/CommonWebAppController;)V

    invoke-virtual {v0, p0, v1}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->init(Landroid/app/Activity;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V

    return-void
.end method

.method public beforeInit()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    const-string v1, "CommonWebViewController"

    if-nez v0, :cond_0

    .line 2
    const-string v0, "WebViewDataWrapper is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->SOURCE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getOpenSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    const-string v0, "WebViewDataWrapper source is notification"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/OperationsSDK;->isInit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    const-string v0, "WebViewDataWrapper source is notification, but gameId is empty"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/gpc/operations/utils/IntentHelper;->getAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public load()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/gpc/webapp/ui/CommonWebAppController$b;

    invoke-direct {v1, p0}, Lcom/gpc/webapp/ui/CommonWebAppController$b;-><init>(Lcom/gpc/webapp/ui/CommonWebAppController;)V

    invoke-interface {v0, v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/operations/base/BaseWebActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onQueryProducts()V
    .locals 2

    .line 1
    const-string v0, "CommonWebViewController"

    const-string v1, "onQueryProducts"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    new-instance v1, Lcom/gpc/webapp/ui/CommonWebAppController$c;

    invoke-direct {v1, p0}, Lcom/gpc/webapp/ui/CommonWebAppController$c;-><init>(Lcom/gpc/webapp/ui/CommonWebAppController;)V

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->onQueryProducts(Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V

    return-void
.end method

.method public onRepay(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "CommonWebViewController"

    const-string v1, "onRepay"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->repaymentModule()Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/modules/RepaymentModule;->onRepay(Ljava/lang/String;)V

    return-void
.end method
