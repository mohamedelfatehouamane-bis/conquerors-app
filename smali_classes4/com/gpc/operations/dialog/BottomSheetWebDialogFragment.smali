.class public Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;
.super Lcom/gpc/operations/dialog/BaseBottomDialogFragment;
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

.field private originalUrl:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvLoadErrorTip:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private webState:Lcom/gpc/operations/web/WebState;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;-><init>()V

    .line 17
    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webState:Lcom/gpc/operations/web/WebState;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)Lcom/gpc/operations/web/WebState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webState:Lcom/gpc/operations/web/WebState;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;Lcom/gpc/operations/web/WebState;)Lcom/gpc/operations/web/WebState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webState:Lcom/gpc/operations/web/WebState;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->updateBackUIState()V

    return-void
.end method

.method public static synthetic access$200(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->updateUIByWebState()V

    return-void
.end method

.method public static synthetic access$300(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private initRTLUI()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gpc/i18n/I18NItem;->ARB:Lcom/gpc/i18n/I18NItem;

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method private initWebView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/gpc/operations/utils/UserAgentHelperKt;->generateWebUA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;-><init>(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$2;-><init>(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webState:Lcom/gpc/operations/web/WebState;

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->updateUIByWebState()V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private setDecorViewRTL()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gpc/i18n/I18NItem;->ARB:Lcom/gpc/i18n/I18NItem;

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

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
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_radius_100:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_radius_100:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray:I

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
    iget-object v1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->btnReload:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showErrorView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutLoading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutError:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSuccessfulView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutLoading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBackUIState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateUIByWebState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webState:Lcom/gpc/operations/web/WebState;

    sget-object v1, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->showLoadingView()V

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->showSuccessfulView()V

    return-void

    .line 11
    :cond_1
    sget-object v1, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    if-ne v0, v1, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->showErrorView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/sdk/R$layout;->dialog_bottom_sheet_fragment:I

    return v0
.end method

.method public handleOnBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public initData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->originalUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->iv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->tvTitle:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivClose:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->rl_load_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutError:Landroid/widget/RelativeLayout;

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->tv_load_error_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->tvLoadErrorTip:Landroid/widget/TextView;

    .line 7
    const-string v1, "ops_a_load_failed"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->bt_reload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->btnReload:Landroid/widget/TextView;

    .line 9
    const-string v1, "ops_a_reload"

    invoke-static {v1}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->layoutLoading:Landroid/widget/RelativeLayout;

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/gpc/operations/sdk/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 12
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->btnReload:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->setDecorViewRTL()V

    .line 16
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->initRTLUI()V

    .line 17
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->setRippleUI()V

    .line 18
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->initWebView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->ivBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->btnReload:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 10
    sget-object p1, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    iput-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webState:Lcom/gpc/operations/web/WebState;

    .line 11
    invoke-direct {p0}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->updateUIByWebState()V

    .line 12
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_2
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->originalUrl:Ljava/lang/String;

    return-void
.end method
