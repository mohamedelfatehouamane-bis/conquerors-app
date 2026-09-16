.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->goBack()V
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
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "canGoBack"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$f;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->onClose()V

    return-void
.end method
