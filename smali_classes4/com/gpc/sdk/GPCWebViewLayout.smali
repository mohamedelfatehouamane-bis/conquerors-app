.class public interface abstract Lcom/gpc/sdk/GPCWebViewLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;
    }
.end annotation


# virtual methods
.method public abstract GetLayoutView()Landroid/view/View;
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public abstract goBack()V
.end method

.method public abstract goBackClick()V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reload()V
.end method

.method public abstract setBackButtonHidden(Z)V
.end method

.method public abstract setCloseButtonHidden(Z)V
.end method

.method public abstract setHeaderViewBackgroundColor(Ljava/lang/String;)V
.end method

.method public abstract setHomePageHidden(Z)V
.end method

.method public abstract setWebViewNavBarButtonStyle(Ljava/lang/String;)V
.end method

.method public abstract setWebViewState(Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;)V
.end method

.method public abstract setWebViewTitle(Ljava/lang/String;)V
.end method

.method public abstract setWebViewTitleColor(Ljava/lang/String;)V
.end method
