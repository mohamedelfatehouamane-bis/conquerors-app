.class public Lcom/gpc/util/InsetsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPlaceHolderHeight(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/util/InsetsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gpc/util/InsetsHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static applyRootViewInsets(Landroid/view/View;Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/gpc/util/InsetsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/gpc/util/InsetsHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static enableEdgeToEdge(Landroid/view/Window;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/gpc/util/GPCWindowCompat;->enableEdgeToEdge(Landroid/view/Window;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$applyPlaceHolderHeight$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    .line 2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 9
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method static synthetic lambda$applyRootViewInsets$1(Landroid/view/View;Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 3
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 4
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 6
    iget v2, v1, Landroidx/core/graphics/Insets;->top:I

    invoke-interface {p1, v2}, Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;->onPlaceholderHeightChanged(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    .line 10
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    iget p0, v0, Landroidx/core/graphics/Insets;->right:I

    iget p2, v0, Landroidx/core/graphics/Insets;->left:I

    if-le p0, p2, :cond_0

    .line 18
    iget p2, v1, Landroidx/core/graphics/Insets;->left:I

    invoke-interface {p1, p0, p2}, Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;->onFuncMarginChanged(II)V

    return-object p3

    .line 21
    :cond_0
    iget p0, v1, Landroidx/core/graphics/Insets;->right:I

    invoke-interface {p1, p2, p0}, Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;->onFuncMarginChanged(II)V

    return-object p3

    .line 25
    :cond_1
    iget p2, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v3, v3, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    invoke-interface {p1, v3, v3}, Lcom/gpc/util/InsetsHelper$OnTitleBarInsetsChangedListener;->onFuncMarginChanged(II)V

    return-object p3
.end method
