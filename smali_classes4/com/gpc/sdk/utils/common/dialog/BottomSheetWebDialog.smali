.class public Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;
.super Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BottomSheetWebDialog"


# instance fields
.field private btnReload:Landroid/widget/TextView;

.field private ivBack:Landroid/widget/ImageView;

.field private ivClose:Landroid/widget/ImageView;

.field private layoutError:Landroid/widget/RelativeLayout;

.field private layoutLoading:Landroid/widget/RelativeLayout;

.field private mask:Landroid/view/View;

.field private originalUrl:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvLoadErrorTip:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private webState:Lcom/gpc/sdk/utils/common/webview/WebState;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    sget-object p1, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;)Lcom/gpc/sdk/utils/common/webview/WebState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;Lcom/gpc/sdk/utils/common/webview/WebState;)Lcom/gpc/sdk/utils/common/webview/WebState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->updateBackUIState()V

    return-void
.end method

.method public static synthetic access$200(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->updateUIByWebState()V

    return-void
.end method

.method public static synthetic access$300(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
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
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method private initWebView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 9
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/gpc/util/UserAgentHelperKt;->generateWebUA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog$a;-><init>(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog$2;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog$2;-><init>(Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private setDecorViewRTL()V
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
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method private setRippleUI()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_radius_100:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_radius_100:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 8
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->btnReload:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showErrorView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutLoading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutError:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSuccessfulView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutLoading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBackUIState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateUIByWebState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->showLoadingView()V

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebState;->SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebState;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->showSuccessfulView()V

    return-void

    .line 11
    :cond_1
    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebState;

    if-ne v0, v1, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->showErrorView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/sdk/R$layout;->dialog_bottom_sheet:I

    return v0
.end method

.method public handleOnBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->iv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->tvTitle:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivClose:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->rl_load_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutError:Landroid/widget/RelativeLayout;

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->tv_load_error_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->tvLoadErrorTip:Landroid/widget/TextView;

    .line 7
    const-string v1, "gpc_a_webview_load_failed"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->bt_reload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->btnReload:Landroid/widget/TextView;

    .line 9
    const-string v1, "gpc_a_webview_reload"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->layoutLoading:Landroid/widget/RelativeLayout;

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BaseBottomDialog;->view:Landroid/view/View;

    sget v1, Lcom/gpc/sdk/R$id;->mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->mask:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->btnReload:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->mask:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->setDecorViewRTL()V

    .line 18
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->initRTLUI()V

    .line 19
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->setRippleUI()V

    .line 20
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->initWebView()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->originalUrl:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->updateUIByWebState()V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->ivBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->btnReload:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 10
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webState:Lcom/gpc/sdk/utils/common/webview/WebState;

    .line 11
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->updateUIByWebState()V

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/dialog/BottomSheetWebDialog;->mask:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method
