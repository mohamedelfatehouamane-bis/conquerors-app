.class public Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;
.super Lcom/gpc/sdk/utils/common/WebViewClientRecordException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-direct {p0}, Lcom/gpc/sdk/utils/common/WebViewClientRecordException;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/gpc/sdk/utils/common/WebViewClientRecordException;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->b(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {v0}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageFinished URL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPCInstagramAuthDialog"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->c(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCInstagramAuthDialog"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/sdk/utils/common/WebViewClientRecordException;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->c(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {v0}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->b(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-super {p0, v0, p2, p3, p4}, Lcom/gpc/sdk/utils/common/WebViewClientRecordException;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCInstagramAuthDialog"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/utils/common/WebViewClientRecordException;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {p1}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->a(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;->onError(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Redirecting URL "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCInstagramAuthDialog"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/gpc/sdk/instagram/GPCInstagramClient;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    const-string p1, "="

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-static {p2}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->a(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;->onComplete(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;->a:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
