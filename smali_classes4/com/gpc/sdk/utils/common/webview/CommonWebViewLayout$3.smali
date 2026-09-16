.class Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object p3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p3, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$602(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-string p3, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_0
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_1

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "openFileChooser activity is null"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;

    move-result-object p2

    const/16 p3, 0x4a81

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "openFileChooser Exception"

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$602(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConsoleMessage"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1000(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string p1, "onShowFileChooser Exception"

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowFileChooser"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$900(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/ValueCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$900(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/ValueCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v2, p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$902(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 15
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p2

    .line 23
    :try_start_1
    iget-object p3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p3}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_1

    .line 24
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "activity is null"

    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p2, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$902(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    return v0

    .line 28
    :cond_1
    iget-object p3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p3}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$700(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/app/Activity;

    move-result-object p3

    const/16 v2, 0x4a82

    invoke-virtual {p3, p2, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 30
    iget-object p3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p3}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$902(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    return v0

    :catch_1
    move-exception p2

    .line 32
    iget-object p3, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p3}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$3;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p1, v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$902(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    return v0
.end method
