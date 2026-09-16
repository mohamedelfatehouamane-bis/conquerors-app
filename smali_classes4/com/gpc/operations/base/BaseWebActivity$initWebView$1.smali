.class public final Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/base/BaseWebActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/operations/base/BaseWebActivity;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getNeedClearHistory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    const-string p1, "BaseWebActivity"

    const-string p2, "doUpdateVisitedHistory clearHistory"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/gpc/operations/base/BaseWebActivity;->setNeedClearHistory(Z)V

    .line 6
    iget-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p1}, Lcom/gpc/operations/base/BaseWebActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/operations/base/BaseWebActivity;->setCurrentURL(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->checkGPCBridgeMeta()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0, p2}, Lcom/gpc/operations/base/BaseWebActivity;->onPageFinished(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MODEL:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MANUFACTURER:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p2, "OnePlus"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseWebActivity;->getKeyboardStatusDetector()Lcom/gpc/operations/utils/KeyboardStatusDetector;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p2, v0}, Lcom/gpc/operations/utils/KeyboardStatusDetector;->setVisibilityListener(Lcom/gpc/operations/utils/KeyboardVisibilityListener;)Lcom/gpc/operations/utils/KeyboardStatusDetector;

    .line 11
    iget-object p2, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseWebActivity;->getKeyboardStatusDetector()Lcom/gpc/operations/utils/KeyboardStatusDetector;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p2, v0}, Lcom/gpc/operations/utils/KeyboardStatusDetector;->registerActivity(Landroid/app/Activity;)Lcom/gpc/operations/utils/KeyboardStatusDetector;

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object p2

    sget-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    if-ne p2, v0, :cond_2

    .line 14
    iget-object p2, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    sget-object v0, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    invoke-static {p2, v0}, Lcom/gpc/operations/base/BaseWebActivity;->access$updateWebViewState(Lcom/gpc/operations/base/BaseWebActivity;Lcom/gpc/operations/web/WebState;)V

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p2}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object p2

    sget-object v0, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_4

    .line 17
    iget-object p2, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton(Z)V

    return-void

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p1, v1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceivedError:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BaseWebActivity"

    invoke-static {p3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    sget-object p2, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    invoke-static {p1, p2}, Lcom/gpc/operations/base/BaseWebActivity;->access$updateWebViewState(Lcom/gpc/operations/base/BaseWebActivity;Lcom/gpc/operations/web/WebState;)V

    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK_INT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/OperationsSDKApplication;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    const-string v2, "debug"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 15
    const-string v0, "1"

    invoke-virtual {p2, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "builder.build().toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading debug url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 24
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
