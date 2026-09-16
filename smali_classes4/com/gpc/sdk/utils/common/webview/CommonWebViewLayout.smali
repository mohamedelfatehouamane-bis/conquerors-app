.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;
.implements Lcom/gpc/sdk/GPCWebViewLayout;
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# static fields
.field public static final ACTIVITY_RESULT_CODE_CHOOSE_FILE_V1:I = 0x4a81

.field public static final ACTIVITY_RESULT_CODE_CHOOSE_FILE_V2:I = 0x4a82

.field public static final NAVBAR_BUTTON_STYLE_BLACK:Ljava/lang/String; = "0"

.field public static final NAVBAR_BUTTON_STYLE_WHITE:Ljava/lang/String; = "1"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field protected btnBack:Landroid/widget/ImageView;

.field protected btnClose:Landroid/widget/ImageView;

.field protected btnHome:Landroid/widget/ImageView;

.field private btnReload:Landroid/widget/TextView;

.field private chooseFileCallbackV1:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private chooseFileCallbackV2:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private closeButtonDefaultBehavior:Z

.field private httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

.field private keyboardUtils:Lcom/gpc/util/KeyboardUtils;

.field private layoutError:Landroid/widget/RelativeLayout;

.field private layoutRoot:Landroid/widget/RelativeLayout;

.field private layoutTitle:Landroid/widget/LinearLayout;

.field private layoutWebView:Landroid/widget/RelativeLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private taskHandler:Landroid/os/Handler;

.field private tvReloadFailed:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private viewPlaceholder:Landroid/view/View;

.field private webLoadState:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

.field private webView:Landroid/webkit/WebView;

.field private webViewState:Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

.field private webViewTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, "CommonWebViewLayout"

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->IDLE:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webLoadState:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->closeButtonDefaultBehavior:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewTag:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewTag:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    .line 43
    new-instance v0, Lcom/gpc/util/KeyboardUtils;

    invoke-direct {v0, p1}, Lcom/gpc/util/KeyboardUtils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->keyboardUtils:Lcom/gpc/util/KeyboardUtils;

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->taskHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->initWebView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->closeButtonDefaultBehavior:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->updateWebViewState(Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewState:Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/utils/common/webview/WebLoadState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webLoadState:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->viewPlaceholder:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setNavBarButtonColor(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setNavBarVisible(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->showErrorView()V

    return-void
.end method

.method public static synthetic access$602(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV1:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV2:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV2:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private getProcessingHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-udid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getUIID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-uiid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->getJSBridgeInHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->getJSBridgeInHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->httpHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private initRTLUI()V
    .locals 2

    .line 2
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

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v1, Lcom/gpc/sdk/R$layout;->gpc_a_common_webview:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    sget v0, Lcom/gpc/sdk/R$id;->layout_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutRoot:Landroid/widget/RelativeLayout;

    .line 3
    sget v0, Lcom/gpc/sdk/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->viewPlaceholder:Landroid/view/View;

    .line 4
    sget v0, Lcom/gpc/sdk/R$id;->layout_title_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutTitle:Landroid/widget/LinearLayout;

    .line 5
    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v0, Lcom/gpc/sdk/R$id;->webview_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutWebView:Landroid/widget/RelativeLayout;

    .line 8
    sget v0, Lcom/gpc/sdk/R$id;->webview_rl_error:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutError:Landroid/widget/RelativeLayout;

    .line 9
    sget v0, Lcom/gpc/sdk/R$id;->webview_web:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    .line 10
    sget v0, Lcom/gpc/sdk/R$id;->webview_btn_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    .line 11
    sget v0, Lcom/gpc/sdk/R$id;->webview_btn_close:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    .line 12
    sget v0, Lcom/gpc/sdk/R$id;->webview_btn_home:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    .line 13
    sget v0, Lcom/gpc/sdk/R$id;->webview_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->tvTitle:Landroid/widget/TextView;

    .line 14
    sget v0, Lcom/gpc/sdk/R$id;->webview_content_load_progress:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 15
    sget v0, Lcom/gpc/sdk/R$id;->webview_text_reload:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->tvReloadFailed:Landroid/widget/TextView;

    .line 16
    sget v0, Lcom/gpc/sdk/R$id;->webview_btn_reload:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnReload:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnReload:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v2, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_radius_100:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v2, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_radius_100:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 28
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnReload:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnReload:Landroid/widget/TextView;

    const-string v1, "gpc_a_webview_reload"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->tvReloadFailed:Landroid/widget/TextView;

    const-string v1, "gpc_a_webview_load_failed"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    invoke-static {v0, v1}, Lcom/gpc/util/InsetsHelper;->applyRootViewInsets(Landroid/view/View;Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;)V

    .line 53
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->initRTLUI()V

    return-void
.end method

.method private initWebView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    .line 84
    new-instance v1, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v3, v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;)V

    iput-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    .line 85
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 98
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->getJSNameSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->getJSBridgeInUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gpc/util/UserAgentHelperKt;->generateWebUA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 193
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, "onActivityResult: uris="

    .line 1
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x4a82

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV2:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v1, "chooseFileCallback is null"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v1

    .line 11
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v0, "null"

    goto :goto_0

    .line 12
    :cond_1
    array-length v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV2:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 14
    iput-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV2:Landroid/webkit/ValueCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v3, "chooseFileCallback Exception."

    invoke-static {v1, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iput-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV2:Landroid/webkit/ValueCallback;

    :cond_2
    const/16 v0, 0x4a81

    if-ne p1, v0, :cond_6

    .line 53
    :try_start_1
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV1:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string p2, "chooseFileCallbackV1 is null"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    move-object p1, v2

    .line 58
    :goto_2
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV1:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 59
    iput-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV1:Landroid/webkit/ValueCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 61
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string p3, "chooseFileCallbackV1 Exception."

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    iput-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->chooseFileCallbackV1:Landroid/webkit/ValueCallback;

    :cond_6
    :goto_3
    return-void
.end method

.method private parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string p2, "parseResult resultCode is not RESULT_OK"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    new-array p2, p2, [Landroid/net/Uri;

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 17
    new-array p1, p1, [Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v0

    return-object p1

    :cond_3
    return-object v1
.end method

.method private scrollToTop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v1, "scrollToTop"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->scrollToTop()V

    return-void
.end method

.method private setNavBarButtonColor(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v1, "setNavBarButtonColor"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private setNavBarVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutTitle:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutTitle:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showErrorView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutError:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutError:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showWebView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutError:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateWebViewState(Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webLoadState:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->showLoadingView()V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->showErrorView()V

    return-void

    .line 6
    :cond_1
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    if-ne p1, v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->showWebView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public GetLayoutView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public cancelStopLoadTask()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v2, "cancelStopLoadTask"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getProcessingURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->getJSBridgeInQueries()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getProcessingURL jsBridgeInQueries:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    aget-object p1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goBackClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webLoadState:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    invoke-direct {p0, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->updateWebViewState(Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->existJSBridgeV1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webLoadState:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->goBack()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->onClose()V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->goBack()V

    return-void
.end method

.method synthetic lambda$initView$0$com-gpc-sdk-utils-common-webview-CommonWebViewLayout(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->scrollToTop()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->httpHeaders:Ljava/util/Map;

    .line 4
    sget-object p2, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    invoke-direct {p0, p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->updateWebViewState(Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->getProcessingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->getProcessingHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->stopLoadIfNeedByTimeout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAttachedToWindow :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "activity_result_received"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->keyboardUtils:Lcom/gpc/util/KeyboardUtils;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$a;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/gpc/util/KeyboardUtils;->addOnSoftKeyBoardVisibleListener(Lcom/gpc/util/KeyboardUtils$KeyboardListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/gpc/sdk/R$id;->webview_btn_back:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->goBackClick()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/gpc/sdk/R$id;->webview_btn_close:I

    if-ne v0, v1, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->closeButtonDefaultBehavior:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->sendCloseButtonDefaultBehaviourResponser()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->closeButtonDefaultBehavior:Z

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->onClose()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/gpc/sdk/R$id;->webview_btn_reload:I

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->reload()V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/gpc/sdk/R$id;->webview_btn_home:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHomePageHidden(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->reload()V

    :cond_4
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->javaScriptHandler:Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->onClose()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewState:Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;->closeButtonClickListener()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDetachedFromWindow :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "activity_result_received"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->keyboardUtils:Lcom/gpc/util/KeyboardUtils;

    invoke-virtual {v0}, Lcom/gpc/util/KeyboardUtils;->removeOnSoftKeyBoardVisibleListener()V

    return-void
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->getRequestCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/ActivityResultWrapper;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public reload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->httpHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    invoke-direct {p0, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->updateWebViewState(Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v2, "stopLoading"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setBackBtnIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setBackButtonHidden(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setBackButtonHidden isHidden:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCloseBtnIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setCloseButtonHidden(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCloseButtonHidden isHidden:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setHeaderViewBackgroundColor(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setHeaderViewBackgroundColor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->layoutTitle:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v1, "setHeaderViewBackgroundColor"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setHomePageHidden(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v0, "setHomePageHidden btnHome is null"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRippleColor(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_radius_100:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_radius_100:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->activity:Landroid/app/Activity;

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnReload:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWebViewNavBarButtonStyle(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_icon_webview_back_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_icon_webview_close_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :try_start_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    const-string p1, "#333333"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 10
    :cond_0
    const-string p1, "#FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v1, "setWebViewNavBarButtonStyle"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setWebViewState(Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->webViewState:Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    return-void
.end method

.method public setWebViewTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setWebViewTitleColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->tvTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v1, "setWebViewTitleColor"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public stopLoadIfNeedByTimeout()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->taskHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->TAG:Ljava/lang/String;

    const-string v2, "stopLoadByTimeout"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
