.class public Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;
.super Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptBridge;


# static fields
.field private static final KEY_HANDLER_BRIDGE_CORE_CLEAR_HISTORY:Ljava/lang/String; = "BridgeCore.ClearHistory"

.field private static final KEY_HANDLER_BRIDGE_CORE_OPEN_NATIVE_WEB:Ljava/lang/String; = "BridgeCore.OpenNativeWeb"

.field private static final KEY_HANDLER_BRIDGE_CORE_OPEN_WEB_IN_APP:Ljava/lang/String; = "BridgeCore.OpenWebInApp"

.field private static final KEY_HANDLER_BRIDGE_CORE_SET_RIPPLE_COLOR:Ljava/lang/String; = "NavigationBar.SetRippleColor"

.field private static final KEY_HANDLER_BRIDGE_CORE_SHARE:Ljava/lang/String; = "BridgeCore.Share"

.field private static final KEY_HANDLER_BRIDGE_CORE_SHARE_IMAGE_URL:Ljava/lang/String; = "BridgeCore.ShareImageURL"

.field private static final KEY_HANDLER_BRIDGE_SET_NAVBAR_BUTTON_COLOR:Ljava/lang/String; = "NavigationBar.SetNavBarButtonColor"

.field private static final KEY_HANDLER_BRIDGE_SET_NAVBAR_VISIBLE:Ljava/lang/String; = "NavigationBar.SetNavBarVisible"

.field private static final KEY_HANDLER_KEYBOARD_DISPLAY_HEIGHT:Ljava/lang/String; = "Keyboard.DisplayHeight"

.field private static final KEY_HANDLER_NAVIGATION_BAR_CLOSE_BUTTON_DEFAULT_BEHAVIOUR:Ljava/lang/String; = "NavigationBar.CloseButtonDefaultBehaviour"

.field private static final KEY_HANDLER_NAVIGATION_BAR_CLOSE_VIEW:Ljava/lang/String; = "NavigationBar.CloseView"

.field private static final KEY_HANDLER_NAVIGATION_BAR_GO_BACK:Ljava/lang/String; = "NavigationBar.GoBack"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_HOME_PAGE_HIDDEN:Ljava/lang/String; = "NavigationBar.SetHomePageHidden"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_NAV_BAR_BACKGROUND:Ljava/lang/String; = "NavigationBar.SetNavBarBackGround"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_NAV_BAR_BACK_BUTTON:Ljava/lang/String; = "NavigationBar.SetNavBarBackButton"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_NAV_BAR_BUTTON_STYLE:Ljava/lang/String; = "NavigationBar.SetNavBarButtonStyle"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_NAV_BAR_CLOSE_BUTTON:Ljava/lang/String; = "NavigationBar.SetNavBarCloseButton"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_TITLE:Ljava/lang/String; = "NavigationBar.SetTitle"

.field private static final KEY_HANDLER_NAVIGATION_BAR_SET_TITLE_COLOR:Ljava/lang/String; = "NavigationBar.SetTitleColor"

.field private static final KEY_HANDLER_SEND_MAIL:Ljava/lang/String; = "BridgeCore.SendMail"

.field private static final KEY_HANDLER_WEBVIEW_DID_DISAPPEAR:Ljava/lang/String; = "WebView.DidDisappear"

.field private static final KEY_HANDLER_WEBVIEW_SCROLL_TO_TOP:Ljava/lang/String; = "WebView.ScrollToTop"

.field private static final KEY_HANDLER_WEBVIEW_SHOW_ERROR_PAGE:Ljava/lang/String; = "BridgeCore.ShowWebErrorPage"

.field private static final TAG:Ljava/lang/String; = "GPCJavaScriptCommonBridge"

.field private static blockingResponser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/utils/common/webview/core/bean/GPCBlockingResponser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->blockingResponser:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->initHandlers()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->blockingResponser:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getDidDisappearResponserJS()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    const-string v1, "WebView.DidDisappear"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->toJs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGoBackResponserJS()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    const-string v1, "NavigationBar.GoBack"

    invoke-direct {v0, v1, v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->toJs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyboardDisplayHeightResponserJS(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    const-string v1, "Keyboard.DisplayHeight"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "height"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->putParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->toJs()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScrollToTopResponserJS()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    const-string v1, "WebView.ScrollToTop"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->toJs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initHandlers()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$k;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$k;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.GoBack"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$m;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$m;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.CloseButtonDefaultBehaviour"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$n;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$n;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.CloseView"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$o;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$o;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetTitle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$p;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$p;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetTitleColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$q;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$q;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetNavBarBackGround"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$r;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$r;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetNavBarCloseButton"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$s;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$s;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetNavBarButtonStyle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$t;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$t;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetNavBarBackButton"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$a;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetHomePageHidden"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$b;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$b;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.OpenNativeWeb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$c;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$c;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.Share"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$d;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$d;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.ClearHistory"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$e;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$e;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetRippleColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$f;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$f;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.SendMail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$g;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$g;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.ShowWebErrorPage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$h;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.OpenWebInApp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$i;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$i;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "BridgeCore.ShareImageURL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$j;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$j;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetNavBarButtonColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$l;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge$l;-><init>(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;)V

    const-string v2, "NavigationBar.SetNavBarVisible"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendCloseButtonDefaultBehaviourResponser()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->blockingResponser:Ljava/util/HashMap;

    const-string v1, "NavigationBar.CloseButtonDefaultBehaviour"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCBlockingResponser;

    const-string v1, "GPCJavaScriptCommonBridge"

    if-nez v0, :cond_0

    .line 3
    const-string v0, "sendCloseButtonDefaultBehaviourResponser: blocking is null"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCBlockingResponser;->getResponser()Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCBlockingResponser;->getCallback()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;

    move-result-object v0

    .line 9
    invoke-virtual {v2}, Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;

    .line 10
    invoke-interface {v0, v2}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/sdk/utils/common/webview/core/bean/GPCJavaScriptResponser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    const-string v2, "sendUploadMediaOnSelectedResponser: "

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getBridgeName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "gpc_jsbridge_common"

    return-object v0
.end method

.method public getBridgeVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "3.0.0_2"

    return-object v0
.end method

.method public getRegister()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptHandler;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    return-object v0
.end method

.method public setBehaviour(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    return-void
.end method
