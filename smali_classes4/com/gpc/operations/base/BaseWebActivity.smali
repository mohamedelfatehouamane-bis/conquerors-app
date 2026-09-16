.class public abstract Lcom/gpc/operations/base/BaseWebActivity;
.super Lcom/gpc/photoselector/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gpc/operations/utils/KeyboardVisibilityListener;
.implements Lcom/gpc/operations/utils/EventHub$OnEventListener;
.implements Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/base/BaseWebActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/base/BaseWebActivity$Companion;

.field public static final KEY_DATA_WRAPPER:Ljava/lang/String; = "data_wrapper"

.field public static final NAVBAR_BUTTON_STYLE_BLACK:Ljava/lang/String; = "0"

.field public static final NAVBAR_BUTTON_STYLE_WHITE:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "BaseWebActivity"


# instance fields
.field private btnReload:Landroid/widget/Button;

.field private closeButtonDefaultBehavior:Z

.field private final commonHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentURL:Ljava/lang/String;

.field private homeURL:Ljava/lang/String;

.field private isFirstShowIme:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivClose:Landroid/widget/ImageView;

.field private ivHomePage:Landroid/widget/ImageView;

.field protected jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

.field private keyboardStatusDetector:Lcom/gpc/operations/utils/KeyboardStatusDetector;

.field private keyboardUtils:Lcom/gpc/operations/utils/KeyboardUtils;

.field private layoutErrorView:Landroid/widget/RelativeLayout;

.field private layoutHeaderView:Landroid/widget/RelativeLayout;

.field private layoutRootView:Landroid/widget/LinearLayout;

.field private layoutStatusBar:Landroid/widget/RelativeLayout;

.field private needClearHistory:Z

.field private originalURL:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;

.field private tvReloadTip:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private webLoadState:Lcom/gpc/operations/web/WebState;

.field private webView:Landroid/webkit/WebView;

.field private wrapper:Lcom/gpc/webapp/bean/CommonWebDataWrapper;


# direct methods
.method public static synthetic $r8$lambda$3RdQk1pitDuvUkw0q2NJeZd0bCI(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView$lambda$5(Lcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fHNI-hVO6PCzLXDQkxLqUTl1XU(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/base/BaseWebActivity;->clearHistory$lambda$14(Lcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5sPaIMnX0vFnomby_TjLoLAPBz8(Ljava/lang/String;Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->onReceive$lambda$3(Ljava/lang/String;Lcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ANTMBc_JaCXkGhBv9F1DL5LIoSQ(Lcom/gpc/operations/base/BaseWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->initView$lambda$2(Lcom/gpc/operations/base/BaseWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B-YLMY2bwHxA7j6qruFY8Z_2cWA(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setTitleColor$lambda$7(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DtoulYlU3KbCXYhsIr61v6VrKBI(Lcom/gpc/operations/base/BaseWebActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->updateUnreadCount$lambda$19(Lcom/gpc/operations/base/BaseWebActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCcCAjGxhUkhzqDJzPIFr8WGQJ4(ZLcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarCloseButton$lambda$9(ZLcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z545WvtsT7lLMgXFpX6SU9fB54Y(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setTitle$lambda$6(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cA5nmwIChkvxYDeBd7f5Zwztqig(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setRippleColor$lambda$16(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h6-bgODOaJHFZ_LNHIS9gI6P8KE(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/base/BaseWebActivity;->goBack$lambda$20(Lcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k7TRFdh9Ufgqj2LGDWel7hL61Lc(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackground$lambda$8(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p7s2CSwz1-d1RVjh540JFOKSnok(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/base/BaseWebActivity;->showWebErrorPage$lambda$15(Lcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWxtp0qSKKA-kQ2WJruw5l8c0nI(ZLcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setHomePageHidden$lambda$13(ZLcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tv181VltPJGx6U-hA71esOdYIC8(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavigationBarPadding$lambda$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ykuAY1lWf7auMfAXJ53RDuuMELM(ZLcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton$lambda$10(ZLcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwc3vC-r0hxSSC4nsQMhdKRcHUg(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/base/BaseWebActivity;->onReceive$lambda$4(Lcom/gpc/operations/base/BaseWebActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/BaseWebActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/base/BaseWebActivity;->Companion:Lcom/gpc/operations/base/BaseWebActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/photoselector/base/BaseActivity;-><init>()V

    .line 17
    new-instance v0, Lcom/gpc/operations/utils/KeyboardStatusDetector;

    invoke-direct {v0}, Lcom/gpc/operations/utils/KeyboardStatusDetector;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->keyboardStatusDetector:Lcom/gpc/operations/utils/KeyboardStatusDetector;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->originalURL:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->homeURL:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->currentURL:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->commonHeaders:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->isFirstShowIme:Z

    .line 31
    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    iput-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->webLoadState:Lcom/gpc/operations/web/WebState;

    return-void
.end method

.method public static final synthetic access$updateWebViewState(Lcom/gpc/operations/base/BaseWebActivity;Lcom/gpc/operations/web/WebState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->updateWebViewState(Lcom/gpc/operations/web/WebState;)V

    return-void
.end method

.method private final appendQueryParamManual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 1
    const-string v1, "?"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    const-string v4, "="

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 7
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "&"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static final clearHistory$lambda$14(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    :cond_0
    return-void
.end method

.method private static final closeView$lambda$5(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->onPreClose()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final getProcessingURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJSBridgeInQueries()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/gpc/operations/base/BaseWebActivity;->appendQueryParamManual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processingUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final goBack$lambda$20(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView()V

    return-void
.end method

.method private final init()V
    .locals 2

    .line 1
    const-string v0, "init start"

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->initView()V

    .line 3
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->initKeyboard()V

    .line 4
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->initRTLUI()V

    .line 5
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->initJsHandler()V

    .line 6
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->initWebView()V

    .line 7
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->initUserAgent()V

    .line 8
    const-string v0, "init end"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final initJsHandler()V
    .locals 4

    .line 1
    const-string v0, "before js handler"

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    .line 4
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {v0, p0, v2, v3, p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;)V

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setJsHandler(Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V

    .line 12
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJSBridgeInHeaders()Ljava/util/Map;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCommonHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJSNameSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_0
    const-string v0, "after js handler"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final initKeyboard()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/utils/KeyboardUtils;

    invoke-direct {v0, p0}, Lcom/gpc/operations/utils/KeyboardUtils;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setKeyboardUtils(Lcom/gpc/operations/utils/KeyboardUtils;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getKeyboardUtils()Lcom/gpc/operations/utils/KeyboardUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/operations/base/BaseWebActivity$initKeyboard$1;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/BaseWebActivity$initKeyboard$1;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/gpc/operations/utils/KeyboardUtils;->addOnSoftKeyBoardVisibleListener(Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;)V

    :cond_0
    return-void
.end method

.method private final initRTLUI()V
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

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method private final initUserAgent()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "webView!!.getSettings()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJSBridgeInUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "webSettings.userAgentString"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/gpc/operations/utils/UserAgentHelperKt;->generateWebUA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method private final initView()V
    .locals 5

    .line 1
    sget v0, Lcom/gpc/operations/sdk/R$id;->rl_root_content_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setLayoutRootView(Landroid/widget/LinearLayout;)V

    .line 2
    sget v0, Lcom/gpc/operations/sdk/R$id;->wv_tsh:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setWebView(Landroid/webkit/WebView;)V

    .line 3
    sget v0, Lcom/gpc/operations/sdk/R$id;->pb_web_content_load_progress:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setProgress(Landroid/widget/ProgressBar;)V

    .line 4
    sget v0, Lcom/gpc/operations/sdk/R$id;->rl_load_error:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setLayoutErrorView(Landroid/widget/RelativeLayout;)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutErrorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    sget v0, Lcom/gpc/operations/sdk/R$id;->bt_reload:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setBtnReload(Landroid/widget/Button;)V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getBtnReload()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "ops_a_reload"

    invoke-static {v2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getBtnReload()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_2
    sget v0, Lcom/gpc/operations/sdk/R$id;->tv_load_error_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setTvReloadTip(Landroid/widget/TextView;)V

    .line 10
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getTvReloadTip()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "ops_a_load_failed"

    invoke-static {v2}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_2
    sget v0, Lcom/gpc/operations/sdk/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setIvClose(Landroid/widget/ImageView;)V

    .line 12
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_4
    sget v0, Lcom/gpc/operations/sdk/R$id;->iv_back_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setIvBack(Landroid/widget/ImageView;)V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :goto_3
    sget v0, Lcom/gpc/operations/sdk/R$id;->iv_homepage:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setIvHomePage(Landroid/widget/ImageView;)V

    .line 17
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :goto_4
    sget v0, Lcom/gpc/operations/sdk/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setTvTitle(Landroid/widget/TextView;)V

    .line 21
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getBackBtnResourceId()I

    move-result v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getCloseBtnResourceId()I

    move-result v0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_c

    .line 28
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    :cond_c
    sget v0, Lcom/gpc/operations/sdk/R$id;->rl_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setLayoutHeaderView(Landroid/widget/RelativeLayout;)V

    .line 32
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutHeaderView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v2, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda13;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_d
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getHeaderBarBackgroundColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v2

    :goto_7
    const-string v3, "#333333"

    if-nez v0, :cond_f

    move-object v0, v3

    .line 36
    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    move-object v3, v0

    .line 39
    :goto_8
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutHeaderView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    :cond_11
    sget v0, Lcom/gpc/operations/sdk/R$id;->view_status_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setLayoutStatusBar(Landroid/widget/RelativeLayout;)V

    .line 42
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutStatusBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    :cond_12
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutStatusBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    :cond_13
    if-nez v2, :cond_14

    goto :goto_9

    .line 44
    :cond_14
    invoke-virtual {p0, p0}, Lcom/gpc/photoselector/base/BaseActivity;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :goto_9
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutStatusBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :goto_a
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    sget v2, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_radius_100:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_b
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_c

    :cond_17
    sget v2, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_radius_100:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_c
    sget v0, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 51
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v2

    if-lez v2, :cond_18

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 53
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_18
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getBtnReload()Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static final initView$lambda$2(Lcom/gpc/operations/base/BaseWebActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->scrollToTop()V

    return-void
.end method

.method private final initWebView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "webView!!.getSettings()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 9
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 12
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic loadUrl$default(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/gpc/operations/base/BaseWebActivity;->loadUrl(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadUrl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final onReceive$lambda$3(Ljava/lang/String;Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    const-string p0, "m_web_app"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v1, "web_app_payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->didReceivedRemoteNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseWebActivity"

    invoke-static {p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final onReceive$lambda$4(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView()V

    return-void
.end method

.method private final parseData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    if-eqz v0, :cond_6

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "data_wrapper"

    if-lt v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4
    const-class v2, Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    invoke-static {v0, v3, v2}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setWrapper(Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    .line 11
    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setWrapper(Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 15
    const-string v0, "CommonWebViewDataWrapper is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CommonWebViewDataWrapper: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setOriginalURL(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getHomeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setHomeURL(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getHeaders()Ljava/util/Map;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 29
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCommonHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_5
    return-void

    .line 30
    :cond_6
    const-string v0, "Intent is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final registerEventHub()V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v1, "ACTION_WEB_APP_NOTIFICATION"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->register(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    .line 2
    const-string v1, "ACTION_PANEL_CLOSE"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->register(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    return-void
.end method

.method private final setDecorViewRTL()V
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

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method private static final setHomePageHidden$lambda$13(ZLcom/gpc/operations/base/BaseWebActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseWebActivity"

    invoke-static {p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final setNavBarBackButton$lambda$10(ZLcom/gpc/operations/base/BaseWebActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x4

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_6

    :goto_0
    return-void

    :cond_6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static final setNavBarBackground$lambda$8(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutHeaderView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutStatusBar()Landroid/widget/RelativeLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseWebActivity"

    invoke-static {p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final setNavBarCloseButton$lambda$9(ZLcom/gpc/operations/base/BaseWebActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_4

    :goto_2
    return-void

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private final setNavigationBarPadding()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private static final setNavigationBarPadding$lambda$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/graphics/Insets;)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private static final setRippleColor$lambda$16(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget v1, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_radius_100:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 7
    sget v2, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_radius_100:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 9
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseWebActivity"

    invoke-static {p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final setTitle$lambda$6(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getTvTitle()Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setTitleColor$lambda$7(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getTvTitle()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseWebActivity"

    invoke-static {p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final showErrorView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutErrorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final showLoadingView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutErrorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final showWebErrorPage$lambda$15(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton(Z)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->showErrorView()V

    return-void
.end method

.method private final showWebView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutErrorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final unregisterEventHub()V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v1, "ACTION_WEB_APP_NOTIFICATION"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->unRegister(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    .line 2
    const-string v1, "ACTION_PANEL_CLOSE"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/operations/utils/EventHub$Companion;->unRegister(Ljava/lang/String;Lcom/gpc/operations/utils/EventHub$OnEventListener;)V

    return-void
.end method

.method private static final updateUnreadCount$lambda$19(Lcom/gpc/operations/base/BaseWebActivity;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "webAppId"

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string p0, "count"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    sget-object p0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string p1, "ACTION_MODULE_NOTICE_COUNT_UPDATE"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseWebActivity"

    invoke-static {p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateWebViewState(Lcom/gpc/operations/web/WebState;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    const-string p1, "BaseWebActivity"

    const-string v0, "updateWebViewState: state == webLoadState"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setWebLoadState(Lcom/gpc/operations/web/WebState;)V

    .line 6
    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->showLoadingView()V

    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    if-ne p1, v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->showErrorView()V

    return-void

    .line 10
    :cond_2
    sget-object v0, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    if-ne p1, v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->showWebView()V

    :cond_3
    return-void
.end method


# virtual methods
.method public afterInit()V
    .locals 0

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Lcom/gpc/photoselector/util/LanguageUtils;->attachLanguages(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/gpc/photoselector/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public beforeInit()V
    .locals 0

    return-void
.end method

.method public clearHistory()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda11;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public closeView()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/webapp/bean/CommonWebDataWrapper;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBtnReload()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->btnReload:Landroid/widget/Button;

    return-object v0
.end method

.method public getCloseButtonDefaultBehavior()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->closeButtonDefaultBehavior:Z

    return v0
.end method

.method public getCommonHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->commonHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurrentURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->currentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->homeURL:Ljava/lang/String;

    return-object v0
.end method

.method public getIvBack()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->ivBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIvClose()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->ivClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIvHomePage()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->ivHomePage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "jsHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyboardStatusDetector()Lcom/gpc/operations/utils/KeyboardStatusDetector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->keyboardStatusDetector:Lcom/gpc/operations/utils/KeyboardStatusDetector;

    return-object v0
.end method

.method public getKeyboardUtils()Lcom/gpc/operations/utils/KeyboardUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->keyboardUtils:Lcom/gpc/operations/utils/KeyboardUtils;

    return-object v0
.end method

.method public getLayoutErrorView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutErrorView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getLayoutHeaderView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutHeaderView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getLayoutRootView()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutRootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLayoutStatusBar()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutStatusBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getNeedClearHistory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->needClearHistory:Z

    return v0
.end method

.method public getOriginalURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->originalURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getTvReloadTip()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->tvReloadTip:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWebLoadState()Lcom/gpc/operations/web/WebState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->webLoadState:Lcom/gpc/operations/web/WebState;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWrapper()Lcom/gpc/webapp/bean/CommonWebDataWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->wrapper:Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda12;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goBackByJS()V
    .locals 2

    .line 1
    const-string v0, "BaseWebActivity"

    const-string v1, "goBackByJS"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->goBack()V

    :cond_0
    return-void
.end method

.method public handleOnBackPressed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->goBackByJS()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView()V

    :goto_0
    return v1
.end method

.method public homepage()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    invoke-direct {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->updateWebViewState(Lcom/gpc/operations/web/WebState;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getHomeURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gpc/operations/base/BaseWebActivity;->getProcessingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCommonHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public isFirstShowIme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/base/BaseWebActivity;->isFirstShowIme:Z

    return v0
.end method

.method public load()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getOriginalURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCommonHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/operations/base/BaseWebActivity;->loadUrl(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setOriginalURL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCommonHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3
    sget-object p2, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    invoke-direct {p0, p2}, Lcom/gpc/operations/base/BaseWebActivity;->updateWebViewState(Lcom/gpc/operations/web/WebState;)V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->getProcessingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCommonHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/photoselector/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getCloseButtonDefaultBehavior()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->sendCloseButtonDefaultBehaviourResponser()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setCloseButtonDefaultBehavior(Z)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView()V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BaseWebActivity"

    if-eqz v0, :cond_3

    .line 12
    const-string p1, "v == back"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->showWebView()V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->handleOnBackPressed()Z

    return-void

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    const-string p1, "v == homepage"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNeedClearHistory(Z)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setHomePageHidden(Z)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->homepage()V

    return-void

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getBtnReload()Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->reload()V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/photoselector/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const-string p1, "BaseWebActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->setDecorViewRTL()V

    .line 4
    invoke-virtual {p0, p0}, Lcom/gpc/photoselector/base/BaseActivity;->setSystemUiVisibilityBelow15(Landroid/app/Activity;)V

    .line 5
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->setNavigationBarPadding()V

    .line 6
    sget p1, Lcom/gpc/operations/sdk/R$layout;->ops_a_activity_web:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    invoke-static {p0}, Lcom/gpc/photoselector/util/ImageLoaderHelper;->initImageLoader(Landroid/content/Context;)V

    .line 8
    invoke-static {p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 9
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->registerEventHub()V

    .line 10
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->parseData()V

    .line 11
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->beforeInit()V

    .line 12
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->init()V

    .line 13
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->afterInit()V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->load()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/gpc/photoselector/base/BaseActivity;->onDestroy()V

    .line 2
    const-string v0, "BaseWebActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getKeyboardUtils()Lcom/gpc/operations/utils/KeyboardUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/utils/KeyboardUtils;->removeOnSoftKeyBoardVisibleListener()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getKeyboardStatusDetector()Lcom/gpc/operations/utils/KeyboardStatusDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/utils/KeyboardStatusDetector;->destory()V

    .line 5
    invoke-direct {p0}, Lcom/gpc/operations/base/BaseWebActivity;->unregisterEventHub()V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onDestroy()V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->setWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreClose()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/service/upload/UploadFileManager;->Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;->sharedInstance()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/UploadFileManager;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->disappear()V

    .line 3
    :cond_0
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_MODULE_PRE_CLOSE"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onQueryProducts()V
    .locals 0

    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive Event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "ACTION_WEB_APP_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v1

    .line 16
    :cond_0
    const-string v0, "ACTION_PANEL_CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    new-instance p1, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRepay(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/photoselector/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(ZII)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVisibilityChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lcom/gpc/operations/base/BaseWebActivity;->setFirstShowIme(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutRootView()Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutRootView()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 11
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findRootView().bottom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findRootView().rootViewHeight:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findRootView().imeHeight:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->isFirstShowIme()Z

    move-result v3

    if-nez v3, :cond_4

    if-ne p1, p2, :cond_4

    sub-int/2addr p1, p3

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "findRootView().newBottom:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {p1, v2, v2, v2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 23
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getLayoutRootView()Landroid/widget/LinearLayout;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public openWebApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1
    const-string v0, "ticket"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->ticketService()Lcom/gpc/tsh/TSHybrid;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gpc/tsh/TSHybrid;->showPanel(Landroid/app/Activity;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "livechat"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->liveChat()Lcom/gpc/livechat/LiveChat;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/gpc/livechat/LiveChat;->showPanel(Landroid/app/Activity;)V

    goto :goto_0

    .line 5
    :cond_1
    const-string v0, "game_community"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->gameCommunity()Lcom/gpc/gamecommunity/GameCommunity;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, p0, p2}, Lcom/gpc/gamecommunity/GameCommunity;->showPanel(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    const-string v0, "prime"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->primeMembership()Lcom/gpc/primemembership/PrimeMembership;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/gpc/primemembership/PrimeMembership;->showPanel(Landroid/app/Activity;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/OperationsSDK;->getWebApp()Lcom/gpc/webapp/GPCWebApp;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/gpc/webapp/GPCWebApp;->openWithPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :goto_0
    if-nez p3, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView()V

    :cond_4
    return-void
.end method

.method public pickupMedia(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 8

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    move-wide v5, v1

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_0
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->openImagePicker(ILjava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1
    move-wide v5, v1

    .line 4
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_2

    .line 9
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v6, v2

    move-object v5, p3

    move v2, p1

    move-object v3, p2

    goto :goto_0

    :cond_2
    move-wide v6, v5

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 10
    :goto_0
    invoke-virtual/range {v1 .. v7}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->openMediaPicker(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    invoke-direct {p0, v0}, Lcom/gpc/operations/base/BaseWebActivity;->updateWebViewState(Lcom/gpc/operations/web/WebState;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method public final scrollToTop()V
    .locals 2

    .line 1
    const-string v0, "BaseWebActivity"

    const-string v1, "scrollToTop"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->scrollToTop()V

    :cond_0
    return-void
.end method

.method public setBtnReload(Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->btnReload:Landroid/widget/Button;

    return-void
.end method

.method public setCloseButtonDefaultBehavior(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->closeButtonDefaultBehavior:Z

    return-void
.end method

.method public setCloseButtonDefaultBehaviour(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setCloseButtonDefaultBehavior(Z)V

    return-void
.end method

.method public setCurrentURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->currentURL:Ljava/lang/String;

    return-void
.end method

.method public setFirstShowIme(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->isFirstShowIme:Z

    return-void
.end method

.method public setHomePageHidden(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda10;-><init>(ZLcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHomeURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->homeURL:Ljava/lang/String;

    return-void
.end method

.method public setIvBack(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->ivBack:Landroid/widget/ImageView;

    return-void
.end method

.method public setIvClose(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->ivClose:Landroid/widget/ImageView;

    return-void
.end method

.method public setIvHomePage(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->ivHomePage:Landroid/widget/ImageView;

    return-void
.end method

.method public final setJsHandler(Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->jsHandler:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    return-void
.end method

.method public setKeyboardStatusDetector(Lcom/gpc/operations/utils/KeyboardStatusDetector;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->keyboardStatusDetector:Lcom/gpc/operations/utils/KeyboardStatusDetector;

    return-void
.end method

.method public setKeyboardUtils(Lcom/gpc/operations/utils/KeyboardUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->keyboardUtils:Lcom/gpc/operations/utils/KeyboardUtils;

    return-void
.end method

.method public setLayoutErrorView(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutErrorView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setLayoutHeaderView(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutHeaderView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setLayoutRootView(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutRootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setLayoutStatusBar(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->layoutStatusBar:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setNavBarBackButton(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda3;-><init>(ZLcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNavBarBackground(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNavBarButtonStyle(Ljava/lang/String;)V
    .locals 2

    .line 5
    const-string v0, "0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "#333333"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvBack()Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "#FFFFFF"

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    :goto_2
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvClose()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    :goto_3
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getIvHomePage()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_6

    :goto_4
    return-void

    :cond_6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNavBarCloseButton(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda1;-><init>(ZLcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNeedClearHistory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->needClearHistory:Z

    return-void
.end method

.method public setOriginalURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->originalURL:Ljava/lang/String;

    return-void
.end method

.method public setProgress(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->progress:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setRippleColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda14;-><init>(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/operations/base/BaseWebActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTvReloadTip(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->tvReloadTip:Landroid/widget/TextView;

    return-void
.end method

.method public setTvTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setWebLoadState(Lcom/gpc/operations/web/WebState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->webLoadState:Lcom/gpc/operations/web/WebState;

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public setWrapper(Lcom/gpc/webapp/bean/CommonWebDataWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity;->wrapper:Lcom/gpc/webapp/bean/CommonWebDataWrapper;

    return-void
.end method

.method public showWebErrorPage()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gpc/operations/base/BaseWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public turnTo(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_8

    .line 1
    const-string v0, "ticket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "TSH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    const-string v0, "livechat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "LiveChat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    const-string v0, "prime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "PrimeMembership"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    const-string v0, "game_community"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "GAME_COMMUNITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    const-string p1, "BaseWebActivity"

    const-string v0, "turnTo: type is not supported"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 11
    :cond_4
    :goto_0
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->gameCommunity()Lcom/gpc/gamecommunity/GameCommunity;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Lcom/gpc/gamecommunity/GameCommunity;->showPanel(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_4

    .line 12
    :cond_5
    :goto_1
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->primeMembership()Lcom/gpc/primemembership/PrimeMembership;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/gpc/primemembership/PrimeMembership;->showPanel(Landroid/app/Activity;)V

    goto :goto_4

    .line 13
    :cond_6
    :goto_2
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->liveChat()Lcom/gpc/livechat/LiveChat;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/gpc/livechat/LiveChat;->showPanel(Landroid/app/Activity;)V

    goto :goto_4

    .line 14
    :cond_7
    :goto_3
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/OperationsSDK;->ticketService()Lcom/gpc/tsh/TSHybrid;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gpc/tsh/TSHybrid;->showPanel(Landroid/app/Activity;)V

    :goto_4
    if-nez p2, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/gpc/operations/base/BaseWebActivity;->closeView()V

    :cond_8
    return-void
.end method

.method public updateUnreadCount(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/base/BaseWebActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gpc/operations/base/BaseWebActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
