.class public Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;,
        Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "GPCInstagramAuthDialog"

.field public static final h:[F

.field public static final i:[F

.field public static final j:Landroid/widget/FrameLayout$LayoutParams;

.field public static final k:I = 0x4

.field public static final l:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;

.field public c:Landroid/app/ProgressDialog;

.field public d:Landroid/webkit/WebView;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->h:[F

    .line 2
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->i:[F

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->j:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    :array_0
    .array-data 4
        0x43e60000    # 460.0f
        0x43820000    # 260.0f
    .end array-data

    :array_1
    .array-data 4
        0x438c0000    # 280.0f
        0x43d20000    # 420.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->b:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->b:Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$OAuthDialogListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->c:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    .line 4
    const-string v1, "Instagram"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$b;-><init>(Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    sget-object v1, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->c:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->c:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->e:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->a()V

    .line 9
    invoke-virtual {p0}, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->b()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 13
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    if-ge v2, p1, :cond_0

    sget-object p1, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->i:[F

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->h:[F

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/gpc/sdk/instagram/GPCInstagramAuthDialog;->e:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    aget v4, p1, v4

    mul-float v4, v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    aget p1, p1, v0

    mul-float p1, p1, v1

    add-float/2addr p1, v5

    float-to-int p1, p1

    invoke-direct {v3, v4, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 20
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method
