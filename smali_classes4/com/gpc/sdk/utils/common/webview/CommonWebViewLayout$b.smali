.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/webview/bridge/GPCJavaScriptUIBehaviour;


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
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->onClose()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHeaderViewBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setBackButtonHidden(Z)V

    return-void
.end method

.method public final synthetic b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$500(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$300(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setCloseButtonHidden(Z)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewNavBarButtonStyle(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$400(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Z)V

    return-void
.end method

.method public clearHistory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$200(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$a;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public closeView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setWebViewTitleColor(Ljava/lang/String;)V

    return-void
.end method

.method public goBack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->goBack()V

    return-void
.end method

.method public setCloseButtonDefaultBehaviour(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$102(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Z)Z

    return-void
.end method

.method public setHomePageHidden(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHomePageHidden(Z)V

    return-void
.end method

.method public setNavBarBackButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda3;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNavBarBackground(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda6;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNavBarButtonColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda8;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNavBarButtonStyle(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda9;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNavBarCloseButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNavBarVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda7;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRippleColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setRippleColor(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda5;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda4;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showWebErrorPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    new-instance v1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b$$ExternalSyntheticLambda2;-><init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
