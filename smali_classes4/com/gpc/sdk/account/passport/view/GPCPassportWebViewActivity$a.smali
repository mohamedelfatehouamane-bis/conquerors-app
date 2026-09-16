.class public Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/GPCWebViewLayout$WebViewState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeButtonClickListener()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v1, 0x4203

    const-string v2, ""

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    invoke-static {p1, p2}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;Landroid/webkit/WebResourceRequest;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    invoke-static {p1, p2}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;Landroid/webkit/WebResourceRequest;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 12

    const-string p1, ""

    .line 1
    const-string v1, "GPCPassportWebViewActivity"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v0, "/embed/result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 8
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 14
    :try_start_0
    array-length v0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "0"

    move-object v7, p1

    move-object v8, v7

    move-object v9, v8

    move-object v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    :try_start_1
    aget-object v6, p2, v4

    .line 15
    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 16
    invoke-virtual {v6, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    .line 17
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 18
    const-string v10, "code"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v7, v6

    goto :goto_1

    .line 20
    :cond_0
    const-string v10, "msg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v8, v6

    goto :goto_1

    .line 22
    :cond_1
    const-string v10, "token"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v9, v6

    goto :goto_1

    .line 24
    :cond_2
    const-string v10, "is_new_user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move-object v3, v5

    .line 29
    iget-object v5, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    const-string p2, "1"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v6, 0x4201

    invoke-static/range {v5 .. v10}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 31
    :cond_5
    iget-object v5, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    const/16 v6, 0x4202

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 35
    invoke-static {v1, p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v2, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    const-string v6, ""

    const/4 v7, 0x0

    const/16 v3, 0x4202

    const-string v4, "114101"

    const-string v5, ""

    invoke-static/range {v2 .. v7}, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;->a(Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity$a;->a:Lcom/gpc/sdk/account/passport/view/GPCPassportWebViewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void
.end method
