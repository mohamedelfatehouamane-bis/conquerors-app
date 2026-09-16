.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->initView()V
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
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFuncMarginChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object p1, p1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object p1, p1, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object p2, p2, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onPlaceholderHeightChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v0}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1400(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$d;->a:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {p1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$1400(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
