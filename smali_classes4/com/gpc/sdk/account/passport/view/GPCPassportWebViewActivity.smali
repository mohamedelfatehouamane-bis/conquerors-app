.class public Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;
.super Lcom/gpc/sdk/GPCBaseActivity;
.source "SourceFile"


# static fields
.field public static final FALSE:I = 0x0

.field public static final IS_NEW_USER:Ljava/lang/String; = "is_new_user"

.field public static final QUERY_CODE:Ljava/lang/String; = "code"

.field public static final QUERY_MSG:Ljava/lang/String; = "msg"

.field public static final QUERY_TOKEN:Ljava/lang/String; = "token"

.field public static final SUCCESS_CODE:Ljava/lang/String; = "0"

.field public static final TRUE:I = 0x1

.field public static final e:Ljava/lang/String; = "GPCPassportWebViewActivity"

.field public static final f:Ljava/lang/String; = "passportParamsProxy"


# instance fields
.field public a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

.field public d:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/GPCBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->b(Landroid/webkit/WebResourceRequest;)V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;ILcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    const-string v1, "passportParamsProxy"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getCurrentI18NItem()Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getLocale()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/i18n/GPCI18NItem;->ARB:Lcom/gpc/sdk/i18n/GPCI18NItem;

    invoke-virtual {v1}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 10
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 11
    const-string v0, "KEY_EXCEPTION_CODE"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string p2, "PASSPORT_TOKEN"

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string p2, "GPC_PASSPORT_IS_NEW_USER"

    invoke-virtual {p3, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 8
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "embed/login/index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroid/webkit/WebResourceRequest;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0x4201

    const-string v2, "114107"

    const-string v3, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public handleOnBackPressed()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    const-string v5, ""

    const/4 v6, 0x0

    const/16 v2, 0x4203

    const-string v3, ""

    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/sdk/GPCBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/notification/GPCNotification;

    new-instance v1, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;

    invoke-direct {v1, p1, p2, p3}, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;-><init>(IILandroid/content/Intent;)V

    const-string p1, "activity_result_received"

    invoke-direct {v0, p1, v1}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Lcom/gpc/sdk/GPCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a()V

    .line 4
    sget p1, Lcom/gpc/sdk/misc/R$layout;->gpc_a_misc_activity_passport_webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    sget p1, Lcom/gpc/sdk/misc/R$id;->layout_root:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->b:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/InsetsHelper;->enableEdgeToEdge(Landroid/view/Window;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "passportParamsProxy"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    iput-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    .line 10
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getWebUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->d:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    .line 12
    new-instance p1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {p1}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getIsForAudting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getHeaderBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHeaderViewBackgroundColor(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    const-string v1, "1"

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewNavBarButtonStyle(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    const-string v1, "#FFFFFF"

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewTitleColor(Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;-><init>(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;)V

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewState(Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->d:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/embed/entry?scenario=%s"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioLogin:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    invoke-virtual {v1}, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->getScenario()I

    move-result v1

    iget-object v2, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getScenario()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->d:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/embed/entry?scenario=%s&for_audting=%d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getIsForAudting()Z

    move-result v1

    .line 100
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "sign_in"

    aput-object v5, v4, v3

    aput-object v1, v4, v0

    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_1
    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioBinding:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    invoke-virtual {v1}, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->getScenario()I

    move-result v1

    iget-object v2, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getScenario()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 103
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "bind"

    aput-object v2, v0, v3

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown scenario:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getScenario()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPassportWebViewActivity"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->getProcessingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, p1

    .line 113
    :goto_1
    iget-object v1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v1, v0}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->c:Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;->getCommonWebViewRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 124
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
