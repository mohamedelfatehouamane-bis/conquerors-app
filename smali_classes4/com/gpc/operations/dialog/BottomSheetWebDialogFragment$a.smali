.class public Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageFinished url:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BottomSheetWebDialog"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    invoke-static {p1}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$000(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)Lcom/gpc/operations/web/WebState;

    move-result-object p1

    sget-object p2, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    sget-object p2, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    invoke-static {p1, p2}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$002(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;Lcom/gpc/operations/web/WebState;)Lcom/gpc/operations/web/WebState;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    invoke-static {p1}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$100(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    invoke-static {p1}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$200(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "onReceivedError:"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BottomSheetWebDialog"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    sget-object p2, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    invoke-static {p1, p2}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$002(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;Lcom/gpc/operations/web/WebState;)Lcom/gpc/operations/web/WebState;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceivedError:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/appsflyer/AFKeystoreWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BottomSheetWebDialog"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    sget-object p2, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    invoke-static {p1, p2}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$002(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;Lcom/gpc/operations/web/WebState;)Lcom/gpc/operations/web/WebState;

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 3
    const-string p1, "BottomSheetWebDialog"

    const-string p2, "onReceivedSslError:"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment$a;->a:Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;

    sget-object p2, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    invoke-static {p1, p2}, Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;->access$002(Lcom/gpc/operations/dialog/BottomSheetWebDialogFragment;Lcom/gpc/operations/web/WebState;)Lcom/gpc/operations/web/WebState;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK_INT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomSheetWebDialog"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
