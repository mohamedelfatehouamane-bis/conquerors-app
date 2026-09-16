.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$000(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/JavaScriptHandler;->checkGPCBridgeMeta()V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCSDKFundamental;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP\u5730\u5740\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1300(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    invoke-static {v0, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1100(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->cancelStopLoadTask()V

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setBackButtonHidden(Z)V

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished Title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->cancelStopLoadTask()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    sget-object v2, Lcom/gpc/sdk/utils/common/webview/WebLoadState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebLoadState;

    invoke-static {v1, v2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1100(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Lcom/gpc/sdk/utils/common/webview/WebLoadState;)V

    :cond_0
    const/16 v1, 0x17

    const-string v2, "onReceivedError:"

    if-lt v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_2
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->cancelStopLoadTask()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "onReceivedHttpError:"

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/GPCSDKFundamental;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP\u5730\u5740\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$c;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->stopLoadIfNeedByTimeout()V

    .line 12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
