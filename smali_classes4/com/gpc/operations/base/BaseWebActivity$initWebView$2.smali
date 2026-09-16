.class public final Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;
.super Landroid/webkit/WebChromeClient;
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

    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "console msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWebActivity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object v0

    sget-object v1, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x32

    if-gt p2, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object v0

    const/16 v2, 0x5a

    if-ne v0, v1, :cond_3

    if-lt p2, v2, :cond_3

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "onProgressChanged: newProgress >= 70"

    const-string v5, "BaseWebActivity"

    if-ne v0, v1, :cond_5

    if-lt p2, v2, :cond_5

    .line 9
    invoke-static {v5, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton(Z)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getWebLoadState()Lcom/gpc/operations/web/WebState;

    move-result-object v0

    sget-object v1, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    if-ne v0, v1, :cond_6

    if-lt p2, v2, :cond_6

    .line 13
    invoke-static {v5, v4}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initWebView$2;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0, v3}, Lcom/gpc/operations/base/BaseWebActivity;->setNavBarBackButton(Z)V

    .line 16
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
