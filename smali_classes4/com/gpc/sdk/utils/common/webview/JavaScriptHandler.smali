.class public Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

.field private context:Landroid/content/Context;

.field protected javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

.field protected jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "JavaScriptHandler"

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->context:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->webView:Landroid/webkit/WebView;

    .line 13
    iput-object p3, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    .line 14
    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->initJSBridge()V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private initJSBridge()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->setBehaviour(Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;)V

    .line 3
    new-instance v1, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->webView:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    .line 4
    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;->registerJavaScriptBridge(Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptBridge;)V

    .line 5
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    return-void
.end method


# virtual methods
.method public GPCJavaScriptBridge_JSToNative(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->GPCJavaScriptBridge_JSToNative(Ljava/lang/String;)V

    return-void
.end method

.method public checkGPCBridgeMeta()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkGPCBridgeMeta execute"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler$a;-><init>(Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;)V

    const-string v2, "gpc_jsbridge_v1"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->existMeta(Ljava/lang/String;Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V

    return-void
.end method

.method public closeView()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v1, "closeView(Javascript)"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->closeView()V

    return-void
.end method

.method public existJSBridgeV1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->isExistGPCBridgeV1()Z

    move-result v0

    return v0
.end method

.method public getJSBridgeInHeaders()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersionInHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getJSBridgeInQueries()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersionInQueries()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSBridgeInUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersionInUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSBridgeVersion()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersion()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getJSNameSpace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->getNameSpace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->localHistoryGoBack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->disappear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->jsBridge:Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/core/GPCWebViewJavaScriptBridge;->onDestroy()V

    return-void
.end method

.method public onKeyboardVisible(ZI)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->displayHeight(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public openNativeWeb(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v1, "web(Javascript) url:$url"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/gpc/sdk/utils/common/webview/WebViewUtils;->showURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->javascriptCreater:Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/common/webview/JavascriptCreater;->webViewScrollToTop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public sendCloseButtonDefaultBehaviourResponser()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptCommonBridge;->sendCloseButtonDefaultBehaviourResponser()V

    return-void
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v0, "sendMail(Javascript) "

    invoke-static {p4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p4, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->context:Landroid/content/Context;

    invoke-static {p4, p1, p2, p3}, Lcom/gpc/sdk/utils/common/webview/EmailUtils;->sendEmailWithAllApps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNavBarBackButton(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNavBarBackButton(Javascript) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->setNavBarBackButton(Z)V

    return-void
.end method

.method public setNavBarBackGround(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNavBarBackGround:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->setNavBarBackground(Ljava/lang/String;)V

    return-void
.end method

.method public setNavBarButtonStyle(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNavBarButtonStyle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->setNavBarButtonStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setNavBarCloseButton(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v1, "setNavBarCloseButton(Javascript)"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->setNavBarCloseButton(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTitle(Javascript)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTitleColor:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->setTitleColor(Ljava/lang/String;)V

    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v0, "share(Javascript)"

    invoke-static {p4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p4, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->context:Landroid/content/Context;

    invoke-static {p4, p1, p2, p3}, Lcom/gpc/sdk/utils/common/webview/ShareUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showWebErrorPage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->TAG:Ljava/lang/String;

    const-string v1, "showWebErrorPage"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->behaviour:Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;

    invoke-interface {v0}, Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;->showWebErrorPage()V

    return-void
.end method
