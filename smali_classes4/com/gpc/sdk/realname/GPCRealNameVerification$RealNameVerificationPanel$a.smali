.class public Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel$a;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeButtonClickListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel$a;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel$a;->a:Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;

    invoke-static {p1}, Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;->a(Lcom/gpc/sdk/realname/GPCRealNameVerification$RealNameVerificationPanel;)Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setBackButtonHidden(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
